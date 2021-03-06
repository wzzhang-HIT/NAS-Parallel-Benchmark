c---------------------------------------------------------------------
      subroutine diffusion(ifmortar)      
c---------------------------------------------------------------------
c     advance the diffusion term using CG iterations
c---------------------------------------------------------------------

      include 'header.h'

      double precision  rho_aux, rho1, rho2, beta, cona
      logical ifmortar
      integer iter,ie, im,iside,i,j,k

c.....set up diagonal preconditioner
      if (ifmortar) then
        call setuppc
        call setpcmo
      end if

c.....arrays t and umor are accumlators of (am pm) in the CG algorithm
c     (see the specification)

      call r_init(t,ntot,0.d0)
      call r_init(umor,nmor,0.d0)

c.....calculate initial am (see specification) in CG algorithm

c.....trhs and rmor are combined to generate r0 in CG algorithm.
c     pdiff and pmorx are combined to generate q0 in the CG algorithm.
c     rho1 is  (qm,rm) in the CG algorithm.

      rho1 = 0.d0
      do ie=1,nelt
        do k=1,lx1
          do j=1,lx1
            do i=1,lx1
              pdiff(i,j,k,ie) = dpcelm(i,j,k,ie)*trhs(i,j,k,ie)
              rho1            = rho1 + trhs(i,j,k,ie)*pdiff(i,j,k,ie)*
     &                                          tmult(i,j,k,ie)
            end do
          end do
        end do
      end do

      do im = 1, nmor
        pmorx(im) = dpcmor(im)*rmor(im)
        rho1      = rho1 + rmor(im)*pmorx(im)
      end do

c.................................................................
c     commence conjugate gradient iteration
c.................................................................

      do iter=1, nmxh
        if(iter.gt.1) then 
          rho_aux = 0.d0
c.........pdiffp and ppmor are combined to generate q_m+1 in the specification
c         rho_aux is (q_m+1,r_m+1)
          do ie = 1, nelt
            do k=1,lx1
              do j=1,lx1
                do i=1,lx1
                  pdiffp(i,j,k,ie) = dpcelm(i,j,k,ie)*trhs(i,j,k,ie)
                  rho_aux =rho_aux+trhs(i,j,k,ie)*pdiffp(i,j,k,ie)*
     &                                            tmult(i,j,k,ie)
                end do
              end do
            end do
          end do

          do im = 1, nmor
            ppmor(im) = dpcmor(im)*rmor(im)
            rho_aux = rho_aux + rmor(im)*ppmor(im)
          end do

c.........compute bm (beta) in the specification
          rho2 = rho1
          rho1 = rho_aux
          beta = rho1/rho2
c.........update p_m+1 in the specification
          call adds1m1(pdiff, pdiffp, beta,ntot)
          call adds1m1(pmorx, ppmor,  beta, nmor)  
        end if
 
c.......compute matrix vector product: (theta pm) in the specification

        call transf(pmorx,pdiff) 

c.......compute pdiffp which is (A theta pm) in the specification
        do ie=1, nelt
          call laplacian(pdiffp(1,1,1,ie),pdiff(1,1,1,ie),size_e(ie))
        end do

c.......compute ppmor which will be used to compute (thetaT A theta pm) 
c       in the specification
        call transfb(ppmor,pdiffp) 
 
c.......apply boundary condition
        do ie=1,nelt
          do iside=1,nsides
            if(cbc(iside,ie).eq.0)then
              call facev(pdiffp(1,1,1,ie),iside,0.d0)
            end if
          end do
        end do

c.......compute cona which is (pm,theta T A theta pm)
        cona = 0.d0
        do ie = 1, nelt
          do k=1,lx1
            do j=1,lx1
              do i=1,lx1
                cona = cona + pdiff(i,j,k,ie)*
     &                 pdiffp(i,j,k,ie)*tmult(i,j,k,ie)
              end do 
             end do 
          end do 
        end do 

        do im = 1, nmor
          ppmor(im) = ppmor(im)*tmmor(im)
          cona = cona + pmorx(im)*ppmor(im)
        end do

c.......compute am
        cona = rho1/cona
c.......compute (am pm)
        call adds2m1(t,    pdiff,   cona, ntot)
        call adds2m1(umor, pmorx,   cona, nmor) 
c.......compute r_m+1
        call adds2m1(trhs, pdiffp, -cona, ntot)
        call adds2m1(rmor, ppmor,  -cona, nmor) 
 
      end do

      call transf(umor,t)  

      return
      end


c------------------------------------------------------------------
      subroutine laplacian(r,u,sizei)
c------------------------------------------------------------------
c     compute  r = visc*[A]x +[B]x on a given element.
c------------------------------------------------------------------
      include 'header.h'

      double precision r(lx1,lx1,lx1), u(lx1,lx1,lx1), rdtime
      integer i,j,k, ix,iz, sizei

      double precision tm1(lx1,lx1,lx1),tm2(lx1,lx1,lx1)                     

      rdtime = 1.d0/dtime

      call r_init(tm1,nxyz,0.d0)

      do iz=1,lx1                     
        do k = 1, lx1
          do j = 1, lx1
            do i = 1, lx1
              tm1(i,j,iz) = tm1(i,j,iz)+wdtdr(i,k)*u(k,j,iz)
            end do
          end do
        end do                           
      end do
              
      call r_init(tm2,nxyz,0.d0)                                                   
      do iz=1,lx1                                            
        do k = 1, lx1
          do j = 1, lx1
            do i = 1, lx1
              tm2(i,j,iz) = tm2(i,j,iz)+u(i,k,iz)*wdtdr(k,j)
            end do
          end do
        end do
      end do
                                                            
      call r_init(r,nxyz,0.d0)   
      do k = 1, lx1
        do iz=1, lx1    
          do j = 1, lx1
            do i = 1, lx1
              r(i,j,iz) = r(i,j,iz)+u(i,j,k)*wdtdr(k,iz)
            end do
          end do
        end do
      end do

c.....collocate with remaining weights and sum to complete factorization.                   
                                                      
      do k=1,lx1
        do j=1,lx1
          do i=1,lx1
            r(i,j,k)=visc*(tm1(i,j,k)*g4m1_s(i,j,k,sizei)+
     &                   tm2(i,j,k)*g5m1_s(i,j,k,sizei)+
     &                    r(i,j,k)*g6m1_s(i,j,k,sizei))+
     &               bm1_s(i,j,k,sizei)*rdtime*u(i,j,k)             
          end do
        end do
      end do

      return                                                  
      end                                                    


 
