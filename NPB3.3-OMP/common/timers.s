; ModuleID = 'timers.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

%0 = type { [64 x double], [64 x double] }

@tt_ = common unnamed_addr global %0 zeroinitializer, align 32

; Function Attrs: nounwind uwtable
define double @elapsed_time_() #0 {
entry:
  %t = alloca double, align 8
  call void bitcast (void (...)* @wtime_ to void (double*)*)(double* %t) #1
  %0 = load double* %t, align 8
  %1 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1)
  ret double %0
}

declare void @wtime_(...)

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @timer_clear_(i32* noalias nocapture readonly %n) unnamed_addr #0 {
entry:
  %0 = load i32* %n, align 4
  %1 = sext i32 %0 to i64
  %2 = add i64 %1, -1
  %3 = getelementptr %0* @tt_, i64 0, i32 1, i64 %2
  store double 0.000000e+00, double* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @timer_start_(i32* noalias nocapture readonly %n) unnamed_addr #0 {
entry:
  %0 = load i32* %n, align 4
  %1 = sext i32 %0 to i64
  %2 = add i64 %1, -1
  %3 = tail call double @elapsed_time_() #0
  %4 = getelementptr %0* @tt_, i64 0, i32 0, i64 %2
  store double %3, double* %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @timer_stop_(i32* noalias nocapture readonly %n) unnamed_addr #0 {
entry:
  %0 = tail call double @elapsed_time_() #0
  %1 = load i32* %n, align 4
  %2 = sext i32 %1 to i64
  %3 = add i64 %2, -1
  %4 = getelementptr %0* @tt_, i64 0, i32 0, i64 %3
  %5 = load double* %4, align 8
  %6 = fsub double %0, %5
  %7 = getelementptr %0* @tt_, i64 0, i32 1, i64 %3
  %8 = load double* %7, align 8
  %9 = fadd double %8, %6
  store double %9, double* %7, align 8
  ret void
}

; Function Attrs: nounwind readonly uwtable
define double @timer_read_(i32* noalias nocapture readonly %n) unnamed_addr #2 {
entry:
  %0 = load i32* %n, align 4
  %1 = sext i32 %0 to i64
  %2 = add i64 %1, -1
  %3 = getelementptr %0* @tt_, i64 0, i32 1, i64 %2
  %4 = load double* %3, align 8
  ret double %4
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly uwtable "no-frame-pointer-elim-non-leaf"="false" }
