; ModuleID = 'adi.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

; Function Attrs: nounwind uwtable
define void @adi_() unnamed_addr #0 {
entry:
  tail call void bitcast (void (...)* @compute_rhs_ to void ()*)() #1
  tail call void bitcast (void (...)* @x_solve_ to void ()*)() #1
  tail call void bitcast (void (...)* @y_solve_ to void ()*)() #1
  tail call void bitcast (void (...)* @z_solve_ to void ()*)() #1
  tail call void bitcast (void (...)* @add_ to void ()*)() #1
  ret void
}

declare void @compute_rhs_(...)

declare void @x_solve_(...)

declare void @y_solve_(...)

declare void @z_solve_(...)

declare void @add_(...)

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }
