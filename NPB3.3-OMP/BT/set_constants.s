; ModuleID = 'set_constants.f'
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
define void @set_constants_() unnamed_addr #0 {
entry:
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 0), align 16
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 5), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 10), align 16
  store double 4.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 15), align 8
  store double 5.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 20), align 16
  store double 3.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 25), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 30), align 16
  store double 2.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 35), align 8
  store double 1.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 40), align 16
  store double 3.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 45), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 50), align 16
  store double 4.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 55), align 8
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 60), align 16
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 6), align 16
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 11), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 16), align 16
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 21), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 26), align 16
  store double 3.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 31), align 8
  store double 1.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 36), align 16
  store double 3.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 41), align 8
  store double 2.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 46), align 16
  store double 4.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 51), align 8
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 56), align 16
  store double 5.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 61), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 2), align 16
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 7), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 12), align 16
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 17), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 22), align 16
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 27), align 8
  store double 3.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 32), align 16
  store double 4.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 37), align 8
  store double 3.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 42), align 16
  store double 5.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 47), align 8
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 52), align 16
  store double 5.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 57), align 8
  store double 4.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 62), align 16
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 3), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 8), align 16
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 13), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 18), align 16
  store double 0.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 23), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 28), align 16
  store double 3.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 33), align 8
  store double 3.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 38), align 16
  store double 5.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 43), align 8
  store double 4.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 48), align 16
  store double 2.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 53), align 8
  store double 1.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 58), align 16
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 63), align 8
  store double 5.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 4), align 16
  store double 4.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 9), align 8
  store double 3.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 14), align 16
  store double 2.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 19), align 8
  store double 1.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 24), align 16
  store double 4.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 29), align 8
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 34), align 16
  store double 5.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 39), align 8
  store double 4.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 44), align 16
  store double 3.000000e-02, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 49), align 8
  store double 1.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 54), align 16
  store double 3.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 59), align 8
  store double 2.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 26, i64 64), align 16
  store double 1.400000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  store double 4.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 69), align 8
  store double 1.000000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 70), align 16
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 71), align 8
  store double 1.400000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 72), align 32
  %0 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %1 = add i32 %0, -1
  %2 = sitofp i32 %1 to double
  %3 = fdiv double 1.000000e+00, %2
  store double %3, double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %5 = add i32 %4, -1
  %6 = sitofp i32 %5 to double
  %7 = fdiv double 1.000000e+00, %6
  store double %7, double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %9 = add i32 %8, -1
  %10 = sitofp i32 %9 to double
  %11 = fdiv double 1.000000e+00, %10
  store double %11, double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %12 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  %13 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 69), align 8
  %14 = fmul double %12, %13
  store double %14, double* getelementptr inbounds (%0* @constants_, i64 0, i32 63), align 8
  %15 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  %16 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 72), align 32
  %17 = fmul double %15, %16
  store double %17, double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %18 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 70), align 16
  %19 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 71), align 8
  %20 = fmul double %18, %19
  store double %20, double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %21 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %22 = fmul double %21, %20
  store double %22, double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %23 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %24 = fsub double 1.000000e+00, %23
  store double %24, double* getelementptr inbounds (%0* @constants_, i64 0, i32 67), align 8
  %25 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %26 = fmul double %25, %25
  %27 = fdiv double 1.000000e+00, %26
  store double %27, double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %28 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %29 = fmul double %28, 2.000000e+00
  %30 = fdiv double 1.000000e+00, %29
  store double %30, double* getelementptr inbounds (%0* @constants_, i64 0, i32 1), align 8
  %31 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %32 = fdiv double 1.000000e+00, %31
  store double %32, double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %33 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %34 = fmul double %33, %33
  %35 = fdiv double 1.000000e+00, %34
  store double %35, double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %36 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %37 = fmul double %36, 2.000000e+00
  %38 = fdiv double 1.000000e+00, %37
  store double %38, double* getelementptr inbounds (%0* @constants_, i64 0, i32 4), align 32
  %39 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %40 = fdiv double 1.000000e+00, %39
  store double %40, double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %41 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %42 = fmul double %41, %41
  %43 = fdiv double 1.000000e+00, %42
  store double %43, double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %44 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %45 = fmul double %44, 2.000000e+00
  %46 = fdiv double 1.000000e+00, %45
  store double %46, double* getelementptr inbounds (%0* @constants_, i64 0, i32 7), align 8
  %47 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %48 = fdiv double 1.000000e+00, %47
  store double %48, double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 9), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 10), align 16
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 11), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 12), align 32
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 13), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 14), align 16
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 15), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 16), align 32
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 17), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%0* @constants_, i64 0, i32 18), align 16
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 19), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 20), align 32
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 21), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 22), align 16
  store double 1.000000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 23), align 8
  %49 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 11), align 8
  %50 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 12), align 32
  %51 = fcmp ogt double %50, %49
  %52 = fcmp uno double %49, 0.000000e+00
  %53 = or i1 %51, %52
  %54 = select i1 %53, double %50, double %49
  store double %54, double* getelementptr inbounds (%0* @constants_, i64 0, i32 27), align 8
  %55 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 15), align 8
  %56 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 17), align 8
  %57 = fcmp ogt double %56, %55
  %58 = fcmp uno double %55, 0.000000e+00
  %59 = or i1 %57, %58
  %. = select i1 %59, double %56, double %55
  store double %., double* getelementptr inbounds (%0* @constants_, i64 0, i32 28), align 32
  %60 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 20), align 32
  %61 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 21), align 8
  %62 = fcmp ogt double %61, %60
  %63 = fcmp uno double %60, 0.000000e+00
  %64 = or i1 %62, %63
  %65 = select i1 %64, double %61, double %60
  store double %65, double* getelementptr inbounds (%0* @constants_, i64 0, i32 29), align 8
  %66 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 14), align 16
  %67 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 19), align 8
  %68 = fcmp ogt double %67, %66
  %69 = fcmp uno double %66, 0.000000e+00
  %70 = or i1 %68, %69
  %.1 = select i1 %70, double %67, double %66
  %71 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 9), align 8
  %72 = fcmp ogt double %.1, %71
  %73 = fcmp uno double %71, 0.000000e+00
  %74 = or i1 %72, %73
  %75 = select i1 %74, double %.1, double %71
  %76 = fmul double %75, 2.500000e-01
  store double %76, double* getelementptr inbounds (%0* @constants_, i64 0, i32 24), align 32
  %77 = fmul double %76, 4.000000e+00
  store double %77, double* getelementptr inbounds (%0* @constants_, i64 0, i32 73), align 8
  %78 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 24), align 32
  %79 = fmul double %78, 5.000000e+00
  store double %79, double* getelementptr inbounds (%0* @constants_, i64 0, i32 74), align 16
  %80 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %81 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %82 = fmul double %80, %81
  store double %82, double* getelementptr inbounds (%0* @constants_, i64 0, i32 76), align 32
  %83 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %84 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 1), align 8
  %85 = fmul double %83, %84
  store double %85, double* getelementptr inbounds (%0* @constants_, i64 0, i32 77), align 8
  %86 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %87 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %88 = fmul double %86, %87
  store double %88, double* getelementptr inbounds (%0* @constants_, i64 0, i32 78), align 16
  %89 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %90 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 4), align 32
  %91 = fmul double %89, %90
  store double %91, double* getelementptr inbounds (%0* @constants_, i64 0, i32 79), align 8
  %92 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %93 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %94 = fmul double %92, %93
  store double %94, double* getelementptr inbounds (%0* @constants_, i64 0, i32 80), align 32
  %95 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %96 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 7), align 8
  %97 = fmul double %95, %96
  store double %97, double* getelementptr inbounds (%0* @constants_, i64 0, i32 81), align 8
  %98 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 76), align 32
  %99 = fmul double %98, 2.000000e+00
  store double %99, double* getelementptr inbounds (%0* @constants_, i64 0, i32 82), align 16
  %100 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 78), align 16
  %101 = fmul double %100, 2.000000e+00
  store double %101, double* getelementptr inbounds (%0* @constants_, i64 0, i32 83), align 8
  %102 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 80), align 32
  %103 = fmul double %102, 2.000000e+00
  store double %103, double* getelementptr inbounds (%0* @constants_, i64 0, i32 84), align 32
  %104 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %105 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 24), align 32
  %106 = fmul double %104, %105
  store double %106, double* getelementptr inbounds (%0* @constants_, i64 0, i32 75), align 8
  store double %106, double* getelementptr inbounds (%0* @constants_, i64 0, i32 85), align 8
  %107 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 75), align 8
  %108 = fmul double %107, 4.000000e+00
  store double %108, double* getelementptr inbounds (%0* @constants_, i64 0, i32 86), align 16
  %109 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 75), align 8
  %110 = fmul double %109, 5.000000e+00
  store double %110, double* getelementptr inbounds (%0* @constants_, i64 0, i32 87), align 8
  %111 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 75), align 8
  %112 = fmul double %111, 6.000000e+00
  store double %112, double* getelementptr inbounds (%0* @constants_, i64 0, i32 88), align 32
  %113 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %114 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %115 = fmul double %113, %114
  store double %115, double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %116 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %117 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %118 = fmul double %116, %117
  store double %118, double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %119 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %120 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %121 = fmul double %119, %120
  store double %121, double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %122 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 9), align 8
  %123 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %124 = fmul double %122, %123
  store double %124, double* getelementptr inbounds (%0* @constants_, i64 0, i32 35), align 8
  %125 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 10), align 16
  %126 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %127 = fmul double %125, %126
  store double %127, double* getelementptr inbounds (%0* @constants_, i64 0, i32 36), align 32
  %128 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 11), align 8
  %129 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %130 = fmul double %128, %129
  store double %130, double* getelementptr inbounds (%0* @constants_, i64 0, i32 37), align 8
  %131 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 12), align 32
  %132 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %133 = fmul double %131, %132
  store double %133, double* getelementptr inbounds (%0* @constants_, i64 0, i32 38), align 16
  %134 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 13), align 8
  %135 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %136 = fmul double %134, %135
  store double %136, double* getelementptr inbounds (%0* @constants_, i64 0, i32 39), align 8
  %137 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 14), align 16
  %138 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %139 = fmul double %137, %138
  store double %139, double* getelementptr inbounds (%0* @constants_, i64 0, i32 45), align 8
  %140 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 15), align 8
  %141 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %142 = fmul double %140, %141
  store double %142, double* getelementptr inbounds (%0* @constants_, i64 0, i32 46), align 16
  %143 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 16), align 32
  %144 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %145 = fmul double %143, %144
  store double %145, double* getelementptr inbounds (%0* @constants_, i64 0, i32 47), align 8
  %146 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 17), align 8
  %147 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %148 = fmul double %146, %147
  store double %148, double* getelementptr inbounds (%0* @constants_, i64 0, i32 48), align 32
  %149 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 18), align 16
  %150 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %151 = fmul double %149, %150
  store double %151, double* getelementptr inbounds (%0* @constants_, i64 0, i32 49), align 8
  %152 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 19), align 8
  %153 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %154 = fmul double %152, %153
  store double %154, double* getelementptr inbounds (%0* @constants_, i64 0, i32 55), align 8
  %155 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 20), align 32
  %156 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %157 = fmul double %155, %156
  store double %157, double* getelementptr inbounds (%0* @constants_, i64 0, i32 56), align 32
  %158 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 21), align 8
  %159 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %160 = fmul double %158, %159
  store double %160, double* getelementptr inbounds (%0* @constants_, i64 0, i32 57), align 8
  %161 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 22), align 16
  %162 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %163 = fmul double %161, %162
  store double %163, double* getelementptr inbounds (%0* @constants_, i64 0, i32 58), align 16
  %164 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 23), align 8
  %165 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %166 = fmul double %164, %165
  store double %166, double* getelementptr inbounds (%0* @constants_, i64 0, i32 59), align 8
  store double 2.500000e+00, double* getelementptr inbounds (%0* @constants_, i64 0, i32 92), align 32
  store double 0x3FF5555555555555, double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  store double 0x3FC5555555555555, double* getelementptr inbounds (%0* @constants_, i64 0, i32 94), align 16
  %167 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %168 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %169 = fmul double %167, %168
  %170 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %171 = fmul double %169, %170
  store double %171, double* getelementptr inbounds (%0* @constants_, i64 0, i32 30), align 16
  %172 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %173 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %174 = fmul double %172, %173
  store double %174, double* getelementptr inbounds (%0* @constants_, i64 0, i32 31), align 8
  %175 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %176 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 67), align 8
  %177 = fmul double %175, %176
  %178 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %179 = fmul double %177, %178
  store double %179, double* getelementptr inbounds (%0* @constants_, i64 0, i32 32), align 32
  %180 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %181 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 94), align 16
  %182 = fmul double %180, %181
  %183 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %184 = fmul double %182, %183
  store double %184, double* getelementptr inbounds (%0* @constants_, i64 0, i32 33), align 8
  %185 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 89), align 8
  %186 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %187 = fmul double %185, %186
  %188 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 2), align 16
  %189 = fmul double %187, %188
  store double %189, double* getelementptr inbounds (%0* @constants_, i64 0, i32 34), align 16
  %190 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %191 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %192 = fmul double %190, %191
  %193 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %194 = fmul double %192, %193
  store double %194, double* getelementptr inbounds (%0* @constants_, i64 0, i32 40), align 32
  %195 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %196 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %197 = fmul double %195, %196
  store double %197, double* getelementptr inbounds (%0* @constants_, i64 0, i32 41), align 8
  %198 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %199 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 67), align 8
  %200 = fmul double %198, %199
  %201 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %202 = fmul double %200, %201
  store double %202, double* getelementptr inbounds (%0* @constants_, i64 0, i32 42), align 16
  %203 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %204 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 94), align 16
  %205 = fmul double %203, %204
  %206 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %207 = fmul double %205, %206
  store double %207, double* getelementptr inbounds (%0* @constants_, i64 0, i32 43), align 8
  %208 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 90), align 16
  %209 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %210 = fmul double %208, %209
  %211 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 5), align 8
  %212 = fmul double %210, %211
  store double %212, double* getelementptr inbounds (%0* @constants_, i64 0, i32 44), align 32
  %213 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %214 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %215 = fmul double %213, %214
  %216 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %217 = fmul double %215, %216
  store double %217, double* getelementptr inbounds (%0* @constants_, i64 0, i32 50), align 16
  %218 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %219 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %220 = fmul double %218, %219
  store double %220, double* getelementptr inbounds (%0* @constants_, i64 0, i32 51), align 8
  %221 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %222 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 67), align 8
  %223 = fmul double %221, %222
  %224 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %225 = fmul double %223, %224
  store double %225, double* getelementptr inbounds (%0* @constants_, i64 0, i32 52), align 32
  %226 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %227 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 94), align 16
  %228 = fmul double %226, %227
  %229 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %230 = fmul double %228, %229
  store double %230, double* getelementptr inbounds (%0* @constants_, i64 0, i32 53), align 8
  %231 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 91), align 8
  %232 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 64), align 32
  %233 = fmul double %231, %232
  %234 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 8), align 32
  %235 = fmul double %233, %234
  store double %235, double* getelementptr inbounds (%0* @constants_, i64 0, i32 54), align 16
  ret void
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
