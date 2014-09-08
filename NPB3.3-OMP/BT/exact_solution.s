; ModuleID = 'exact_solution.f'
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
define void @exact_solution_(double* noalias nocapture readonly %xi, double* noalias nocapture readonly %eta, double* noalias nocapture readonly %zeta, [5 x double]* noalias nocapture %dtemp) unnamed_addr #0 {
entry:
  %0 = load double* %xi, align 8
  %1 = load double* %eta, align 8
  %2 = load double* %zeta, align 8
  br label %"3"

"3":                                              ; preds = %entry, %"3"
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %"3" ]
  %3 = add i64 %indvars.iv, -1
  %4 = getelementptr %0* @constants_, i64 0, i32 26, i64 %3
  %5 = load double* %4, align 8
  %6 = add i64 %indvars.iv, 4
  %7 = getelementptr %0* @constants_, i64 0, i32 26, i64 %6
  %8 = load double* %7, align 8
  %9 = add i64 %indvars.iv, 19
  %10 = getelementptr %0* @constants_, i64 0, i32 26, i64 %9
  %11 = load double* %10, align 8
  %12 = add i64 %indvars.iv, 34
  %13 = getelementptr %0* @constants_, i64 0, i32 26, i64 %12
  %14 = load double* %13, align 8
  %15 = add i64 %indvars.iv, 49
  %16 = getelementptr %0* @constants_, i64 0, i32 26, i64 %15
  %17 = load double* %16, align 8
  %18 = fmul double %0, %17
  %19 = fadd double %14, %18
  %20 = fmul double %0, %19
  %21 = fadd double %11, %20
  %22 = fmul double %0, %21
  %23 = fadd double %8, %22
  %24 = fmul double %0, %23
  %25 = fadd double %5, %24
  %26 = add i64 %indvars.iv, 9
  %27 = getelementptr %0* @constants_, i64 0, i32 26, i64 %26
  %28 = load double* %27, align 8
  %29 = add i64 %indvars.iv, 24
  %30 = getelementptr %0* @constants_, i64 0, i32 26, i64 %29
  %31 = load double* %30, align 8
  %32 = add i64 %indvars.iv, 39
  %33 = getelementptr %0* @constants_, i64 0, i32 26, i64 %32
  %34 = load double* %33, align 8
  %35 = add i64 %indvars.iv, 54
  %36 = getelementptr %0* @constants_, i64 0, i32 26, i64 %35
  %37 = load double* %36, align 8
  %38 = fmul double %1, %37
  %39 = fadd double %34, %38
  %40 = fmul double %1, %39
  %41 = fadd double %31, %40
  %42 = fmul double %1, %41
  %43 = fadd double %28, %42
  %44 = fmul double %1, %43
  %45 = fadd double %25, %44
  %46 = add i64 %indvars.iv, 14
  %47 = getelementptr %0* @constants_, i64 0, i32 26, i64 %46
  %48 = load double* %47, align 8
  %49 = add i64 %indvars.iv, 29
  %50 = getelementptr %0* @constants_, i64 0, i32 26, i64 %49
  %51 = load double* %50, align 8
  %52 = add i64 %indvars.iv, 44
  %53 = getelementptr %0* @constants_, i64 0, i32 26, i64 %52
  %54 = load double* %53, align 8
  %55 = add i64 %indvars.iv, 59
  %56 = getelementptr %0* @constants_, i64 0, i32 26, i64 %55
  %57 = load double* %56, align 8
  %58 = fmul double %2, %57
  %59 = fadd double %54, %58
  %60 = fmul double %2, %59
  %61 = fadd double %51, %60
  %62 = fmul double %2, %61
  %63 = fadd double %48, %62
  %64 = fmul double %2, %63
  %65 = fadd double %45, %64
  %66 = getelementptr [5 x double]* %dtemp, i64 0, i64 %3
  store double %65, double* %66, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %return, label %"3"

return:                                           ; preds = %"3"
  ret void
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
