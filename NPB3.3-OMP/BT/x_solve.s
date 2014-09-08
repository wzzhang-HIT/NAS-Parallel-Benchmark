; ModuleID = 'x_solve.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

%0 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [65 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%1 = type { [1352000 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [1352000 x double], [1352000 x double] }
%2 = type { double, [3 x i32], i32 }
%3 = type { [65 x double], [65 x double], [325 x double], [325 x double] }
%4 = type { [1625 x double], [1625 x double], [4875 x double], double, double, double }

@constants_ = common unnamed_addr global %0 zeroinitializer, align 32
@fields_ = common global %1 zeroinitializer, align 32
@global_ = common unnamed_addr global %2 zeroinitializer, align 16
@work_1d_ = common unnamed_addr global %3 zeroinitializer, align 32
@work_lhs_ = common global %4 zeroinitializer, align 32
@0 = internal constant i32 6
@1 = internal constant i32 6

; Function Attrs: nounwind uwtable
define void @x_solve_() unnamed_addr #0 {
entry:
  %isize = alloca i32, align 4
  %0 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %"4", label %"3"

"3":                                              ; preds = %entry
  call void bitcast (void (...)* @timer_start_ to void (i32*)*)(i32* @0) #1
  br label %"4"

"4":                                              ; preds = %entry, %"3"
  %2 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %3 = add i32 %2, -1
  store i32 %3, i32* %isize, align 4
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %5 = add i32 %4, -2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %"5", label %"20"

"5":                                              ; preds = %"4", %"19"
  %7 = phi i32 [ %1251, %"19" ], [ 1, %"4" ]
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %9 = add i32 %8, -2
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %"6.preheader", label %"19"

"6.preheader":                                    ; preds = %"5"
  %11 = sext i32 %7 to i64
  %12 = mul i64 %11, 21125
  %13 = sext i32 %7 to i64
  %14 = mul i64 %13, 4225
  %15 = mul i64 %13, 21125
  br label %"6"

"6":                                              ; preds = %"6.preheader", %"18"
  %16 = phi i32 [ %1249, %"18" ], [ 1, %"6.preheader" ]
  %17 = load i32* %isize, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %"7.preheader", label %"8"

"7.preheader":                                    ; preds = %"6"
  %19 = sext i32 %16 to i64
  %20 = mul i64 %19, 65
  %21 = add i64 %20, %14
  %22 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 69), align 8
  %23 = mul i64 %19, 325
  %24 = add i64 %23, %15
  %25 = fsub double 2.000000e+00, %22
  %26 = fmul double %22, 2.000000e+00
  %27 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  %28 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %29 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %30 = fmul double %28, %29
  %31 = fmul double %28, %29
  %32 = fmul double %28, %29
  %33 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %34 = fsub double %32, %33
  %35 = fsub double %29, %33
  %36 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %37 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %38 = fmul double %36, %37
  %39 = fsub double %38, %33
  %40 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %41 = fsub double %37, %40
  %42 = fsub double %37, %40
  br label %"7"

"7":                                              ; preds = %"7.preheader", %"7"
  %43 = phi i32 [ %279, %"7" ], [ 0, %"7.preheader" ]
  %44 = sext i32 %43 to i64
  %45 = add i64 %21, %44
  %46 = getelementptr %1* @fields_, i64 0, i32 5, i64 %45
  %47 = load double* %46, align 8
  store double %47, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %48 = fmul double %47, %47
  store double %48, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %49 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %50 = fmul double %49, %48
  store double %50, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %51 = mul i64 %44, 25
  %52 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %51
  store double 0.000000e+00, double* %52, align 8
  %53 = add i64 %51, 5
  %54 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %53
  store double 1.000000e+00, double* %54, align 8
  %55 = add i64 %51, 10
  %56 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %55
  store double 0.000000e+00, double* %56, align 8
  %57 = add i64 %51, 15
  %58 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %57
  store double 0.000000e+00, double* %58, align 8
  %59 = add i64 %51, 20
  %60 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %59
  store double 0.000000e+00, double* %60, align 8
  %61 = add i64 %51, 1
  %62 = getelementptr %1* @fields_, i64 0, i32 4, i64 %45
  %63 = load double* %62, align 8
  %64 = fmul double %63, %22
  %65 = mul i64 %44, 5
  %66 = add i64 %24, %65
  %67 = add i64 %66, 1
  %68 = getelementptr %1* @fields_, i64 0, i32 0, i64 %67
  %69 = load double* %68, align 8
  %70 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %71 = fmul double %69, %70
  %72 = fmul double %69, %71
  %73 = fsub double %64, %72
  %74 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %61
  store double %73, double* %74, align 8
  %75 = add i64 %51, 6
  %76 = load double* %68, align 8
  %77 = getelementptr %1* @fields_, i64 0, i32 0, i64 %66
  %78 = load double* %77, align 8
  %79 = fdiv double %76, %78
  %80 = fmul double %25, %79
  %81 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %75
  store double %80, double* %81, align 8
  %82 = add i64 %51, 11
  %83 = add i64 %66, 2
  %84 = getelementptr %1* @fields_, i64 0, i32 0, i64 %83
  %85 = load double* %84, align 8
  %86 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %87 = fmul double %85, %86
  %88 = fmul double %87, %22
  %89 = fsub double -0.000000e+00, %88
  %90 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %82
  store double %89, double* %90, align 8
  %91 = add i64 %51, 16
  %92 = add i64 %66, 3
  %93 = getelementptr %1* @fields_, i64 0, i32 0, i64 %92
  %94 = load double* %93, align 8
  %95 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %96 = fmul double %94, %95
  %97 = fmul double %96, %22
  %98 = fsub double -0.000000e+00, %97
  %99 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %91
  store double %98, double* %99, align 8
  %100 = add i64 %51, 21
  %101 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %100
  store double %22, double* %101, align 8
  %102 = add i64 %51, 2
  %103 = load double* %68, align 8
  %104 = load double* %84, align 8
  %105 = fmul double %103, %104
  %106 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %107 = fmul double %105, %106
  %108 = fsub double -0.000000e+00, %107
  %109 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %102
  store double %108, double* %109, align 8
  %110 = add i64 %51, 7
  %111 = load double* %84, align 8
  %112 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %113 = fmul double %111, %112
  %114 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %110
  store double %113, double* %114, align 8
  %115 = add i64 %51, 12
  %116 = load double* %68, align 8
  %117 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %118 = fmul double %116, %117
  %119 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %115
  store double %118, double* %119, align 8
  %120 = add i64 %51, 17
  %121 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %120
  store double 0.000000e+00, double* %121, align 8
  %122 = add i64 %51, 22
  %123 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %122
  store double 0.000000e+00, double* %123, align 8
  %124 = add i64 %51, 3
  %125 = load double* %68, align 8
  %126 = load double* %93, align 8
  %127 = fmul double %125, %126
  %128 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %129 = fmul double %127, %128
  %130 = fsub double -0.000000e+00, %129
  %131 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %124
  store double %130, double* %131, align 8
  %132 = add i64 %51, 8
  %133 = load double* %93, align 8
  %134 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %135 = fmul double %133, %134
  %136 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %132
  store double %135, double* %136, align 8
  %137 = add i64 %51, 13
  %138 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %137
  store double 0.000000e+00, double* %138, align 8
  %139 = add i64 %51, 18
  %140 = load double* %68, align 8
  %141 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %142 = fmul double %140, %141
  %143 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %139
  store double %142, double* %143, align 8
  %144 = add i64 %51, 23
  %145 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %144
  store double 0.000000e+00, double* %145, align 8
  %146 = add i64 %51, 4
  %147 = getelementptr %1* @fields_, i64 0, i32 6, i64 %45
  %148 = load double* %147, align 8
  %149 = fmul double %26, %148
  %150 = add i64 %66, 4
  %151 = getelementptr %1* @fields_, i64 0, i32 0, i64 %150
  %152 = load double* %151, align 8
  %153 = fmul double %152, %27
  %154 = fsub double %149, %153
  %155 = load double* %68, align 8
  %156 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %157 = fmul double %155, %156
  %158 = fmul double %154, %157
  %159 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %146
  store double %158, double* %159, align 8
  %160 = add i64 %51, 9
  %161 = load double* %151, align 8
  %162 = fmul double %161, %27
  %163 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %164 = fmul double %162, %163
  %165 = load double* %68, align 8
  %166 = fmul double %165, %165
  %167 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %168 = fmul double %166, %167
  %169 = load double* %62, align 8
  %170 = fadd double %168, %169
  %171 = fmul double %170, %22
  %172 = fsub double %164, %171
  %173 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %160
  store double %172, double* %173, align 8
  %174 = add i64 %51, 14
  %175 = load double* %84, align 8
  %176 = load double* %68, align 8
  %177 = fmul double %175, %176
  %178 = fmul double %177, %22
  %179 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %180 = fmul double %178, %179
  %181 = fsub double -0.000000e+00, %180
  %182 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %174
  store double %181, double* %182, align 8
  %183 = add i64 %51, 19
  %184 = load double* %93, align 8
  %185 = load double* %68, align 8
  %186 = fmul double %184, %185
  %187 = fmul double %186, %22
  %188 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %189 = fmul double %187, %188
  %190 = fsub double -0.000000e+00, %189
  %191 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %183
  store double %190, double* %191, align 8
  %192 = add i64 %51, 24
  %193 = load double* %68, align 8
  %194 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %195 = fmul double %193, %194
  %196 = fmul double %195, %27
  %197 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %192
  store double %196, double* %197, align 8
  %198 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %51
  store double 0.000000e+00, double* %198, align 8
  %199 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %53
  store double 0.000000e+00, double* %199, align 8
  %200 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %55
  store double 0.000000e+00, double* %200, align 8
  %201 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %57
  store double 0.000000e+00, double* %201, align 8
  %202 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %59
  store double 0.000000e+00, double* %202, align 8
  %203 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %204 = fmul double %30, %203
  %205 = load double* %68, align 8
  %206 = fmul double %204, %205
  %207 = fsub double -0.000000e+00, %206
  %208 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %61
  store double %207, double* %208, align 8
  %209 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %210 = fmul double %31, %209
  %211 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %75
  store double %210, double* %211, align 8
  %212 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %82
  store double 0.000000e+00, double* %212, align 8
  %213 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %91
  store double 0.000000e+00, double* %213, align 8
  %214 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %100
  store double 0.000000e+00, double* %214, align 8
  %215 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %216 = fmul double %29, %215
  %217 = load double* %84, align 8
  %218 = fmul double %216, %217
  %219 = fsub double -0.000000e+00, %218
  %220 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %102
  store double %219, double* %220, align 8
  %221 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %110
  store double 0.000000e+00, double* %221, align 8
  %222 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %223 = fmul double %29, %222
  %224 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %115
  store double %223, double* %224, align 8
  %225 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %120
  store double 0.000000e+00, double* %225, align 8
  %226 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %122
  store double 0.000000e+00, double* %226, align 8
  %227 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %228 = fmul double %29, %227
  %229 = load double* %93, align 8
  %230 = fmul double %228, %229
  %231 = fsub double -0.000000e+00, %230
  %232 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %124
  store double %231, double* %232, align 8
  %233 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %132
  store double 0.000000e+00, double* %233, align 8
  %234 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %137
  store double 0.000000e+00, double* %234, align 8
  %235 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %236 = fmul double %29, %235
  %237 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %139
  store double %236, double* %237, align 8
  %238 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %144
  store double 0.000000e+00, double* %238, align 8
  %239 = load double* %68, align 8
  %240 = fmul double %239, %239
  %241 = load double* %84, align 8
  %242 = fmul double %241, %241
  %243 = load double* %93, align 8
  %244 = fmul double %243, %243
  %245 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %246 = fmul double %34, %245
  %247 = fmul double %240, %246
  %248 = fsub double -0.000000e+00, %247
  %249 = fmul double %35, %245
  %250 = fmul double %242, %249
  %251 = fsub double %248, %250
  %252 = fmul double %244, %249
  %253 = fsub double %251, %252
  %254 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %255 = fmul double %33, %254
  %256 = load double* %151, align 8
  %257 = fmul double %255, %256
  %258 = fsub double %253, %257
  %259 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %146
  store double %258, double* %259, align 8
  %260 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %261 = fmul double %39, %260
  %262 = load double* %68, align 8
  %263 = fmul double %261, %262
  %264 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %160
  store double %263, double* %264, align 8
  %265 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %266 = fmul double %41, %265
  %267 = load double* %84, align 8
  %268 = fmul double %266, %267
  %269 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %174
  store double %268, double* %269, align 8
  %270 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %271 = fmul double %42, %270
  %272 = load double* %93, align 8
  %273 = fmul double %271, %272
  %274 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %183
  store double %273, double* %274, align 8
  %275 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %276 = fmul double %40, %275
  %277 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %192
  store double %276, double* %277, align 8
  %278 = icmp eq i32 %43, %17
  %279 = add i32 %43, 1
  br i1 %278, label %"8", label %"7"

"8":                                              ; preds = %"7", %"6"
  call void bitcast (void (...)* @lhsinit_ to void ([4875 x double]*, i32*)*)([4875 x double]* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2), i32* %isize) #1
  %280 = load i32* %isize, align 4
  %281 = add i32 %280, -1
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %"9.preheader", label %"10"

"9.preheader":                                    ; preds = %"8"
  %283 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %284 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 0), align 32
  %285 = fmul double %283, %284
  %286 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 1), align 8
  %287 = fmul double %283, %286
  %288 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 9), align 8
  %289 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 10), align 16
  %290 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 11), align 8
  %291 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 12), align 32
  %292 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 13), align 8
  br label %"9"

"9":                                              ; preds = %"9.preheader", %"9"
  %293 = phi i32 [ %847, %"9" ], [ 1, %"9.preheader" ]
  store double %285, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  store double %287, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %294 = sext i32 %293 to i64
  %295 = mul i64 %294, 75
  %296 = add i32 %293, -1
  %297 = sext i32 %296 to i64
  %298 = mul i64 %297, 25
  %299 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %298
  %300 = load double* %299, align 8
  %301 = fmul double %300, %287
  %302 = fsub double -0.000000e+00, %301
  %303 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %298
  %304 = load double* %303, align 8
  %305 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %306 = fmul double %304, %305
  %307 = fsub double %302, %306
  %308 = fmul double %305, %288
  %309 = fsub double %307, %308
  %310 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %295
  store double %309, double* %310, align 8
  %311 = add i64 %295, 5
  %312 = add i64 %298, 5
  %313 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %312
  %314 = load double* %313, align 8
  %315 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %316 = fmul double %314, %315
  %317 = fsub double -0.000000e+00, %316
  %318 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %312
  %319 = load double* %318, align 8
  %320 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %321 = fmul double %319, %320
  %322 = fsub double %317, %321
  %323 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %311
  store double %322, double* %323, align 8
  %324 = add i64 %295, 10
  %325 = add i64 %298, 10
  %326 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %325
  %327 = load double* %326, align 8
  %328 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %329 = fmul double %327, %328
  %330 = fsub double -0.000000e+00, %329
  %331 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %325
  %332 = load double* %331, align 8
  %333 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %334 = fmul double %332, %333
  %335 = fsub double %330, %334
  %336 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %324
  store double %335, double* %336, align 8
  %337 = add i64 %295, 15
  %338 = add i64 %298, 15
  %339 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %338
  %340 = load double* %339, align 8
  %341 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %342 = fmul double %340, %341
  %343 = fsub double -0.000000e+00, %342
  %344 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %338
  %345 = load double* %344, align 8
  %346 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %347 = fmul double %345, %346
  %348 = fsub double %343, %347
  %349 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %337
  store double %348, double* %349, align 8
  %350 = add i64 %295, 20
  %351 = add i64 %298, 20
  %352 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %351
  %353 = load double* %352, align 8
  %354 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %355 = fmul double %353, %354
  %356 = fsub double -0.000000e+00, %355
  %357 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %351
  %358 = load double* %357, align 8
  %359 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %360 = fmul double %358, %359
  %361 = fsub double %356, %360
  %362 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %350
  store double %361, double* %362, align 8
  %363 = add i64 %295, 1
  %364 = add i64 %298, 1
  %365 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %364
  %366 = load double* %365, align 8
  %367 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %368 = fmul double %366, %367
  %369 = fsub double -0.000000e+00, %368
  %370 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %364
  %371 = load double* %370, align 8
  %372 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %373 = fmul double %371, %372
  %374 = fsub double %369, %373
  %375 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %363
  store double %374, double* %375, align 8
  %376 = add i64 %295, 6
  %377 = add i64 %298, 6
  %378 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %377
  %379 = load double* %378, align 8
  %380 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %381 = fmul double %379, %380
  %382 = fsub double -0.000000e+00, %381
  %383 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %377
  %384 = load double* %383, align 8
  %385 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %386 = fmul double %384, %385
  %387 = fsub double %382, %386
  %388 = fmul double %385, %289
  %389 = fsub double %387, %388
  %390 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %376
  store double %389, double* %390, align 8
  %391 = add i64 %295, 11
  %392 = add i64 %298, 11
  %393 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %392
  %394 = load double* %393, align 8
  %395 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %396 = fmul double %394, %395
  %397 = fsub double -0.000000e+00, %396
  %398 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %392
  %399 = load double* %398, align 8
  %400 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %401 = fmul double %399, %400
  %402 = fsub double %397, %401
  %403 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %391
  store double %402, double* %403, align 8
  %404 = add i64 %295, 16
  %405 = add i64 %298, 16
  %406 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %405
  %407 = load double* %406, align 8
  %408 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %409 = fmul double %407, %408
  %410 = fsub double -0.000000e+00, %409
  %411 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %405
  %412 = load double* %411, align 8
  %413 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %414 = fmul double %412, %413
  %415 = fsub double %410, %414
  %416 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %404
  store double %415, double* %416, align 8
  %417 = add i64 %295, 21
  %418 = add i64 %298, 21
  %419 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %418
  %420 = load double* %419, align 8
  %421 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %422 = fmul double %420, %421
  %423 = fsub double -0.000000e+00, %422
  %424 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %418
  %425 = load double* %424, align 8
  %426 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %427 = fmul double %425, %426
  %428 = fsub double %423, %427
  %429 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %417
  store double %428, double* %429, align 8
  %430 = add i64 %295, 2
  %431 = add i64 %298, 2
  %432 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %431
  %433 = load double* %432, align 8
  %434 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %435 = fmul double %433, %434
  %436 = fsub double -0.000000e+00, %435
  %437 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %431
  %438 = load double* %437, align 8
  %439 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %440 = fmul double %438, %439
  %441 = fsub double %436, %440
  %442 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %430
  store double %441, double* %442, align 8
  %443 = add i64 %295, 7
  %444 = add i64 %298, 7
  %445 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %444
  %446 = load double* %445, align 8
  %447 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %448 = fmul double %446, %447
  %449 = fsub double -0.000000e+00, %448
  %450 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %444
  %451 = load double* %450, align 8
  %452 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %453 = fmul double %451, %452
  %454 = fsub double %449, %453
  %455 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %443
  store double %454, double* %455, align 8
  %456 = add i64 %295, 12
  %457 = add i64 %298, 12
  %458 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %457
  %459 = load double* %458, align 8
  %460 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %461 = fmul double %459, %460
  %462 = fsub double -0.000000e+00, %461
  %463 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %457
  %464 = load double* %463, align 8
  %465 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %466 = fmul double %464, %465
  %467 = fsub double %462, %466
  %468 = fmul double %465, %290
  %469 = fsub double %467, %468
  %470 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %456
  store double %469, double* %470, align 8
  %471 = add i64 %295, 17
  %472 = add i64 %298, 17
  %473 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %472
  %474 = load double* %473, align 8
  %475 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %476 = fmul double %474, %475
  %477 = fsub double -0.000000e+00, %476
  %478 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %472
  %479 = load double* %478, align 8
  %480 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %481 = fmul double %479, %480
  %482 = fsub double %477, %481
  %483 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %471
  store double %482, double* %483, align 8
  %484 = add i64 %295, 22
  %485 = add i64 %298, 22
  %486 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %485
  %487 = load double* %486, align 8
  %488 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %489 = fmul double %487, %488
  %490 = fsub double -0.000000e+00, %489
  %491 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %485
  %492 = load double* %491, align 8
  %493 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %494 = fmul double %492, %493
  %495 = fsub double %490, %494
  %496 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %484
  store double %495, double* %496, align 8
  %497 = add i64 %295, 3
  %498 = add i64 %298, 3
  %499 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %498
  %500 = load double* %499, align 8
  %501 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %502 = fmul double %500, %501
  %503 = fsub double -0.000000e+00, %502
  %504 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %498
  %505 = load double* %504, align 8
  %506 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %507 = fmul double %505, %506
  %508 = fsub double %503, %507
  %509 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %497
  store double %508, double* %509, align 8
  %510 = add i64 %295, 8
  %511 = add i64 %298, 8
  %512 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %511
  %513 = load double* %512, align 8
  %514 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %515 = fmul double %513, %514
  %516 = fsub double -0.000000e+00, %515
  %517 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %511
  %518 = load double* %517, align 8
  %519 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %520 = fmul double %518, %519
  %521 = fsub double %516, %520
  %522 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %510
  store double %521, double* %522, align 8
  %523 = add i64 %295, 13
  %524 = add i64 %298, 13
  %525 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %524
  %526 = load double* %525, align 8
  %527 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %528 = fmul double %526, %527
  %529 = fsub double -0.000000e+00, %528
  %530 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %524
  %531 = load double* %530, align 8
  %532 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %533 = fmul double %531, %532
  %534 = fsub double %529, %533
  %535 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %523
  store double %534, double* %535, align 8
  %536 = add i64 %295, 18
  %537 = add i64 %298, 18
  %538 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %537
  %539 = load double* %538, align 8
  %540 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %541 = fmul double %539, %540
  %542 = fsub double -0.000000e+00, %541
  %543 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %537
  %544 = load double* %543, align 8
  %545 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %546 = fmul double %544, %545
  %547 = fsub double %542, %546
  %548 = fmul double %545, %291
  %549 = fsub double %547, %548
  %550 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %536
  store double %549, double* %550, align 8
  %551 = add i64 %295, 23
  %552 = add i64 %298, 23
  %553 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %552
  %554 = load double* %553, align 8
  %555 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %556 = fmul double %554, %555
  %557 = fsub double -0.000000e+00, %556
  %558 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %552
  %559 = load double* %558, align 8
  %560 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %561 = fmul double %559, %560
  %562 = fsub double %557, %561
  %563 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %551
  store double %562, double* %563, align 8
  %564 = add i64 %295, 4
  %565 = add i64 %298, 4
  %566 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %565
  %567 = load double* %566, align 8
  %568 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %569 = fmul double %567, %568
  %570 = fsub double -0.000000e+00, %569
  %571 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %565
  %572 = load double* %571, align 8
  %573 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %574 = fmul double %572, %573
  %575 = fsub double %570, %574
  %576 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %564
  store double %575, double* %576, align 8
  %577 = add i64 %295, 9
  %578 = add i64 %298, 9
  %579 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %578
  %580 = load double* %579, align 8
  %581 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %582 = fmul double %580, %581
  %583 = fsub double -0.000000e+00, %582
  %584 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %578
  %585 = load double* %584, align 8
  %586 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %587 = fmul double %585, %586
  %588 = fsub double %583, %587
  %589 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %577
  store double %588, double* %589, align 8
  %590 = add i64 %295, 14
  %591 = add i64 %298, 14
  %592 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %591
  %593 = load double* %592, align 8
  %594 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %595 = fmul double %593, %594
  %596 = fsub double -0.000000e+00, %595
  %597 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %591
  %598 = load double* %597, align 8
  %599 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %600 = fmul double %598, %599
  %601 = fsub double %596, %600
  %602 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %590
  store double %601, double* %602, align 8
  %603 = add i64 %295, 19
  %604 = add i64 %298, 19
  %605 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %604
  %606 = load double* %605, align 8
  %607 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %608 = fmul double %606, %607
  %609 = fsub double -0.000000e+00, %608
  %610 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %604
  %611 = load double* %610, align 8
  %612 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %613 = fmul double %611, %612
  %614 = fsub double %609, %613
  %615 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %603
  store double %614, double* %615, align 8
  %616 = add i64 %295, 24
  %617 = add i64 %298, 24
  %618 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %617
  %619 = load double* %618, align 8
  %620 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %621 = fmul double %619, %620
  %622 = fsub double -0.000000e+00, %621
  %623 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %617
  %624 = load double* %623, align 8
  %625 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %626 = fmul double %624, %625
  %627 = fsub double %622, %626
  %628 = fmul double %625, %292
  %629 = fsub double %627, %628
  %630 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %616
  store double %629, double* %630, align 8
  %631 = add i64 %295, 25
  %632 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %633 = fmul double %632, 2.000000e+00
  %634 = mul i64 %294, 25
  %635 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %634
  %636 = load double* %635, align 8
  %637 = fmul double %633, %636
  %638 = fadd double %637, 1.000000e+00
  %639 = fmul double %633, %288
  %640 = fadd double %638, %639
  %641 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %631
  store double %640, double* %641, align 8
  %642 = add i64 %295, 30
  %643 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %644 = fmul double %643, 2.000000e+00
  %645 = add i64 %634, 5
  %646 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %645
  %647 = load double* %646, align 8
  %648 = fmul double %644, %647
  %649 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %642
  store double %648, double* %649, align 8
  %650 = add i64 %295, 35
  %651 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %652 = fmul double %651, 2.000000e+00
  %653 = add i64 %634, 10
  %654 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %653
  %655 = load double* %654, align 8
  %656 = fmul double %652, %655
  %657 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %650
  store double %656, double* %657, align 8
  %658 = add i64 %295, 40
  %659 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %660 = fmul double %659, 2.000000e+00
  %661 = add i64 %634, 15
  %662 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %661
  %663 = load double* %662, align 8
  %664 = fmul double %660, %663
  %665 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %658
  store double %664, double* %665, align 8
  %666 = add i64 %295, 45
  %667 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %668 = fmul double %667, 2.000000e+00
  %669 = add i64 %634, 20
  %670 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %669
  %671 = load double* %670, align 8
  %672 = fmul double %668, %671
  %673 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %666
  store double %672, double* %673, align 8
  %674 = add i64 %295, 26
  %675 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %676 = fmul double %675, 2.000000e+00
  %677 = add i64 %634, 1
  %678 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %677
  %679 = load double* %678, align 8
  %680 = fmul double %676, %679
  %681 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %674
  store double %680, double* %681, align 8
  %682 = add i64 %295, 31
  %683 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %684 = fmul double %683, 2.000000e+00
  %685 = add i64 %634, 6
  %686 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %685
  %687 = load double* %686, align 8
  %688 = fmul double %684, %687
  %689 = fadd double %688, 1.000000e+00
  %690 = fmul double %684, %289
  %691 = fadd double %689, %690
  %692 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %682
  store double %691, double* %692, align 8
  %693 = add i64 %295, 36
  %694 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %695 = fmul double %694, 2.000000e+00
  %696 = add i64 %634, 11
  %697 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %696
  %698 = load double* %697, align 8
  %699 = fmul double %695, %698
  %700 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %693
  store double %699, double* %700, align 8
  %701 = add i64 %295, 41
  %702 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %703 = fmul double %702, 2.000000e+00
  %704 = add i64 %634, 16
  %705 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %704
  %706 = load double* %705, align 8
  %707 = fmul double %703, %706
  %708 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %701
  store double %707, double* %708, align 8
  %709 = add i64 %295, 46
  %710 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %711 = fmul double %710, 2.000000e+00
  %712 = add i64 %634, 21
  %713 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %712
  %714 = load double* %713, align 8
  %715 = fmul double %711, %714
  %716 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %709
  store double %715, double* %716, align 8
  %717 = add i64 %295, 27
  %718 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %719 = fmul double %718, 2.000000e+00
  %720 = add i64 %634, 2
  %721 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %720
  %722 = load double* %721, align 8
  %723 = fmul double %719, %722
  %724 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %717
  store double %723, double* %724, align 8
  %725 = add i64 %295, 32
  %726 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %727 = fmul double %726, 2.000000e+00
  %728 = add i64 %634, 7
  %729 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %728
  %730 = load double* %729, align 8
  %731 = fmul double %727, %730
  %732 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %725
  store double %731, double* %732, align 8
  %733 = add i64 %295, 37
  %734 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %735 = fmul double %734, 2.000000e+00
  %736 = add i64 %634, 12
  %737 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %736
  %738 = load double* %737, align 8
  %739 = fmul double %735, %738
  %740 = fadd double %739, 1.000000e+00
  %741 = fmul double %735, %290
  %742 = fadd double %740, %741
  %743 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %733
  store double %742, double* %743, align 8
  %744 = add i64 %295, 42
  %745 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %746 = fmul double %745, 2.000000e+00
  %747 = add i64 %634, 17
  %748 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %747
  %749 = load double* %748, align 8
  %750 = fmul double %746, %749
  %751 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %744
  store double %750, double* %751, align 8
  %752 = add i64 %295, 47
  %753 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %754 = fmul double %753, 2.000000e+00
  %755 = add i64 %634, 22
  %756 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %755
  %757 = load double* %756, align 8
  %758 = fmul double %754, %757
  %759 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %752
  store double %758, double* %759, align 8
  %760 = add i64 %295, 28
  %761 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %762 = fmul double %761, 2.000000e+00
  %763 = add i64 %634, 3
  %764 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %763
  %765 = load double* %764, align 8
  %766 = fmul double %762, %765
  %767 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %760
  store double %766, double* %767, align 8
  %768 = add i64 %295, 33
  %769 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %770 = fmul double %769, 2.000000e+00
  %771 = add i64 %634, 8
  %772 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %771
  %773 = load double* %772, align 8
  %774 = fmul double %770, %773
  %775 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %768
  store double %774, double* %775, align 8
  %776 = add i64 %295, 38
  %777 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %778 = fmul double %777, 2.000000e+00
  %779 = add i64 %634, 13
  %780 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %779
  %781 = load double* %780, align 8
  %782 = fmul double %778, %781
  %783 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %776
  store double %782, double* %783, align 8
  %784 = add i64 %295, 43
  %785 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %786 = fmul double %785, 2.000000e+00
  %787 = add i64 %634, 18
  %788 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %787
  %789 = load double* %788, align 8
  %790 = fmul double %786, %789
  %791 = fadd double %790, 1.000000e+00
  %792 = fmul double %786, %291
  %793 = fadd double %791, %792
  %794 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %784
  store double %793, double* %794, align 8
  %795 = add i64 %295, 48
  %796 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %797 = fmul double %796, 2.000000e+00
  %798 = add i64 %634, 23
  %799 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %798
  %800 = load double* %799, align 8
  %801 = fmul double %797, %800
  %802 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %795
  store double %801, double* %802, align 8
  %803 = add i64 %295, 29
  %804 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %805 = fmul double %804, 2.000000e+00
  %806 = add i64 %634, 4
  %807 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %806
  %808 = load double* %807, align 8
  %809 = fmul double %805, %808
  %810 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %803
  store double %809, double* %810, align 8
  %811 = add i64 %295, 34
  %812 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %813 = fmul double %812, 2.000000e+00
  %814 = add i64 %634, 9
  %815 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %814
  %816 = load double* %815, align 8
  %817 = fmul double %813, %816
  %818 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %811
  store double %817, double* %818, align 8
  %819 = add i64 %295, 39
  %820 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %821 = fmul double %820, 2.000000e+00
  %822 = add i64 %634, 14
  %823 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %822
  %824 = load double* %823, align 8
  %825 = fmul double %821, %824
  %826 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %819
  store double %825, double* %826, align 8
  %827 = add i64 %295, 44
  %828 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %829 = fmul double %828, 2.000000e+00
  %830 = add i64 %634, 19
  %831 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %830
  %832 = load double* %831, align 8
  %833 = fmul double %829, %832
  %834 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %827
  store double %833, double* %834, align 8
  %835 = add i64 %295, 49
  %836 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %837 = fmul double %836, 2.000000e+00
  %838 = add i64 %634, 24
  %839 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %838
  %840 = load double* %839, align 8
  %841 = fmul double %837, %840
  %842 = fadd double %841, 1.000000e+00
  %843 = fmul double %837, %292
  %844 = fadd double %842, %843
  %845 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %835
  store double %844, double* %845, align 8
  %846 = add i64 %295, 50
  %847 = add i32 %293, 1
  %848 = sext i32 %847 to i64
  %849 = mul i64 %848, 25
  %850 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %849
  %851 = load double* %850, align 8
  %852 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %853 = fmul double %851, %852
  %854 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %849
  %855 = load double* %854, align 8
  %856 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %857 = fmul double %855, %856
  %858 = fsub double %853, %857
  %859 = fmul double %856, %288
  %860 = fsub double %858, %859
  %861 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %846
  store double %860, double* %861, align 8
  %862 = add i64 %295, 55
  %863 = add i64 %849, 5
  %864 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %863
  %865 = load double* %864, align 8
  %866 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %867 = fmul double %865, %866
  %868 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %863
  %869 = load double* %868, align 8
  %870 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %871 = fmul double %869, %870
  %872 = fsub double %867, %871
  %873 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %862
  store double %872, double* %873, align 8
  %874 = add i64 %295, 60
  %875 = add i64 %849, 10
  %876 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %875
  %877 = load double* %876, align 8
  %878 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %879 = fmul double %877, %878
  %880 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %875
  %881 = load double* %880, align 8
  %882 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %883 = fmul double %881, %882
  %884 = fsub double %879, %883
  %885 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %874
  store double %884, double* %885, align 8
  %886 = add i64 %295, 65
  %887 = add i64 %849, 15
  %888 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %887
  %889 = load double* %888, align 8
  %890 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %891 = fmul double %889, %890
  %892 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %887
  %893 = load double* %892, align 8
  %894 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %895 = fmul double %893, %894
  %896 = fsub double %891, %895
  %897 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %886
  store double %896, double* %897, align 8
  %898 = add i64 %295, 70
  %899 = add i64 %849, 20
  %900 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %899
  %901 = load double* %900, align 8
  %902 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %903 = fmul double %901, %902
  %904 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %899
  %905 = load double* %904, align 8
  %906 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %907 = fmul double %905, %906
  %908 = fsub double %903, %907
  %909 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %898
  store double %908, double* %909, align 8
  %910 = add i64 %295, 51
  %911 = add i64 %849, 1
  %912 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %911
  %913 = load double* %912, align 8
  %914 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %915 = fmul double %913, %914
  %916 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %911
  %917 = load double* %916, align 8
  %918 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %919 = fmul double %917, %918
  %920 = fsub double %915, %919
  %921 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %910
  store double %920, double* %921, align 8
  %922 = add i64 %295, 56
  %923 = add i64 %849, 6
  %924 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %923
  %925 = load double* %924, align 8
  %926 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %927 = fmul double %925, %926
  %928 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %923
  %929 = load double* %928, align 8
  %930 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %931 = fmul double %929, %930
  %932 = fsub double %927, %931
  %933 = fmul double %930, %289
  %934 = fsub double %932, %933
  %935 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %922
  store double %934, double* %935, align 8
  %936 = add i64 %295, 61
  %937 = add i64 %849, 11
  %938 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %937
  %939 = load double* %938, align 8
  %940 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %941 = fmul double %939, %940
  %942 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %937
  %943 = load double* %942, align 8
  %944 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %945 = fmul double %943, %944
  %946 = fsub double %941, %945
  %947 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %936
  store double %946, double* %947, align 8
  %948 = add i64 %295, 66
  %949 = add i64 %849, 16
  %950 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %949
  %951 = load double* %950, align 8
  %952 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %953 = fmul double %951, %952
  %954 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %949
  %955 = load double* %954, align 8
  %956 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %957 = fmul double %955, %956
  %958 = fsub double %953, %957
  %959 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %948
  store double %958, double* %959, align 8
  %960 = add i64 %295, 71
  %961 = add i64 %849, 21
  %962 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %961
  %963 = load double* %962, align 8
  %964 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %965 = fmul double %963, %964
  %966 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %961
  %967 = load double* %966, align 8
  %968 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %969 = fmul double %967, %968
  %970 = fsub double %965, %969
  %971 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %960
  store double %970, double* %971, align 8
  %972 = add i64 %295, 52
  %973 = add i64 %849, 2
  %974 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %973
  %975 = load double* %974, align 8
  %976 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %977 = fmul double %975, %976
  %978 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %973
  %979 = load double* %978, align 8
  %980 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %981 = fmul double %979, %980
  %982 = fsub double %977, %981
  %983 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %972
  store double %982, double* %983, align 8
  %984 = add i64 %295, 57
  %985 = add i64 %849, 7
  %986 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %985
  %987 = load double* %986, align 8
  %988 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %989 = fmul double %987, %988
  %990 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %985
  %991 = load double* %990, align 8
  %992 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %993 = fmul double %991, %992
  %994 = fsub double %989, %993
  %995 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %984
  store double %994, double* %995, align 8
  %996 = add i64 %295, 62
  %997 = add i64 %849, 12
  %998 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %997
  %999 = load double* %998, align 8
  %1000 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1001 = fmul double %999, %1000
  %1002 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %997
  %1003 = load double* %1002, align 8
  %1004 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1005 = fmul double %1003, %1004
  %1006 = fsub double %1001, %1005
  %1007 = fmul double %1004, %290
  %1008 = fsub double %1006, %1007
  %1009 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %996
  store double %1008, double* %1009, align 8
  %1010 = add i64 %295, 67
  %1011 = add i64 %849, 17
  %1012 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1011
  %1013 = load double* %1012, align 8
  %1014 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1015 = fmul double %1013, %1014
  %1016 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1011
  %1017 = load double* %1016, align 8
  %1018 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1019 = fmul double %1017, %1018
  %1020 = fsub double %1015, %1019
  %1021 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1010
  store double %1020, double* %1021, align 8
  %1022 = add i64 %295, 72
  %1023 = add i64 %849, 22
  %1024 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1023
  %1025 = load double* %1024, align 8
  %1026 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1027 = fmul double %1025, %1026
  %1028 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1023
  %1029 = load double* %1028, align 8
  %1030 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1031 = fmul double %1029, %1030
  %1032 = fsub double %1027, %1031
  %1033 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1022
  store double %1032, double* %1033, align 8
  %1034 = add i64 %295, 53
  %1035 = add i64 %849, 3
  %1036 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1035
  %1037 = load double* %1036, align 8
  %1038 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1039 = fmul double %1037, %1038
  %1040 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1035
  %1041 = load double* %1040, align 8
  %1042 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1043 = fmul double %1041, %1042
  %1044 = fsub double %1039, %1043
  %1045 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1034
  store double %1044, double* %1045, align 8
  %1046 = add i64 %295, 58
  %1047 = add i64 %849, 8
  %1048 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1047
  %1049 = load double* %1048, align 8
  %1050 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1051 = fmul double %1049, %1050
  %1052 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1047
  %1053 = load double* %1052, align 8
  %1054 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1055 = fmul double %1053, %1054
  %1056 = fsub double %1051, %1055
  %1057 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1046
  store double %1056, double* %1057, align 8
  %1058 = add i64 %295, 63
  %1059 = add i64 %849, 13
  %1060 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1059
  %1061 = load double* %1060, align 8
  %1062 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1063 = fmul double %1061, %1062
  %1064 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1059
  %1065 = load double* %1064, align 8
  %1066 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1067 = fmul double %1065, %1066
  %1068 = fsub double %1063, %1067
  %1069 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1058
  store double %1068, double* %1069, align 8
  %1070 = add i64 %295, 68
  %1071 = add i64 %849, 18
  %1072 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1071
  %1073 = load double* %1072, align 8
  %1074 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1075 = fmul double %1073, %1074
  %1076 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1071
  %1077 = load double* %1076, align 8
  %1078 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1079 = fmul double %1077, %1078
  %1080 = fsub double %1075, %1079
  %1081 = fmul double %1078, %291
  %1082 = fsub double %1080, %1081
  %1083 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1070
  store double %1082, double* %1083, align 8
  %1084 = add i64 %295, 73
  %1085 = add i64 %849, 23
  %1086 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1085
  %1087 = load double* %1086, align 8
  %1088 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1089 = fmul double %1087, %1088
  %1090 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1085
  %1091 = load double* %1090, align 8
  %1092 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1093 = fmul double %1091, %1092
  %1094 = fsub double %1089, %1093
  %1095 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1084
  store double %1094, double* %1095, align 8
  %1096 = add i64 %295, 54
  %1097 = add i64 %849, 4
  %1098 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1097
  %1099 = load double* %1098, align 8
  %1100 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1101 = fmul double %1099, %1100
  %1102 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1097
  %1103 = load double* %1102, align 8
  %1104 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1105 = fmul double %1103, %1104
  %1106 = fsub double %1101, %1105
  %1107 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1096
  store double %1106, double* %1107, align 8
  %1108 = add i64 %295, 59
  %1109 = add i64 %849, 9
  %1110 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1109
  %1111 = load double* %1110, align 8
  %1112 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1113 = fmul double %1111, %1112
  %1114 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1109
  %1115 = load double* %1114, align 8
  %1116 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1117 = fmul double %1115, %1116
  %1118 = fsub double %1113, %1117
  %1119 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1108
  store double %1118, double* %1119, align 8
  %1120 = add i64 %295, 64
  %1121 = add i64 %849, 14
  %1122 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1121
  %1123 = load double* %1122, align 8
  %1124 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1125 = fmul double %1123, %1124
  %1126 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1121
  %1127 = load double* %1126, align 8
  %1128 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1129 = fmul double %1127, %1128
  %1130 = fsub double %1125, %1129
  %1131 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1120
  store double %1130, double* %1131, align 8
  %1132 = add i64 %295, 69
  %1133 = add i64 %849, 19
  %1134 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1133
  %1135 = load double* %1134, align 8
  %1136 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1137 = fmul double %1135, %1136
  %1138 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1133
  %1139 = load double* %1138, align 8
  %1140 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1141 = fmul double %1139, %1140
  %1142 = fsub double %1137, %1141
  %1143 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1132
  store double %1142, double* %1143, align 8
  %1144 = add i64 %295, 74
  %1145 = add i64 %849, 24
  %1146 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1145
  %1147 = load double* %1146, align 8
  %1148 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1149 = fmul double %1147, %1148
  %1150 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1145
  %1151 = load double* %1150, align 8
  %1152 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1153 = fmul double %1151, %1152
  %1154 = fsub double %1149, %1153
  %1155 = fmul double %1152, %292
  %1156 = fsub double %1154, %1155
  %1157 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1144
  store double %1156, double* %1157, align 8
  %1158 = icmp eq i32 %293, %281
  br i1 %1158, label %"10", label %"9"

"10":                                             ; preds = %"9", %"8"
  %1159 = sext i32 %16 to i64
  %1160 = mul i64 %1159, 325
  %1161 = add i64 %1160, %12
  %1162 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1161
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 25), double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 50), double* %1162) #1
  %1163 = load i32* %isize, align 4
  %1164 = add i32 %1163, -1
  %1165 = icmp sgt i32 %1164, 0
  br i1 %1165, label %"11", label %"12"

"11":                                             ; preds = %"10", %"11"
  %1166 = phi i32 [ %1186, %"11" ], [ 1, %"10" ]
  %1167 = sext i32 %1166 to i64
  %1168 = mul i64 %1167, 5
  %1169 = add i64 %1168, %1161
  %1170 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1169
  %1171 = add i32 %1166, -1
  %1172 = sext i32 %1171 to i64
  %1173 = mul i64 %1172, 5
  %1174 = add i64 %1173, %1161
  %1175 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1174
  %1176 = mul i64 %1167, 75
  %1177 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1176
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1177, double* %1175, double* %1170) #1
  %1178 = add i64 %1176, 25
  %1179 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1178
  %1180 = mul i64 %1172, 75
  %1181 = add i64 %1180, 50
  %1182 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1181
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1177, double* %1182, double* %1179) #1
  %1183 = add i64 %1176, 50
  %1184 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1183
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* %1179, double* %1184, double* %1170) #1
  %1185 = icmp eq i32 %1166, %1164
  %1186 = add i32 %1166, 1
  br i1 %1185, label %"12", label %"11"

"12":                                             ; preds = %"11", %"10"
  %1187 = load i32* %isize, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = mul i64 %1188, 5
  %1190 = add i64 %1189, %1161
  %1191 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1190
  %1192 = add i32 %1187, -1
  %1193 = sext i32 %1192 to i64
  %1194 = mul i64 %1193, 5
  %1195 = add i64 %1194, %1161
  %1196 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1195
  %1197 = mul i64 %1188, 75
  %1198 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1197
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1198, double* %1196, double* %1191) #1
  %1199 = load i32* %isize, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = mul i64 %1200, 75
  %1202 = add i64 %1201, 25
  %1203 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1202
  %1204 = add i32 %1199, -1
  %1205 = sext i32 %1204 to i64
  %1206 = mul i64 %1205, 75
  %1207 = add i64 %1206, 50
  %1208 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1207
  %1209 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1201
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1209, double* %1208, double* %1203) #1
  %1210 = load i32* %isize, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = mul i64 %1211, 5
  %1213 = add i64 %1212, %1161
  %1214 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1213
  %1215 = mul i64 %1211, 75
  %1216 = add i64 %1215, 25
  %1217 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1216
  call void bitcast (void (...)* @binvrhs_ to void (double*, double*)*)(double* %1217, double* %1214) #1
  %1218 = load i32* %isize, align 4
  %1219 = add i32 %1218, -1
  %1220 = icmp sgt i32 %1219, -1
  br i1 %1220, label %"13.preheader", label %"18"

"13.preheader":                                   ; preds = %"12"
  %1221 = add i64 %1161, -1
  %1222 = add i64 %1161, -1
  br label %"13"

"13":                                             ; preds = %"13.preheader", %"17"
  %1223 = phi i32 [ %1247, %"17" ], [ %1219, %"13.preheader" ]
  %1224 = sext i32 %1223 to i64
  %1225 = mul i64 %1224, 5
  %1226 = add i64 %1221, %1225
  %1227 = mul i64 %1224, 75
  %1228 = add i64 %1227, 44
  %1229 = add i32 %1223, 1
  %1230 = sext i32 %1229 to i64
  %1231 = mul i64 %1230, 5
  %1232 = add i64 %1222, %1231
  br label %"14"

"14":                                             ; preds = %"13", %"16"
  %indvars.iv1 = phi i64 [ 1, %"13" ], [ %indvars.iv.next2, %"16" ]
  %1233 = add i64 %1226, %indvars.iv1
  %1234 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1233
  %1235 = add i64 %1228, %indvars.iv1
  br label %"15"

"15":                                             ; preds = %"14", %"15"
  %indvars.iv = phi i64 [ 1, %"14" ], [ %indvars.iv.next, %"15" ]
  %1236 = load double* %1234, align 8
  %1237 = mul i64 %indvars.iv, 5
  %1238 = add i64 %1235, %1237
  %1239 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1238
  %1240 = load double* %1239, align 8
  %1241 = add i64 %1232, %indvars.iv
  %1242 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1241
  %1243 = load double* %1242, align 8
  %1244 = fmul double %1240, %1243
  %1245 = fsub double %1236, %1244
  store double %1245, double* %1234, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %"16", label %"15"

"16":                                             ; preds = %"15"
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  %exitcond3 = icmp eq i64 %indvars.iv.next2, 6
  br i1 %exitcond3, label %"17", label %"14"

"17":                                             ; preds = %"16"
  %1246 = icmp eq i32 %1223, 0
  %1247 = add i32 %1223, -1
  br i1 %1246, label %"18", label %"13"

"18":                                             ; preds = %"17", %"12"
  %1248 = icmp eq i32 %16, %9
  %1249 = add i32 %16, 1
  br i1 %1248, label %"19", label %"6"

"19":                                             ; preds = %"18", %"5"
  %1250 = icmp eq i32 %7, %5
  %1251 = add i32 %7, 1
  br i1 %1250, label %"20", label %"5"

"20":                                             ; preds = %"19", %"4"
  %1252 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %"22", label %"21"

"21":                                             ; preds = %"20"
  call void bitcast (void (...)* @timer_stop_ to void (i32*)*)(i32* @1) #1
  br label %"22"

"22":                                             ; preds = %"20", %"21"
  %1254 = bitcast i32* %isize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1254)
  ret void
}

declare void @timer_start_(...)

declare void @lhsinit_(...)

declare void @binvcrhs_(...)

declare void @matvec_sub_(...)

declare void @matmul_sub_(...)

declare void @binvrhs_(...)

declare void @timer_stop_(...)

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }

!0 = metadata !{i32 0, i32 2}
