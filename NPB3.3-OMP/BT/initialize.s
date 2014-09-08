; ModuleID = 'initialize.f'
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
define void @initialize_() unnamed_addr #0 {
entry:
  %eta = alloca double, align 8
  %pface = alloca [30 x double], align 8
  %temp = alloca [5 x double], align 8
  %0 = bitcast [5 x double]* %temp to i8*
  %xi = alloca double, align 8
  %zeta = alloca double, align 8
  %D.2160 = alloca double, align 8
  %D.2165 = alloca double, align 8
  %D.2169 = alloca double, align 8
  %1 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %2 = add i32 %1, -1
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %"3.preheader", label %"10"

"3.preheader":                                    ; preds = %entry
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %5, -1
  %7 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %8 = add i32 %7, -1
  %9 = icmp sgt i32 %8, -1
  br label %"3"

"3":                                              ; preds = %"3.preheader", %"9"
  %10 = phi i32 [ %29, %"9" ], [ 0, %"3.preheader" ]
  br i1 %6, label %"4.preheader", label %"9"

"4.preheader":                                    ; preds = %"3"
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 21125
  %13 = add i64 %12, -1
  br label %"4"

"4":                                              ; preds = %"4.preheader", %"8"
  %14 = phi i32 [ %27, %"8" ], [ 0, %"4.preheader" ]
  br i1 %9, label %"5.preheader", label %"8"

"5.preheader":                                    ; preds = %"4"
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 325
  %17 = add i64 %13, %16
  br label %"5"

"5":                                              ; preds = %"5.preheader", %"7"
  %18 = phi i32 [ %25, %"7" ], [ 0, %"5.preheader" ]
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 5
  %21 = add i64 %17, %20
  br label %"6"

"6":                                              ; preds = %"5", %"6"
  %indvars.iv21 = phi i64 [ 1, %"5" ], [ %indvars.iv.next22, %"6" ]
  %22 = add i64 %21, %indvars.iv21
  %23 = getelementptr %1* @fields_, i64 0, i32 0, i64 %22
  store double 1.000000e+00, double* %23, align 8
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 6
  br i1 %exitcond23, label %"7", label %"6"

"7":                                              ; preds = %"6"
  %24 = icmp eq i32 %18, %8
  %25 = add i32 %18, 1
  br i1 %24, label %"8", label %"5"

"8":                                              ; preds = %"7", %"4"
  %26 = icmp eq i32 %14, %5
  %27 = add i32 %14, 1
  br i1 %26, label %"9", label %"4"

"9":                                              ; preds = %"8", %"3"
  %28 = icmp eq i32 %10, %2
  %29 = add i32 %10, 1
  br i1 %28, label %"10", label %"3"

"10":                                             ; preds = %"9", %entry
  %30 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %31 = add i32 %30, -1
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %"11.preheader", label %"24"

"11.preheader":                                   ; preds = %"10"
  %33 = bitcast double* %D.2160 to i8*
  %34 = bitcast double* %D.2165 to i8*
  %35 = bitcast double* %D.2169 to i8*
  br label %"11"

"11":                                             ; preds = %"11.preheader", %"23"
  %36 = phi i32 [ %131, %"23" ], [ 0, %"11.preheader" ]
  %37 = sitofp i32 %36 to double
  %38 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %39 = fmul double %37, %38
  store double %39, double* %zeta, align 8
  %40 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %41 = add i32 %40, -1
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %"12.preheader", label %"23"

"12.preheader":                                   ; preds = %"11"
  %43 = sext i32 %36 to i64
  %44 = mul i64 %43, 21125
  %45 = add i64 %44, -1
  br label %"12"

"12":                                             ; preds = %"12.preheader", %"22"
  %46 = phi i32 [ %129, %"22" ], [ 0, %"12.preheader" ]
  %47 = sitofp i32 %46 to double
  %48 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %49 = fmul double %47, %48
  store double %49, double* %eta, align 8
  %50 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %51 = add i32 %50, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %"13.preheader", label %"22"

"13.preheader":                                   ; preds = %"12"
  %53 = sext i32 %46 to i64
  %54 = mul i64 %53, 325
  %55 = add i64 %45, %54
  br label %"13"

"13":                                             ; preds = %"13.preheader", %"21"
  %56 = phi i32 [ %127, %"21" ], [ 0, %"13.preheader" ]
  %57 = sitofp i32 %56 to double
  %58 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %59 = fmul double %57, %58
  store double %59, double* %xi, align 8
  br label %"14"

"14":                                             ; preds = %"13", %"14"
  %indvars.iv = phi i64 [ 1, %"13" ], [ %indvars.iv.next, %"14" ]
  %60 = add i64 %indvars.iv, 4294967295
  %61 = trunc i64 %60 to i32
  %62 = sitofp i32 %61 to double
  store double %62, double* %D.2160, align 8
  %63 = mul i64 %indvars.iv, 15
  %64 = add i64 %63, -15
  %65 = getelementptr [30 x double]* %pface, i64 0, i64 %64
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, double*)*)(double* %D.2160, double* %eta, double* %zeta, double* %65) #1
  call void @llvm.lifetime.end(i64 8, i8* %33)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %"16", label %"14"

"16":                                             ; preds = %"14", %"16"
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %"16" ], [ 1, %"14" ]
  %66 = add i64 %indvars.iv12, 4294967295
  %67 = trunc i64 %66 to i32
  %68 = sitofp i32 %67 to double
  store double %68, double* %D.2165, align 8
  %69 = mul i64 %indvars.iv12, 15
  %70 = add i64 %69, -10
  %71 = getelementptr [30 x double]* %pface, i64 0, i64 %70
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, double*)*)(double* %xi, double* %D.2165, double* %zeta, double* %71) #1
  call void @llvm.lifetime.end(i64 8, i8* %34)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 3
  br i1 %exitcond14, label %"18", label %"16"

"18":                                             ; preds = %"16", %"18"
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %"18" ], [ 1, %"16" ]
  %72 = add i64 %indvars.iv15, 4294967295
  %73 = trunc i64 %72 to i32
  %74 = sitofp i32 %73 to double
  store double %74, double* %D.2169, align 8
  %75 = mul i64 %indvars.iv15, 15
  %76 = add i64 %75, -5
  %77 = getelementptr [30 x double]* %pface, i64 0, i64 %76
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, double*)*)(double* %xi, double* %eta, double* %D.2169, double* %77) #1
  call void @llvm.lifetime.end(i64 8, i8* %35)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 3
  br i1 %exitcond17, label %"20.loopexit", label %"18"

"20.loopexit":                                    ; preds = %"18"
  %78 = load double* %xi, align 8
  %79 = fsub double 1.000000e+00, %78
  %80 = load double* %eta, align 8
  %81 = fsub double 1.000000e+00, %80
  %82 = load double* %zeta, align 8
  %83 = fsub double 1.000000e+00, %82
  %84 = sext i32 %56 to i64
  %85 = mul i64 %84, 5
  %86 = add i64 %55, %85
  br label %"20"

"20":                                             ; preds = %"20.loopexit", %"20"
  %indvars.iv18 = phi i64 [ 1, %"20.loopexit" ], [ %indvars.iv.next19, %"20" ]
  %87 = add i64 %indvars.iv18, 14
  %88 = getelementptr [30 x double]* %pface, i64 0, i64 %87
  %89 = load double* %88, align 8
  %90 = fmul double %89, %78
  %91 = add i64 %indvars.iv18, -1
  %92 = getelementptr [30 x double]* %pface, i64 0, i64 %91
  %93 = load double* %92, align 8
  %94 = fmul double %79, %93
  %95 = fadd double %90, %94
  %96 = add i64 %indvars.iv18, 19
  %97 = getelementptr [30 x double]* %pface, i64 0, i64 %96
  %98 = load double* %97, align 8
  %99 = fmul double %98, %80
  %100 = add i64 %indvars.iv18, 4
  %101 = getelementptr [30 x double]* %pface, i64 0, i64 %100
  %102 = load double* %101, align 8
  %103 = fmul double %81, %102
  %104 = fadd double %99, %103
  %105 = add i64 %indvars.iv18, 24
  %106 = getelementptr [30 x double]* %pface, i64 0, i64 %105
  %107 = load double* %106, align 8
  %108 = fmul double %107, %82
  %109 = add i64 %indvars.iv18, 9
  %110 = getelementptr [30 x double]* %pface, i64 0, i64 %109
  %111 = load double* %110, align 8
  %112 = fmul double %83, %111
  %113 = fadd double %108, %112
  %114 = add i64 %86, %indvars.iv18
  %115 = fadd double %95, %104
  %116 = fadd double %115, %113
  %117 = fmul double %95, %104
  %118 = fsub double %116, %117
  %119 = fmul double %95, %113
  %120 = fsub double %118, %119
  %121 = fmul double %104, %113
  %122 = fsub double %120, %121
  %123 = fmul double %117, %113
  %124 = fadd double %123, %122
  %125 = getelementptr %1* @fields_, i64 0, i32 0, i64 %114
  store double %124, double* %125, align 8
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 6
  br i1 %exitcond20, label %"21", label %"20"

"21":                                             ; preds = %"20"
  %126 = icmp eq i32 %56, %51
  %127 = add i32 %56, 1
  br i1 %126, label %"22", label %"13"

"22":                                             ; preds = %"21", %"12"
  %128 = icmp eq i32 %46, %41
  %129 = add i32 %46, 1
  br i1 %128, label %"23", label %"12"

"23":                                             ; preds = %"22", %"11"
  %130 = icmp eq i32 %36, %31
  %131 = add i32 %36, 1
  br i1 %130, label %"24", label %"11"

"24":                                             ; preds = %"23", %"10"
  store double 0.000000e+00, double* %xi, align 8
  %132 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %133 = add i32 %132, -1
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %"25", label %"30"

"25":                                             ; preds = %"24", %"29"
  %135 = phi i32 [ %154, %"29" ], [ 0, %"24" ]
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 21125
  %138 = sitofp i32 %135 to double
  %139 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %140 = fmul double %138, %139
  store double %140, double* %zeta, align 8
  %141 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %142 = add i32 %141, -1
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %"28", label %"29"

"28":                                             ; preds = %"28", %"25"
  %144 = phi i32 [ %152, %"28" ], [ 0, %"25" ]
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 325
  %147 = add i64 %137, %146
  %scevgep10 = getelementptr %1* @fields_, i64 0, i32 0, i64 %147
  %scevgep1011 = bitcast double* %scevgep10 to i8*
  %148 = sitofp i32 %144 to double
  %149 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %150 = fmul double %148, %149
  store double %150, double* %eta, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1011, i8* %0, i64 40, i32 8, i1 false)
  %151 = icmp eq i32 %144, %142
  %152 = add i32 %144, 1
  br i1 %151, label %"29", label %"28"

"29":                                             ; preds = %"28", %"25"
  %153 = icmp eq i32 %135, %133
  %154 = add i32 %135, 1
  br i1 %153, label %"30", label %"25"

"30":                                             ; preds = %"29", %"24"
  %155 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  store double 1.000000e+00, double* %xi, align 8
  %156 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %157 = add i32 %156, -1
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %"31.preheader", label %"36"

"31.preheader":                                   ; preds = %"30"
  %159 = add i32 %155, -1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 5
  br label %"31"

"31":                                             ; preds = %"31.preheader", %"35"
  %162 = phi i32 [ %182, %"35" ], [ 0, %"31.preheader" ]
  %163 = sitofp i32 %162 to double
  %164 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %165 = fmul double %163, %164
  store double %165, double* %zeta, align 8
  %166 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %167 = add i32 %166, -1
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %"32.preheader", label %"35"

"32.preheader":                                   ; preds = %"31"
  %169 = sext i32 %162 to i64
  %170 = mul i64 %169, 21125
  %171 = add i64 %161, %170
  br label %"34"

"34":                                             ; preds = %"34", %"32.preheader"
  %172 = phi i32 [ %180, %"34" ], [ 0, %"32.preheader" ]
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 325
  %175 = add i64 %171, %174
  %scevgep8 = getelementptr %1* @fields_, i64 0, i32 0, i64 %175
  %scevgep89 = bitcast double* %scevgep8 to i8*
  %176 = sitofp i32 %172 to double
  %177 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %178 = fmul double %176, %177
  store double %178, double* %eta, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep89, i8* %0, i64 40, i32 8, i1 false)
  %179 = icmp eq i32 %172, %167
  %180 = add i32 %172, 1
  br i1 %179, label %"35", label %"34"

"35":                                             ; preds = %"34", %"31"
  %181 = icmp eq i32 %162, %157
  %182 = add i32 %162, 1
  br i1 %181, label %"36", label %"31"

"36":                                             ; preds = %"35", %"30"
  store double 0.000000e+00, double* %eta, align 8
  %183 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %184 = add i32 %183, -1
  %185 = icmp sgt i32 %184, -1
  br i1 %185, label %"37", label %"42"

"37":                                             ; preds = %"36", %"41"
  %186 = phi i32 [ %205, %"41" ], [ 0, %"36" ]
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 21125
  %189 = sitofp i32 %186 to double
  %190 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %191 = fmul double %189, %190
  store double %191, double* %zeta, align 8
  %192 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %193 = add i32 %192, -1
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %"40", label %"41"

"40":                                             ; preds = %"40", %"37"
  %195 = phi i32 [ %203, %"40" ], [ 0, %"37" ]
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 5
  %198 = add i64 %188, %197
  %scevgep6 = getelementptr %1* @fields_, i64 0, i32 0, i64 %198
  %scevgep67 = bitcast double* %scevgep6 to i8*
  %199 = sitofp i32 %195 to double
  %200 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %201 = fmul double %199, %200
  store double %201, double* %xi, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep67, i8* %0, i64 40, i32 8, i1 false)
  %202 = icmp eq i32 %195, %193
  %203 = add i32 %195, 1
  br i1 %202, label %"41", label %"40"

"41":                                             ; preds = %"40", %"37"
  %204 = icmp eq i32 %186, %184
  %205 = add i32 %186, 1
  br i1 %204, label %"42", label %"37"

"42":                                             ; preds = %"41", %"36"
  %206 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  store double 1.000000e+00, double* %eta, align 8
  %207 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %208 = add i32 %207, -1
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %"43.preheader", label %"48"

"43.preheader":                                   ; preds = %"42"
  %210 = add i32 %206, -1
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 325
  br label %"43"

"43":                                             ; preds = %"43.preheader", %"47"
  %213 = phi i32 [ %233, %"47" ], [ 0, %"43.preheader" ]
  %214 = sitofp i32 %213 to double
  %215 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 62), align 16
  %216 = fmul double %214, %215
  store double %216, double* %zeta, align 8
  %217 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %218 = add i32 %217, -1
  %219 = icmp sgt i32 %218, -1
  br i1 %219, label %"44.preheader", label %"47"

"44.preheader":                                   ; preds = %"43"
  %220 = sext i32 %213 to i64
  %221 = mul i64 %220, 21125
  %222 = add i64 %212, %221
  br label %"46"

"46":                                             ; preds = %"46", %"44.preheader"
  %223 = phi i32 [ %231, %"46" ], [ 0, %"44.preheader" ]
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 5
  %226 = add i64 %222, %225
  %scevgep4 = getelementptr %1* @fields_, i64 0, i32 0, i64 %226
  %scevgep45 = bitcast double* %scevgep4 to i8*
  %227 = sitofp i32 %223 to double
  %228 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %229 = fmul double %227, %228
  store double %229, double* %xi, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep45, i8* %0, i64 40, i32 8, i1 false)
  %230 = icmp eq i32 %223, %218
  %231 = add i32 %223, 1
  br i1 %230, label %"47", label %"46"

"47":                                             ; preds = %"46", %"43"
  %232 = icmp eq i32 %213, %208
  %233 = add i32 %213, 1
  br i1 %232, label %"48", label %"43"

"48":                                             ; preds = %"47", %"42"
  store double 0.000000e+00, double* %zeta, align 8
  %234 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %235 = add i32 %234, -1
  %236 = icmp sgt i32 %235, -1
  br i1 %236, label %"49", label %"54"

"49":                                             ; preds = %"48", %"53"
  %237 = phi i32 [ %256, %"53" ], [ 0, %"48" ]
  %238 = sext i32 %237 to i64
  %239 = mul i64 %238, 325
  %240 = sitofp i32 %237 to double
  %241 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %242 = fmul double %240, %241
  store double %242, double* %eta, align 8
  %243 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %244 = add i32 %243, -1
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %"52", label %"53"

"52":                                             ; preds = %"52", %"49"
  %246 = phi i32 [ %254, %"52" ], [ 0, %"49" ]
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 5
  %249 = add i64 %239, %248
  %scevgep2 = getelementptr %1* @fields_, i64 0, i32 0, i64 %249
  %scevgep23 = bitcast double* %scevgep2 to i8*
  %250 = sitofp i32 %246 to double
  %251 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %252 = fmul double %250, %251
  store double %252, double* %xi, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep23, i8* %0, i64 40, i32 8, i1 false)
  %253 = icmp eq i32 %246, %244
  %254 = add i32 %246, 1
  br i1 %253, label %"53", label %"52"

"53":                                             ; preds = %"52", %"49"
  %255 = icmp eq i32 %237, %235
  %256 = add i32 %237, 1
  br i1 %255, label %"54", label %"49"

"54":                                             ; preds = %"53", %"48"
  %257 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  store double 1.000000e+00, double* %zeta, align 8
  %258 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %259 = add i32 %258, -1
  %260 = icmp sgt i32 %259, -1
  br i1 %260, label %"55.preheader", label %"60"

"55.preheader":                                   ; preds = %"54"
  %261 = add i32 %257, -1
  %262 = sext i32 %261 to i64
  %263 = mul i64 %262, 21125
  br label %"55"

"55":                                             ; preds = %"55.preheader", %"59"
  %264 = phi i32 [ %284, %"59" ], [ 0, %"55.preheader" ]
  %265 = sitofp i32 %264 to double
  %266 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 61), align 8
  %267 = fmul double %265, %266
  store double %267, double* %eta, align 8
  %268 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %269 = add i32 %268, -1
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %"56.preheader", label %"59"

"56.preheader":                                   ; preds = %"55"
  %271 = sext i32 %264 to i64
  %272 = mul i64 %271, 325
  %273 = add i64 %263, %272
  br label %"58"

"58":                                             ; preds = %"58", %"56.preheader"
  %274 = phi i32 [ %282, %"58" ], [ 0, %"56.preheader" ]
  %275 = sext i32 %274 to i64
  %276 = mul i64 %275, 5
  %277 = add i64 %273, %276
  %scevgep = getelementptr %1* @fields_, i64 0, i32 0, i64 %277
  %scevgep1 = bitcast double* %scevgep to i8*
  %278 = sitofp i32 %274 to double
  %279 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 60), align 32
  %280 = fmul double %278, %279
  store double %280, double* %xi, align 8
  call void bitcast (void (...)* @exact_solution_ to void (double*, double*, double*, [5 x double]*)*)(double* %xi, double* %eta, double* %zeta, [5 x double]* %temp) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1, i8* %0, i64 40, i32 8, i1 false)
  %281 = icmp eq i32 %274, %269
  %282 = add i32 %274, 1
  br i1 %281, label %"59", label %"58"

"59":                                             ; preds = %"58", %"55"
  %283 = icmp eq i32 %264, %259
  %284 = add i32 %264, 1
  br i1 %283, label %"60", label %"55"

"60":                                             ; preds = %"59", %"54"
  %285 = bitcast double* %eta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285)
  %286 = bitcast [30 x double]* %pface to i8*
  call void @llvm.lifetime.end(i64 240, i8* %286)
  call void @llvm.lifetime.end(i64 40, i8* %0)
  %287 = bitcast double* %xi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287)
  %288 = bitcast double* %zeta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288)
  ret void
}

declare void @exact_solution_(...)

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @lhsinit_([0 x double]* noalias nocapture %lhs, i32* noalias nocapture readonly %ni) unnamed_addr #0 {
entry:
  br label %"3"

"3":                                              ; preds = %entry, %"5"
  %indvars.iv9 = phi i64 [ 1, %entry ], [ %indvars.iv.next10, %"5" ]
  br label %"4"

"4":                                              ; preds = %"3", %"4"
  %indvars.iv6 = phi i64 [ 1, %"3" ], [ %indvars.iv.next7, %"4" ]
  %0 = mul i64 %indvars.iv6, 5
  %1 = add i64 %0, %indvars.iv9
  %2 = add i64 %1, -6
  %3 = getelementptr [0 x double]* %lhs, i64 0, i64 %2
  store double 0.000000e+00, double* %3, align 8
  %4 = add i64 %1, 19
  %5 = getelementptr [0 x double]* %lhs, i64 0, i64 %4
  store double 0.000000e+00, double* %5, align 8
  %6 = add i64 %1, 44
  %7 = getelementptr [0 x double]* %lhs, i64 0, i64 %6
  store double 0.000000e+00, double* %7, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond8, label %"5", label %"4"

"5":                                              ; preds = %"4"
  %8 = mul i64 %indvars.iv9, 6
  %9 = add i64 %8, 19
  %10 = getelementptr [0 x double]* %lhs, i64 0, i64 %9
  store double 1.000000e+00, double* %10, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 6
  br i1 %exitcond11, label %"6", label %"3"

"6":                                              ; preds = %"5"
  %11 = load i32* %ni, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 75
  br label %"7"

"7":                                              ; preds = %"6", %"9"
  %indvars.iv3 = phi i64 [ 1, %"6" ], [ %indvars.iv.next4, %"9" ]
  %14 = add i64 %indvars.iv3, %13
  br label %"8"

"8":                                              ; preds = %"7", %"8"
  %indvars.iv = phi i64 [ 1, %"7" ], [ %indvars.iv.next, %"8" ]
  %15 = mul i64 %indvars.iv, 5
  %16 = add i64 %14, %15
  %17 = add i64 %16, -6
  %18 = getelementptr [0 x double]* %lhs, i64 0, i64 %17
  store double 0.000000e+00, double* %18, align 8
  %19 = add i64 %16, 19
  %20 = getelementptr [0 x double]* %lhs, i64 0, i64 %19
  store double 0.000000e+00, double* %20, align 8
  %21 = add i64 %16, 44
  %22 = getelementptr [0 x double]* %lhs, i64 0, i64 %21
  store double 0.000000e+00, double* %22, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %"9", label %"8"

"9":                                              ; preds = %"8"
  %23 = mul i64 %indvars.iv3, 5
  %24 = add i64 %13, 19
  %25 = add i64 %24, %indvars.iv3
  %26 = add i64 %25, %23
  %27 = getelementptr [0 x double]* %lhs, i64 0, i64 %26
  store double 1.000000e+00, double* %27, align 8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 6
  br i1 %exitcond5, label %return, label %"7"

return:                                           ; preds = %"9"
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }
