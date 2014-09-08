; ModuleID = 'error.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

%0 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [65 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%1 = type { [1352000 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [1352000 x double], [1352000 x double] }
%2 = type { double, [3 x i32], i32 }
%3 = type { [65 x double], [65 x double], [325 x double], [325 x double] }

@constants_ = common unnamed_addr global %0 zeroinitializer, align 32
@fields_ = common unnamed_addr global %1 zeroinitializer, align 32
@global_ = common unnamed_addr global %2 zeroinitializer, align 16
@work_1d_ = common unnamed_addr global %3 zeroinitializer, align 32

; Function Attrs: nounwind uwtable
define void @error_norm_([5 x double]* noalias nocapture %rms) unnamed_addr #0 {
"6":
  %rms18 = bitcast [5 x double]* %rms to i8*
  %eta = alloca double, align 8
  %rms_local = alloca [5 x double], align 8
  %u_exact = alloca [5 x double], align 8
  %xi = alloca double, align 8
  %zeta = alloca double, align 8
  call void @llvm.memset.p0i8.i64(i8* %rms18, i8 0, i64 40, i32 8, i1 false)
  %0 = bitcast [5 x double]* %rms_local to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %1 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %2 = add i32 %1, -1
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %"7", label %"15"

"7":                                              ; preds = %"6", %"13"
  %4 = phi i32 [ %47, %"13" ], [ 0, %"6" ]
  %5 = sitofp i32 %4 to double
  %6 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %7 = fmul double %5, %6
  store double %7, double* %zeta, align 8
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %9 = add i32 %8, -1
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %"8.preheader", label %"13"

"8.preheader":                                    ; preds = %"7"
  %11 = sext i32 %4 to i64
  %12 = mul i64 %11, 21125
  %13 = add i64 %12, -1
  br label %"8"

"8":                                              ; preds = %"8.preheader", %"12"
  %14 = phi i32 [ %45, %"12" ], [ 0, %"8.preheader" ]
  %15 = sitofp i32 %14 to double
  %16 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %17 = fmul double %15, %16
  store double %17, double* %eta, align 8
  %18 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %19 = add i32 %18, -1
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %"9.preheader", label %"12"

"9.preheader":                                    ; preds = %"8"
  %21 = sext i32 %14 to i64
  %22 = mul i64 %21, 325
  %23 = add i64 %13, %22
  br label %"9"

"9":                                              ; preds = %"9.preheader", %"11"
  %24 = phi i32 [ %43, %"11" ], [ 0, %"9.preheader" ]
  %25 = sitofp i32 %24 to double
  %26 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %27 = fmul double %25, %26
  store double %27, double* %xi, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %u_exact) #2
  %28 = sext i32 %24 to i64
  %29 = mul i64 %28, 5
  %30 = add i64 %23, %29
  br label %"10"

"10":                                             ; preds = %"9", %"10"
  %indvars.iv9 = phi i64 [ 1, %"9" ], [ %indvars.iv.next10, %"10" ]
  %31 = add i64 %30, %indvars.iv9
  %32 = getelementptr %1* @fields_, i64 0, i32 0, i64 %31
  %33 = load double* %32, align 8
  %34 = add i64 %indvars.iv9, -1
  %35 = getelementptr [5 x double]* %u_exact, i64 0, i64 %34
  %36 = load double* %35, align 8
  %37 = fsub double %33, %36
  %38 = getelementptr [5 x double]* %rms_local, i64 0, i64 %34
  %39 = load double* %38, align 8
  %40 = fmul double %37, %37
  %41 = fadd double %39, %40
  store double %41, double* %38, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 6
  br i1 %exitcond11, label %"11", label %"10"

"11":                                             ; preds = %"10"
  %42 = icmp eq i32 %24, %19
  %43 = add i32 %24, 1
  br i1 %42, label %"12", label %"9"

"12":                                             ; preds = %"11", %"8"
  %44 = icmp eq i32 %14, %9
  %45 = add i32 %14, 1
  br i1 %44, label %"13", label %"8"

"13":                                             ; preds = %"12", %"7"
  %46 = icmp eq i32 %4, %2
  %47 = add i32 %4, 1
  br i1 %46, label %"15", label %"7"

"15":                                             ; preds = %"6", %"13", %"15"
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %"15" ], [ 1, %"13" ], [ 1, %"6" ]
  %48 = add i64 %indvars.iv6, -1
  %49 = getelementptr [5 x double]* %rms, i64 0, i64 %48
  %50 = load double* %49, align 8
  %51 = getelementptr [5 x double]* %rms_local, i64 0, i64 %48
  %52 = load double* %51, align 8
  %53 = fadd double %50, %52
  store double %53, double* %49, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond8, label %"17", label %"15"

"17":                                             ; preds = %"15", %"19"
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %"19" ], [ 1, %"15" ]
  %54 = add i64 %indvars.iv3, -1
  %55 = getelementptr [5 x double]* %rms, i64 0, i64 %54
  %.promoted = load double* %55, align 8
  br label %"18"

"18":                                             ; preds = %"17", %"18"
  %indvars.iv = phi i64 [ 1, %"17" ], [ %indvars.iv.next, %"18" ]
  %56 = phi double [ %.promoted, %"17" ], [ %62, %"18" ]
  %57 = add i64 %indvars.iv, -1
  %58 = getelementptr %2* @global_, i64 0, i32 1, i64 %57
  %59 = load i32* %58, align 4
  %60 = add i32 %59, -2
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %56, %61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %"19", label %"18"

"19":                                             ; preds = %"18"
  %63 = call double @sqrt(double %62) #1
  store double %63, double* %55, align 8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 6
  br i1 %exitcond5, label %"20", label %"17"

"20":                                             ; preds = %"19"
  %64 = bitcast double* %eta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64)
  call void @llvm.lifetime.end(i64 40, i8* %0)
  %65 = bitcast [5 x double]* %u_exact to i8*
  call void @llvm.lifetime.end(i64 40, i8* %65)
  %66 = bitcast double* %xi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66)
  %67 = bitcast double* %zeta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67)
  ret void
}

declare void @exact_solution_(...)

; Function Attrs: nounwind readnone
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @rhs_norm_([5 x double]* noalias nocapture %rms) unnamed_addr #0 {
"6":
  %rms18 = bitcast [5 x double]* %rms to i8*
  %rms_local = alloca [5 x double], align 8
  call void @llvm.memset.p0i8.i64(i8* %rms18, i8 0, i64 40, i32 8, i1 false)
  %0 = bitcast [5 x double]* %rms_local to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %1 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %2 = add i32 %1, -2
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %"7.preheader", label %"15"

"7.preheader":                                    ; preds = %"6"
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %5 = add i32 %4, -2
  %6 = icmp sgt i32 %5, 0
  %7 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %8 = add i32 %7, -2
  %9 = icmp sgt i32 %8, 0
  br label %"7"

"7":                                              ; preds = %"7.preheader", %"13"
  %10 = phi i32 [ %35, %"13" ], [ 1, %"7.preheader" ]
  br i1 %6, label %"8.preheader", label %"13"

"8.preheader":                                    ; preds = %"7"
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 21125
  %13 = add i64 %12, -1
  br label %"8"

"8":                                              ; preds = %"8.preheader", %"12"
  %14 = phi i32 [ %33, %"12" ], [ 1, %"8.preheader" ]
  br i1 %9, label %"9.preheader", label %"12"

"9.preheader":                                    ; preds = %"8"
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 325
  %17 = add i64 %13, %16
  br label %"9"

"9":                                              ; preds = %"9.preheader", %"11"
  %18 = phi i32 [ %31, %"11" ], [ 1, %"9.preheader" ]
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 5
  %21 = add i64 %17, %20
  br label %"10"

"10":                                             ; preds = %"9", %"10"
  %indvars.iv9 = phi i64 [ 1, %"9" ], [ %indvars.iv.next10, %"10" ]
  %22 = add i64 %21, %indvars.iv9
  %23 = getelementptr %1* @fields_, i64 0, i32 7, i64 %22
  %24 = load double* %23, align 8
  %25 = add i64 %indvars.iv9, -1
  %26 = getelementptr [5 x double]* %rms_local, i64 0, i64 %25
  %27 = load double* %26, align 8
  %28 = fmul double %24, %24
  %29 = fadd double %27, %28
  store double %29, double* %26, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 6
  br i1 %exitcond11, label %"11", label %"10"

"11":                                             ; preds = %"10"
  %30 = icmp eq i32 %18, %8
  %31 = add i32 %18, 1
  br i1 %30, label %"12", label %"9"

"12":                                             ; preds = %"11", %"8"
  %32 = icmp eq i32 %14, %5
  %33 = add i32 %14, 1
  br i1 %32, label %"13", label %"8"

"13":                                             ; preds = %"12", %"7"
  %34 = icmp eq i32 %10, %2
  %35 = add i32 %10, 1
  br i1 %34, label %"15", label %"7"

"15":                                             ; preds = %"6", %"13", %"15"
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %"15" ], [ 1, %"13" ], [ 1, %"6" ]
  %36 = add i64 %indvars.iv6, -1
  %37 = getelementptr [5 x double]* %rms, i64 0, i64 %36
  %38 = load double* %37, align 8
  %39 = getelementptr [5 x double]* %rms_local, i64 0, i64 %36
  %40 = load double* %39, align 8
  %41 = fadd double %38, %40
  store double %41, double* %37, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond8, label %"17", label %"15"

"17":                                             ; preds = %"15", %"19"
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %"19" ], [ 1, %"15" ]
  %42 = add i64 %indvars.iv3, -1
  %43 = getelementptr [5 x double]* %rms, i64 0, i64 %42
  %.promoted = load double* %43, align 8
  br label %"18"

"18":                                             ; preds = %"17", %"18"
  %indvars.iv = phi i64 [ 1, %"17" ], [ %indvars.iv.next, %"18" ]
  %44 = phi double [ %.promoted, %"17" ], [ %50, %"18" ]
  %45 = add i64 %indvars.iv, -1
  %46 = getelementptr %2* @global_, i64 0, i32 1, i64 %45
  %47 = load i32* %46, align 4
  %48 = add i32 %47, -2
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %44, %49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %"19", label %"18"

"19":                                             ; preds = %"18"
  %51 = tail call double @sqrt(double %50) #1
  store double %51, double* %43, align 8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 6
  br i1 %exitcond5, label %"20", label %"17"

"20":                                             ; preds = %"19"
  call void @llvm.lifetime.end(i64 40, i8* %0)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
