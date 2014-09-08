; ModuleID = 'y_solve.f'
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
@0 = internal constant i32 7
@1 = internal constant i32 7

; Function Attrs: nounwind uwtable
define void @y_solve_() unnamed_addr #0 {
entry:
  %jsize = alloca i32, align 4
  %0 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %"4", label %"3"

"3":                                              ; preds = %entry
  call void bitcast (void (...)* @timer_start_ to void (i32*)*)(i32* @0) #1
  br label %"4"

"4":                                              ; preds = %entry, %"3"
  %2 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %3 = add i32 %2, -1
  store i32 %3, i32* %jsize, align 4
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %5 = add i32 %4, -2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %"5", label %"20"

"5":                                              ; preds = %"4", %"19"
  %7 = phi i32 [ %1257, %"19" ], [ 1, %"4" ]
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %9 = add i32 %8, -2
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %"6.preheader", label %"19"

"6.preheader":                                    ; preds = %"5"
  %11 = sext i32 %7 to i64
  %12 = mul i64 %11, 21125
  %13 = add i64 %12, -1
  %14 = add i64 %12, -1
  %15 = sext i32 %7 to i64
  %16 = mul i64 %15, 4225
  %17 = mul i64 %15, 21125
  br label %"6"

"6":                                              ; preds = %"6.preheader", %"18"
  %18 = phi i32 [ %1255, %"18" ], [ 1, %"6.preheader" ]
  %19 = load i32* %jsize, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %"7.preheader", label %"8"

"7.preheader":                                    ; preds = %"6"
  %21 = sext i32 %18 to i64
  %22 = add i64 %21, %16
  %23 = mul i64 %21, 5
  %24 = add i64 %23, %17
  %25 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 69), align 8
  %26 = fsub double 2.000000e+00, %25
  %27 = fmul double %25, 2.000000e+00
  %28 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  %29 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %30 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %31 = fmul double %30, %29
  %32 = fmul double %30, %29
  %33 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %34 = fsub double %29, %33
  %35 = fmul double %29, %30
  %36 = fsub double %35, %33
  %37 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %38 = fsub double %37, %33
  %39 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %40 = fmul double %39, %37
  %41 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %42 = fsub double %40, %41
  %43 = fsub double %37, %41
  br label %"7"

"7":                                              ; preds = %"7.preheader", %"7"
  %44 = phi i32 [ %280, %"7" ], [ 0, %"7.preheader" ]
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 65
  %47 = add i64 %22, %46
  %48 = getelementptr %1* @fields_, i64 0, i32 5, i64 %47
  %49 = load double* %48, align 8
  store double %49, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %50 = fmul double %49, %49
  store double %50, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %51 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %52 = fmul double %51, %50
  store double %52, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %53 = mul i64 %45, 25
  %54 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %53
  store double 0.000000e+00, double* %54, align 8
  %55 = add i64 %53, 5
  %56 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %55
  store double 0.000000e+00, double* %56, align 8
  %57 = add i64 %53, 10
  %58 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %57
  store double 1.000000e+00, double* %58, align 8
  %59 = add i64 %53, 15
  %60 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %59
  store double 0.000000e+00, double* %60, align 8
  %61 = add i64 %53, 20
  %62 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %61
  store double 0.000000e+00, double* %62, align 8
  %63 = add i64 %53, 1
  %64 = mul i64 %45, 325
  %65 = add i64 %24, %64
  %66 = add i64 %65, 1
  %67 = getelementptr %1* @fields_, i64 0, i32 0, i64 %66
  %68 = load double* %67, align 8
  %69 = add i64 %65, 2
  %70 = getelementptr %1* @fields_, i64 0, i32 0, i64 %69
  %71 = load double* %70, align 8
  %72 = fmul double %68, %71
  %73 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %74 = fmul double %72, %73
  %75 = fsub double -0.000000e+00, %74
  %76 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %63
  store double %75, double* %76, align 8
  %77 = add i64 %53, 6
  %78 = load double* %70, align 8
  %79 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %80 = fmul double %78, %79
  %81 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %77
  store double %80, double* %81, align 8
  %82 = add i64 %53, 11
  %83 = load double* %67, align 8
  %84 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %85 = fmul double %83, %84
  %86 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %82
  store double %85, double* %86, align 8
  %87 = add i64 %53, 16
  %88 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %87
  store double 0.000000e+00, double* %88, align 8
  %89 = add i64 %53, 21
  %90 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %89
  store double 0.000000e+00, double* %90, align 8
  %91 = add i64 %53, 2
  %92 = getelementptr %1* @fields_, i64 0, i32 4, i64 %47
  %93 = load double* %92, align 8
  %94 = fmul double %93, %25
  %95 = load double* %70, align 8
  %96 = fmul double %95, %95
  %97 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %98 = fmul double %96, %97
  %99 = fsub double %94, %98
  %100 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %91
  store double %99, double* %100, align 8
  %101 = add i64 %53, 7
  %102 = load double* %67, align 8
  %103 = fmul double %102, %25
  %104 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %105 = fmul double %103, %104
  %106 = fsub double -0.000000e+00, %105
  %107 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %101
  store double %106, double* %107, align 8
  %108 = add i64 %53, 12
  %109 = load double* %70, align 8
  %110 = fmul double %26, %109
  %111 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %112 = fmul double %110, %111
  %113 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %108
  store double %112, double* %113, align 8
  %114 = add i64 %53, 17
  %115 = add i64 %65, 3
  %116 = getelementptr %1* @fields_, i64 0, i32 0, i64 %115
  %117 = load double* %116, align 8
  %118 = fmul double %117, %25
  %119 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %120 = fmul double %118, %119
  %121 = fsub double -0.000000e+00, %120
  %122 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %114
  store double %121, double* %122, align 8
  %123 = add i64 %53, 22
  %124 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %123
  store double %25, double* %124, align 8
  %125 = add i64 %53, 3
  %126 = load double* %70, align 8
  %127 = load double* %116, align 8
  %128 = fmul double %126, %127
  %129 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %130 = fmul double %128, %129
  %131 = fsub double -0.000000e+00, %130
  %132 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %125
  store double %131, double* %132, align 8
  %133 = add i64 %53, 8
  %134 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %133
  store double 0.000000e+00, double* %134, align 8
  %135 = add i64 %53, 13
  %136 = load double* %116, align 8
  %137 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %138 = fmul double %136, %137
  %139 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %135
  store double %138, double* %139, align 8
  %140 = add i64 %53, 18
  %141 = load double* %70, align 8
  %142 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %143 = fmul double %141, %142
  %144 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %140
  store double %143, double* %144, align 8
  %145 = add i64 %53, 23
  %146 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %145
  store double 0.000000e+00, double* %146, align 8
  %147 = add i64 %53, 4
  %148 = getelementptr %1* @fields_, i64 0, i32 6, i64 %47
  %149 = load double* %148, align 8
  %150 = fmul double %27, %149
  %151 = add i64 %65, 4
  %152 = getelementptr %1* @fields_, i64 0, i32 0, i64 %151
  %153 = load double* %152, align 8
  %154 = fmul double %153, %28
  %155 = fsub double %150, %154
  %156 = load double* %70, align 8
  %157 = fmul double %156, %155
  %158 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %159 = fmul double %158, %157
  %160 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %147
  store double %159, double* %160, align 8
  %161 = add i64 %53, 9
  %162 = load double* %67, align 8
  %163 = fmul double %162, %25
  %164 = load double* %70, align 8
  %165 = fmul double %163, %164
  %166 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %167 = fmul double %165, %166
  %168 = fsub double -0.000000e+00, %167
  %169 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %161
  store double %168, double* %169, align 8
  %170 = add i64 %53, 14
  %171 = load double* %152, align 8
  %172 = fmul double %171, %28
  %173 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %174 = fmul double %172, %173
  %175 = load double* %92, align 8
  %176 = load double* %70, align 8
  %177 = fmul double %176, %176
  %178 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %179 = fmul double %177, %178
  %180 = fadd double %175, %179
  %181 = fmul double %25, %180
  %182 = fsub double %174, %181
  %183 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %170
  store double %182, double* %183, align 8
  %184 = add i64 %53, 19
  %185 = load double* %70, align 8
  %186 = load double* %116, align 8
  %187 = fmul double %185, %186
  %188 = fmul double %187, %25
  %189 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %190 = fmul double %188, %189
  %191 = fsub double -0.000000e+00, %190
  %192 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %184
  store double %191, double* %192, align 8
  %193 = add i64 %53, 24
  %194 = load double* %70, align 8
  %195 = fmul double %194, %28
  %196 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %197 = fmul double %195, %196
  %198 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %193
  store double %197, double* %198, align 8
  %199 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %53
  store double 0.000000e+00, double* %199, align 8
  %200 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %55
  store double 0.000000e+00, double* %200, align 8
  %201 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %57
  store double 0.000000e+00, double* %201, align 8
  %202 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %59
  store double 0.000000e+00, double* %202, align 8
  %203 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %61
  store double 0.000000e+00, double* %203, align 8
  %204 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %205 = fmul double %29, %204
  %206 = load double* %67, align 8
  %207 = fmul double %205, %206
  %208 = fsub double -0.000000e+00, %207
  %209 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %63
  store double %208, double* %209, align 8
  %210 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %211 = fmul double %29, %210
  %212 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %77
  store double %211, double* %212, align 8
  %213 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %82
  store double 0.000000e+00, double* %213, align 8
  %214 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %87
  store double 0.000000e+00, double* %214, align 8
  %215 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %89
  store double 0.000000e+00, double* %215, align 8
  %216 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %217 = fmul double %31, %216
  %218 = load double* %70, align 8
  %219 = fmul double %217, %218
  %220 = fsub double -0.000000e+00, %219
  %221 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %91
  store double %220, double* %221, align 8
  %222 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %101
  store double 0.000000e+00, double* %222, align 8
  %223 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %224 = fmul double %32, %223
  %225 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %108
  store double %224, double* %225, align 8
  %226 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %114
  store double 0.000000e+00, double* %226, align 8
  %227 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %123
  store double 0.000000e+00, double* %227, align 8
  %228 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %229 = fmul double %29, %228
  %230 = load double* %116, align 8
  %231 = fmul double %229, %230
  %232 = fsub double -0.000000e+00, %231
  %233 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %125
  store double %232, double* %233, align 8
  %234 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %133
  store double 0.000000e+00, double* %234, align 8
  %235 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %135
  store double 0.000000e+00, double* %235, align 8
  %236 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %237 = fmul double %29, %236
  %238 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %140
  store double %237, double* %238, align 8
  %239 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %145
  store double 0.000000e+00, double* %239, align 8
  %240 = load double* %67, align 8
  %241 = fmul double %240, %240
  %242 = load double* %70, align 8
  %243 = fmul double %242, %242
  %244 = load double* %116, align 8
  %245 = fmul double %244, %244
  %246 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %247 = fmul double %34, %246
  %248 = fmul double %241, %247
  %249 = fsub double -0.000000e+00, %248
  %250 = fmul double %246, %36
  %251 = fmul double %243, %250
  %252 = fsub double %249, %251
  %253 = fmul double %245, %247
  %254 = fsub double %252, %253
  %255 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %256 = fmul double %33, %255
  %257 = load double* %152, align 8
  %258 = fmul double %256, %257
  %259 = fsub double %254, %258
  %260 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %147
  store double %259, double* %260, align 8
  %261 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %262 = fmul double %38, %261
  %263 = load double* %67, align 8
  %264 = fmul double %262, %263
  %265 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %161
  store double %264, double* %265, align 8
  %266 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %267 = fmul double %42, %266
  %268 = load double* %70, align 8
  %269 = fmul double %267, %268
  %270 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %170
  store double %269, double* %270, align 8
  %271 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %272 = fmul double %43, %271
  %273 = load double* %116, align 8
  %274 = fmul double %272, %273
  %275 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %184
  store double %274, double* %275, align 8
  %276 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %277 = fmul double %41, %276
  %278 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %193
  store double %277, double* %278, align 8
  %279 = icmp eq i32 %44, %19
  %280 = add i32 %44, 1
  br i1 %279, label %"8", label %"7"

"8":                                              ; preds = %"7", %"6"
  call void bitcast (void (...)* @lhsinit_ to void ([4875 x double]*, i32*)*)([4875 x double]* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2), i32* %jsize) #1
  %281 = load i32* %jsize, align 4
  %282 = add i32 %281, -1
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %"9.preheader", label %"10"

"9.preheader":                                    ; preds = %"8"
  %284 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %285 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 3), align 8
  %286 = fmul double %284, %285
  %287 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 4), align 32
  %288 = fmul double %284, %287
  %289 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 14), align 16
  %290 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 15), align 8
  %291 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 16), align 32
  %292 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 17), align 8
  %293 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 18), align 16
  br label %"9"

"9":                                              ; preds = %"9.preheader", %"9"
  %294 = phi i32 [ %848, %"9" ], [ 1, %"9.preheader" ]
  store double %286, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  store double %288, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 75
  %297 = add i32 %294, -1
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 25
  %300 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %299
  %301 = load double* %300, align 8
  %302 = fmul double %301, %288
  %303 = fsub double -0.000000e+00, %302
  %304 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %299
  %305 = load double* %304, align 8
  %306 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %307 = fmul double %305, %306
  %308 = fsub double %303, %307
  %309 = fmul double %306, %289
  %310 = fsub double %308, %309
  %311 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %296
  store double %310, double* %311, align 8
  %312 = add i64 %296, 5
  %313 = add i64 %299, 5
  %314 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %313
  %315 = load double* %314, align 8
  %316 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %317 = fmul double %315, %316
  %318 = fsub double -0.000000e+00, %317
  %319 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %313
  %320 = load double* %319, align 8
  %321 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %322 = fmul double %320, %321
  %323 = fsub double %318, %322
  %324 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %312
  store double %323, double* %324, align 8
  %325 = add i64 %296, 10
  %326 = add i64 %299, 10
  %327 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %326
  %328 = load double* %327, align 8
  %329 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %330 = fmul double %328, %329
  %331 = fsub double -0.000000e+00, %330
  %332 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %326
  %333 = load double* %332, align 8
  %334 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %335 = fmul double %333, %334
  %336 = fsub double %331, %335
  %337 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %325
  store double %336, double* %337, align 8
  %338 = add i64 %296, 15
  %339 = add i64 %299, 15
  %340 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %339
  %341 = load double* %340, align 8
  %342 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %343 = fmul double %341, %342
  %344 = fsub double -0.000000e+00, %343
  %345 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %339
  %346 = load double* %345, align 8
  %347 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %348 = fmul double %346, %347
  %349 = fsub double %344, %348
  %350 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %338
  store double %349, double* %350, align 8
  %351 = add i64 %296, 20
  %352 = add i64 %299, 20
  %353 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %352
  %354 = load double* %353, align 8
  %355 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %356 = fmul double %354, %355
  %357 = fsub double -0.000000e+00, %356
  %358 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %352
  %359 = load double* %358, align 8
  %360 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %361 = fmul double %359, %360
  %362 = fsub double %357, %361
  %363 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %351
  store double %362, double* %363, align 8
  %364 = add i64 %296, 1
  %365 = add i64 %299, 1
  %366 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %365
  %367 = load double* %366, align 8
  %368 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %369 = fmul double %367, %368
  %370 = fsub double -0.000000e+00, %369
  %371 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %365
  %372 = load double* %371, align 8
  %373 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %374 = fmul double %372, %373
  %375 = fsub double %370, %374
  %376 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %364
  store double %375, double* %376, align 8
  %377 = add i64 %296, 6
  %378 = add i64 %299, 6
  %379 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %378
  %380 = load double* %379, align 8
  %381 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %382 = fmul double %380, %381
  %383 = fsub double -0.000000e+00, %382
  %384 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %378
  %385 = load double* %384, align 8
  %386 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %387 = fmul double %385, %386
  %388 = fsub double %383, %387
  %389 = fmul double %386, %290
  %390 = fsub double %388, %389
  %391 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %377
  store double %390, double* %391, align 8
  %392 = add i64 %296, 11
  %393 = add i64 %299, 11
  %394 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %393
  %395 = load double* %394, align 8
  %396 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %397 = fmul double %395, %396
  %398 = fsub double -0.000000e+00, %397
  %399 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %393
  %400 = load double* %399, align 8
  %401 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %402 = fmul double %400, %401
  %403 = fsub double %398, %402
  %404 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %392
  store double %403, double* %404, align 8
  %405 = add i64 %296, 16
  %406 = add i64 %299, 16
  %407 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %406
  %408 = load double* %407, align 8
  %409 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %410 = fmul double %408, %409
  %411 = fsub double -0.000000e+00, %410
  %412 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %406
  %413 = load double* %412, align 8
  %414 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %415 = fmul double %413, %414
  %416 = fsub double %411, %415
  %417 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %405
  store double %416, double* %417, align 8
  %418 = add i64 %296, 21
  %419 = add i64 %299, 21
  %420 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %419
  %421 = load double* %420, align 8
  %422 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %423 = fmul double %421, %422
  %424 = fsub double -0.000000e+00, %423
  %425 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %419
  %426 = load double* %425, align 8
  %427 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %428 = fmul double %426, %427
  %429 = fsub double %424, %428
  %430 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %418
  store double %429, double* %430, align 8
  %431 = add i64 %296, 2
  %432 = add i64 %299, 2
  %433 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %432
  %434 = load double* %433, align 8
  %435 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %436 = fmul double %434, %435
  %437 = fsub double -0.000000e+00, %436
  %438 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %432
  %439 = load double* %438, align 8
  %440 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %441 = fmul double %439, %440
  %442 = fsub double %437, %441
  %443 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %431
  store double %442, double* %443, align 8
  %444 = add i64 %296, 7
  %445 = add i64 %299, 7
  %446 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %445
  %447 = load double* %446, align 8
  %448 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %449 = fmul double %447, %448
  %450 = fsub double -0.000000e+00, %449
  %451 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %445
  %452 = load double* %451, align 8
  %453 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %454 = fmul double %452, %453
  %455 = fsub double %450, %454
  %456 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %444
  store double %455, double* %456, align 8
  %457 = add i64 %296, 12
  %458 = add i64 %299, 12
  %459 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %458
  %460 = load double* %459, align 8
  %461 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %462 = fmul double %460, %461
  %463 = fsub double -0.000000e+00, %462
  %464 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %458
  %465 = load double* %464, align 8
  %466 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %467 = fmul double %465, %466
  %468 = fsub double %463, %467
  %469 = fmul double %466, %291
  %470 = fsub double %468, %469
  %471 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %457
  store double %470, double* %471, align 8
  %472 = add i64 %296, 17
  %473 = add i64 %299, 17
  %474 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %473
  %475 = load double* %474, align 8
  %476 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %477 = fmul double %475, %476
  %478 = fsub double -0.000000e+00, %477
  %479 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %473
  %480 = load double* %479, align 8
  %481 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %482 = fmul double %480, %481
  %483 = fsub double %478, %482
  %484 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %472
  store double %483, double* %484, align 8
  %485 = add i64 %296, 22
  %486 = add i64 %299, 22
  %487 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %486
  %488 = load double* %487, align 8
  %489 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %490 = fmul double %488, %489
  %491 = fsub double -0.000000e+00, %490
  %492 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %486
  %493 = load double* %492, align 8
  %494 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %495 = fmul double %493, %494
  %496 = fsub double %491, %495
  %497 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %485
  store double %496, double* %497, align 8
  %498 = add i64 %296, 3
  %499 = add i64 %299, 3
  %500 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %499
  %501 = load double* %500, align 8
  %502 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %503 = fmul double %501, %502
  %504 = fsub double -0.000000e+00, %503
  %505 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %499
  %506 = load double* %505, align 8
  %507 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %508 = fmul double %506, %507
  %509 = fsub double %504, %508
  %510 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %498
  store double %509, double* %510, align 8
  %511 = add i64 %296, 8
  %512 = add i64 %299, 8
  %513 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %512
  %514 = load double* %513, align 8
  %515 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %516 = fmul double %514, %515
  %517 = fsub double -0.000000e+00, %516
  %518 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %512
  %519 = load double* %518, align 8
  %520 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %521 = fmul double %519, %520
  %522 = fsub double %517, %521
  %523 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %511
  store double %522, double* %523, align 8
  %524 = add i64 %296, 13
  %525 = add i64 %299, 13
  %526 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %525
  %527 = load double* %526, align 8
  %528 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %529 = fmul double %527, %528
  %530 = fsub double -0.000000e+00, %529
  %531 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %525
  %532 = load double* %531, align 8
  %533 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %534 = fmul double %532, %533
  %535 = fsub double %530, %534
  %536 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %524
  store double %535, double* %536, align 8
  %537 = add i64 %296, 18
  %538 = add i64 %299, 18
  %539 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %538
  %540 = load double* %539, align 8
  %541 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %542 = fmul double %540, %541
  %543 = fsub double -0.000000e+00, %542
  %544 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %538
  %545 = load double* %544, align 8
  %546 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %547 = fmul double %545, %546
  %548 = fsub double %543, %547
  %549 = fmul double %546, %292
  %550 = fsub double %548, %549
  %551 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %537
  store double %550, double* %551, align 8
  %552 = add i64 %296, 23
  %553 = add i64 %299, 23
  %554 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %553
  %555 = load double* %554, align 8
  %556 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %557 = fmul double %555, %556
  %558 = fsub double -0.000000e+00, %557
  %559 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %553
  %560 = load double* %559, align 8
  %561 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %562 = fmul double %560, %561
  %563 = fsub double %558, %562
  %564 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %552
  store double %563, double* %564, align 8
  %565 = add i64 %296, 4
  %566 = add i64 %299, 4
  %567 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %566
  %568 = load double* %567, align 8
  %569 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %570 = fmul double %568, %569
  %571 = fsub double -0.000000e+00, %570
  %572 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %566
  %573 = load double* %572, align 8
  %574 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %575 = fmul double %573, %574
  %576 = fsub double %571, %575
  %577 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %565
  store double %576, double* %577, align 8
  %578 = add i64 %296, 9
  %579 = add i64 %299, 9
  %580 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %579
  %581 = load double* %580, align 8
  %582 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %583 = fmul double %581, %582
  %584 = fsub double -0.000000e+00, %583
  %585 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %579
  %586 = load double* %585, align 8
  %587 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %588 = fmul double %586, %587
  %589 = fsub double %584, %588
  %590 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %578
  store double %589, double* %590, align 8
  %591 = add i64 %296, 14
  %592 = add i64 %299, 14
  %593 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %592
  %594 = load double* %593, align 8
  %595 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %596 = fmul double %594, %595
  %597 = fsub double -0.000000e+00, %596
  %598 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %592
  %599 = load double* %598, align 8
  %600 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %601 = fmul double %599, %600
  %602 = fsub double %597, %601
  %603 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %591
  store double %602, double* %603, align 8
  %604 = add i64 %296, 19
  %605 = add i64 %299, 19
  %606 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %605
  %607 = load double* %606, align 8
  %608 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %609 = fmul double %607, %608
  %610 = fsub double -0.000000e+00, %609
  %611 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %605
  %612 = load double* %611, align 8
  %613 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %614 = fmul double %612, %613
  %615 = fsub double %610, %614
  %616 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %604
  store double %615, double* %616, align 8
  %617 = add i64 %296, 24
  %618 = add i64 %299, 24
  %619 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %618
  %620 = load double* %619, align 8
  %621 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %622 = fmul double %620, %621
  %623 = fsub double -0.000000e+00, %622
  %624 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %618
  %625 = load double* %624, align 8
  %626 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %627 = fmul double %625, %626
  %628 = fsub double %623, %627
  %629 = fmul double %626, %293
  %630 = fsub double %628, %629
  %631 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %617
  store double %630, double* %631, align 8
  %632 = add i64 %296, 25
  %633 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %634 = fmul double %633, 2.000000e+00
  %635 = mul i64 %295, 25
  %636 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %635
  %637 = load double* %636, align 8
  %638 = fmul double %634, %637
  %639 = fadd double %638, 1.000000e+00
  %640 = fmul double %634, %289
  %641 = fadd double %639, %640
  %642 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %632
  store double %641, double* %642, align 8
  %643 = add i64 %296, 30
  %644 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %645 = fmul double %644, 2.000000e+00
  %646 = add i64 %635, 5
  %647 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %646
  %648 = load double* %647, align 8
  %649 = fmul double %645, %648
  %650 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %643
  store double %649, double* %650, align 8
  %651 = add i64 %296, 35
  %652 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %653 = fmul double %652, 2.000000e+00
  %654 = add i64 %635, 10
  %655 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %654
  %656 = load double* %655, align 8
  %657 = fmul double %653, %656
  %658 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %651
  store double %657, double* %658, align 8
  %659 = add i64 %296, 40
  %660 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %661 = fmul double %660, 2.000000e+00
  %662 = add i64 %635, 15
  %663 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %662
  %664 = load double* %663, align 8
  %665 = fmul double %661, %664
  %666 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %659
  store double %665, double* %666, align 8
  %667 = add i64 %296, 45
  %668 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %669 = fmul double %668, 2.000000e+00
  %670 = add i64 %635, 20
  %671 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %670
  %672 = load double* %671, align 8
  %673 = fmul double %669, %672
  %674 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %667
  store double %673, double* %674, align 8
  %675 = add i64 %296, 26
  %676 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %677 = fmul double %676, 2.000000e+00
  %678 = add i64 %635, 1
  %679 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %678
  %680 = load double* %679, align 8
  %681 = fmul double %677, %680
  %682 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %675
  store double %681, double* %682, align 8
  %683 = add i64 %296, 31
  %684 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %685 = fmul double %684, 2.000000e+00
  %686 = add i64 %635, 6
  %687 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %686
  %688 = load double* %687, align 8
  %689 = fmul double %685, %688
  %690 = fadd double %689, 1.000000e+00
  %691 = fmul double %685, %290
  %692 = fadd double %690, %691
  %693 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %683
  store double %692, double* %693, align 8
  %694 = add i64 %296, 36
  %695 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %696 = fmul double %695, 2.000000e+00
  %697 = add i64 %635, 11
  %698 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %697
  %699 = load double* %698, align 8
  %700 = fmul double %696, %699
  %701 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %694
  store double %700, double* %701, align 8
  %702 = add i64 %296, 41
  %703 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %704 = fmul double %703, 2.000000e+00
  %705 = add i64 %635, 16
  %706 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %705
  %707 = load double* %706, align 8
  %708 = fmul double %704, %707
  %709 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %702
  store double %708, double* %709, align 8
  %710 = add i64 %296, 46
  %711 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %712 = fmul double %711, 2.000000e+00
  %713 = add i64 %635, 21
  %714 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %713
  %715 = load double* %714, align 8
  %716 = fmul double %712, %715
  %717 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %710
  store double %716, double* %717, align 8
  %718 = add i64 %296, 27
  %719 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %720 = fmul double %719, 2.000000e+00
  %721 = add i64 %635, 2
  %722 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %721
  %723 = load double* %722, align 8
  %724 = fmul double %720, %723
  %725 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %718
  store double %724, double* %725, align 8
  %726 = add i64 %296, 32
  %727 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %728 = fmul double %727, 2.000000e+00
  %729 = add i64 %635, 7
  %730 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %729
  %731 = load double* %730, align 8
  %732 = fmul double %728, %731
  %733 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %726
  store double %732, double* %733, align 8
  %734 = add i64 %296, 37
  %735 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %736 = fmul double %735, 2.000000e+00
  %737 = add i64 %635, 12
  %738 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %737
  %739 = load double* %738, align 8
  %740 = fmul double %736, %739
  %741 = fadd double %740, 1.000000e+00
  %742 = fmul double %736, %291
  %743 = fadd double %741, %742
  %744 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %734
  store double %743, double* %744, align 8
  %745 = add i64 %296, 42
  %746 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %747 = fmul double %746, 2.000000e+00
  %748 = add i64 %635, 17
  %749 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %748
  %750 = load double* %749, align 8
  %751 = fmul double %747, %750
  %752 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %745
  store double %751, double* %752, align 8
  %753 = add i64 %296, 47
  %754 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %755 = fmul double %754, 2.000000e+00
  %756 = add i64 %635, 22
  %757 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %756
  %758 = load double* %757, align 8
  %759 = fmul double %755, %758
  %760 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %753
  store double %759, double* %760, align 8
  %761 = add i64 %296, 28
  %762 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %763 = fmul double %762, 2.000000e+00
  %764 = add i64 %635, 3
  %765 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %764
  %766 = load double* %765, align 8
  %767 = fmul double %763, %766
  %768 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %761
  store double %767, double* %768, align 8
  %769 = add i64 %296, 33
  %770 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %771 = fmul double %770, 2.000000e+00
  %772 = add i64 %635, 8
  %773 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %772
  %774 = load double* %773, align 8
  %775 = fmul double %771, %774
  %776 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %769
  store double %775, double* %776, align 8
  %777 = add i64 %296, 38
  %778 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %779 = fmul double %778, 2.000000e+00
  %780 = add i64 %635, 13
  %781 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %780
  %782 = load double* %781, align 8
  %783 = fmul double %779, %782
  %784 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %777
  store double %783, double* %784, align 8
  %785 = add i64 %296, 43
  %786 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %787 = fmul double %786, 2.000000e+00
  %788 = add i64 %635, 18
  %789 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %788
  %790 = load double* %789, align 8
  %791 = fmul double %787, %790
  %792 = fadd double %791, 1.000000e+00
  %793 = fmul double %787, %292
  %794 = fadd double %792, %793
  %795 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %785
  store double %794, double* %795, align 8
  %796 = add i64 %296, 48
  %797 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %798 = fmul double %797, 2.000000e+00
  %799 = add i64 %635, 23
  %800 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %799
  %801 = load double* %800, align 8
  %802 = fmul double %798, %801
  %803 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %796
  store double %802, double* %803, align 8
  %804 = add i64 %296, 29
  %805 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %806 = fmul double %805, 2.000000e+00
  %807 = add i64 %635, 4
  %808 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %807
  %809 = load double* %808, align 8
  %810 = fmul double %806, %809
  %811 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %804
  store double %810, double* %811, align 8
  %812 = add i64 %296, 34
  %813 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %814 = fmul double %813, 2.000000e+00
  %815 = add i64 %635, 9
  %816 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %815
  %817 = load double* %816, align 8
  %818 = fmul double %814, %817
  %819 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %812
  store double %818, double* %819, align 8
  %820 = add i64 %296, 39
  %821 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %822 = fmul double %821, 2.000000e+00
  %823 = add i64 %635, 14
  %824 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %823
  %825 = load double* %824, align 8
  %826 = fmul double %822, %825
  %827 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %820
  store double %826, double* %827, align 8
  %828 = add i64 %296, 44
  %829 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %830 = fmul double %829, 2.000000e+00
  %831 = add i64 %635, 19
  %832 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %831
  %833 = load double* %832, align 8
  %834 = fmul double %830, %833
  %835 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %828
  store double %834, double* %835, align 8
  %836 = add i64 %296, 49
  %837 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %838 = fmul double %837, 2.000000e+00
  %839 = add i64 %635, 24
  %840 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %839
  %841 = load double* %840, align 8
  %842 = fmul double %838, %841
  %843 = fadd double %842, 1.000000e+00
  %844 = fmul double %838, %293
  %845 = fadd double %843, %844
  %846 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %836
  store double %845, double* %846, align 8
  %847 = add i64 %296, 50
  %848 = add i32 %294, 1
  %849 = sext i32 %848 to i64
  %850 = mul i64 %849, 25
  %851 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %850
  %852 = load double* %851, align 8
  %853 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %854 = fmul double %852, %853
  %855 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %850
  %856 = load double* %855, align 8
  %857 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %858 = fmul double %856, %857
  %859 = fsub double %854, %858
  %860 = fmul double %857, %289
  %861 = fsub double %859, %860
  %862 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %847
  store double %861, double* %862, align 8
  %863 = add i64 %296, 55
  %864 = add i64 %850, 5
  %865 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %864
  %866 = load double* %865, align 8
  %867 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %868 = fmul double %866, %867
  %869 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %864
  %870 = load double* %869, align 8
  %871 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %872 = fmul double %870, %871
  %873 = fsub double %868, %872
  %874 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %863
  store double %873, double* %874, align 8
  %875 = add i64 %296, 60
  %876 = add i64 %850, 10
  %877 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %876
  %878 = load double* %877, align 8
  %879 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %880 = fmul double %878, %879
  %881 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %876
  %882 = load double* %881, align 8
  %883 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %884 = fmul double %882, %883
  %885 = fsub double %880, %884
  %886 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %875
  store double %885, double* %886, align 8
  %887 = add i64 %296, 65
  %888 = add i64 %850, 15
  %889 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %888
  %890 = load double* %889, align 8
  %891 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %892 = fmul double %890, %891
  %893 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %888
  %894 = load double* %893, align 8
  %895 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %896 = fmul double %894, %895
  %897 = fsub double %892, %896
  %898 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %887
  store double %897, double* %898, align 8
  %899 = add i64 %296, 70
  %900 = add i64 %850, 20
  %901 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %900
  %902 = load double* %901, align 8
  %903 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %904 = fmul double %902, %903
  %905 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %900
  %906 = load double* %905, align 8
  %907 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %908 = fmul double %906, %907
  %909 = fsub double %904, %908
  %910 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %899
  store double %909, double* %910, align 8
  %911 = add i64 %296, 51
  %912 = add i64 %850, 1
  %913 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %912
  %914 = load double* %913, align 8
  %915 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %916 = fmul double %914, %915
  %917 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %912
  %918 = load double* %917, align 8
  %919 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %920 = fmul double %918, %919
  %921 = fsub double %916, %920
  %922 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %911
  store double %921, double* %922, align 8
  %923 = add i64 %296, 56
  %924 = add i64 %850, 6
  %925 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %924
  %926 = load double* %925, align 8
  %927 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %928 = fmul double %926, %927
  %929 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %924
  %930 = load double* %929, align 8
  %931 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %932 = fmul double %930, %931
  %933 = fsub double %928, %932
  %934 = fmul double %931, %290
  %935 = fsub double %933, %934
  %936 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %923
  store double %935, double* %936, align 8
  %937 = add i64 %296, 61
  %938 = add i64 %850, 11
  %939 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %938
  %940 = load double* %939, align 8
  %941 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %942 = fmul double %940, %941
  %943 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %938
  %944 = load double* %943, align 8
  %945 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %946 = fmul double %944, %945
  %947 = fsub double %942, %946
  %948 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %937
  store double %947, double* %948, align 8
  %949 = add i64 %296, 66
  %950 = add i64 %850, 16
  %951 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %950
  %952 = load double* %951, align 8
  %953 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %954 = fmul double %952, %953
  %955 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %950
  %956 = load double* %955, align 8
  %957 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %958 = fmul double %956, %957
  %959 = fsub double %954, %958
  %960 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %949
  store double %959, double* %960, align 8
  %961 = add i64 %296, 71
  %962 = add i64 %850, 21
  %963 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %962
  %964 = load double* %963, align 8
  %965 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %966 = fmul double %964, %965
  %967 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %962
  %968 = load double* %967, align 8
  %969 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %970 = fmul double %968, %969
  %971 = fsub double %966, %970
  %972 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %961
  store double %971, double* %972, align 8
  %973 = add i64 %296, 52
  %974 = add i64 %850, 2
  %975 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %974
  %976 = load double* %975, align 8
  %977 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %978 = fmul double %976, %977
  %979 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %974
  %980 = load double* %979, align 8
  %981 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %982 = fmul double %980, %981
  %983 = fsub double %978, %982
  %984 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %973
  store double %983, double* %984, align 8
  %985 = add i64 %296, 57
  %986 = add i64 %850, 7
  %987 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %986
  %988 = load double* %987, align 8
  %989 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %990 = fmul double %988, %989
  %991 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %986
  %992 = load double* %991, align 8
  %993 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %994 = fmul double %992, %993
  %995 = fsub double %990, %994
  %996 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %985
  store double %995, double* %996, align 8
  %997 = add i64 %296, 62
  %998 = add i64 %850, 12
  %999 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %998
  %1000 = load double* %999, align 8
  %1001 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1002 = fmul double %1000, %1001
  %1003 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %998
  %1004 = load double* %1003, align 8
  %1005 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1006 = fmul double %1004, %1005
  %1007 = fsub double %1002, %1006
  %1008 = fmul double %1005, %291
  %1009 = fsub double %1007, %1008
  %1010 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %997
  store double %1009, double* %1010, align 8
  %1011 = add i64 %296, 67
  %1012 = add i64 %850, 17
  %1013 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1012
  %1014 = load double* %1013, align 8
  %1015 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1016 = fmul double %1014, %1015
  %1017 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1012
  %1018 = load double* %1017, align 8
  %1019 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1020 = fmul double %1018, %1019
  %1021 = fsub double %1016, %1020
  %1022 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1011
  store double %1021, double* %1022, align 8
  %1023 = add i64 %296, 72
  %1024 = add i64 %850, 22
  %1025 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1024
  %1026 = load double* %1025, align 8
  %1027 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1028 = fmul double %1026, %1027
  %1029 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1024
  %1030 = load double* %1029, align 8
  %1031 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1032 = fmul double %1030, %1031
  %1033 = fsub double %1028, %1032
  %1034 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1023
  store double %1033, double* %1034, align 8
  %1035 = add i64 %296, 53
  %1036 = add i64 %850, 3
  %1037 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1036
  %1038 = load double* %1037, align 8
  %1039 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1040 = fmul double %1038, %1039
  %1041 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1036
  %1042 = load double* %1041, align 8
  %1043 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1044 = fmul double %1042, %1043
  %1045 = fsub double %1040, %1044
  %1046 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1035
  store double %1045, double* %1046, align 8
  %1047 = add i64 %296, 58
  %1048 = add i64 %850, 8
  %1049 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1048
  %1050 = load double* %1049, align 8
  %1051 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1052 = fmul double %1050, %1051
  %1053 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1048
  %1054 = load double* %1053, align 8
  %1055 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1056 = fmul double %1054, %1055
  %1057 = fsub double %1052, %1056
  %1058 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1047
  store double %1057, double* %1058, align 8
  %1059 = add i64 %296, 63
  %1060 = add i64 %850, 13
  %1061 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1060
  %1062 = load double* %1061, align 8
  %1063 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1064 = fmul double %1062, %1063
  %1065 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1060
  %1066 = load double* %1065, align 8
  %1067 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1068 = fmul double %1066, %1067
  %1069 = fsub double %1064, %1068
  %1070 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1059
  store double %1069, double* %1070, align 8
  %1071 = add i64 %296, 68
  %1072 = add i64 %850, 18
  %1073 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1072
  %1074 = load double* %1073, align 8
  %1075 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1076 = fmul double %1074, %1075
  %1077 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1072
  %1078 = load double* %1077, align 8
  %1079 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1080 = fmul double %1078, %1079
  %1081 = fsub double %1076, %1080
  %1082 = fmul double %1079, %292
  %1083 = fsub double %1081, %1082
  %1084 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1071
  store double %1083, double* %1084, align 8
  %1085 = add i64 %296, 73
  %1086 = add i64 %850, 23
  %1087 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1086
  %1088 = load double* %1087, align 8
  %1089 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1090 = fmul double %1088, %1089
  %1091 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1086
  %1092 = load double* %1091, align 8
  %1093 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1094 = fmul double %1092, %1093
  %1095 = fsub double %1090, %1094
  %1096 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1085
  store double %1095, double* %1096, align 8
  %1097 = add i64 %296, 54
  %1098 = add i64 %850, 4
  %1099 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1098
  %1100 = load double* %1099, align 8
  %1101 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1102 = fmul double %1100, %1101
  %1103 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1098
  %1104 = load double* %1103, align 8
  %1105 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1106 = fmul double %1104, %1105
  %1107 = fsub double %1102, %1106
  %1108 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1097
  store double %1107, double* %1108, align 8
  %1109 = add i64 %296, 59
  %1110 = add i64 %850, 9
  %1111 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1110
  %1112 = load double* %1111, align 8
  %1113 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1114 = fmul double %1112, %1113
  %1115 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1110
  %1116 = load double* %1115, align 8
  %1117 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1118 = fmul double %1116, %1117
  %1119 = fsub double %1114, %1118
  %1120 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1109
  store double %1119, double* %1120, align 8
  %1121 = add i64 %296, 64
  %1122 = add i64 %850, 14
  %1123 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1122
  %1124 = load double* %1123, align 8
  %1125 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1126 = fmul double %1124, %1125
  %1127 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1122
  %1128 = load double* %1127, align 8
  %1129 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1130 = fmul double %1128, %1129
  %1131 = fsub double %1126, %1130
  %1132 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1121
  store double %1131, double* %1132, align 8
  %1133 = add i64 %296, 69
  %1134 = add i64 %850, 19
  %1135 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1134
  %1136 = load double* %1135, align 8
  %1137 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1138 = fmul double %1136, %1137
  %1139 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1134
  %1140 = load double* %1139, align 8
  %1141 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1142 = fmul double %1140, %1141
  %1143 = fsub double %1138, %1142
  %1144 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1133
  store double %1143, double* %1144, align 8
  %1145 = add i64 %296, 74
  %1146 = add i64 %850, 24
  %1147 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1146
  %1148 = load double* %1147, align 8
  %1149 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1150 = fmul double %1148, %1149
  %1151 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1146
  %1152 = load double* %1151, align 8
  %1153 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1154 = fmul double %1152, %1153
  %1155 = fsub double %1150, %1154
  %1156 = fmul double %1153, %293
  %1157 = fsub double %1155, %1156
  %1158 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1145
  store double %1157, double* %1158, align 8
  %1159 = icmp eq i32 %294, %282
  br i1 %1159, label %"10", label %"9"

"10":                                             ; preds = %"9", %"8"
  %1160 = sext i32 %18 to i64
  %1161 = mul i64 %1160, 5
  %1162 = add i64 %1161, %12
  %1163 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1162
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 25), double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 50), double* %1163) #1
  %1164 = load i32* %jsize, align 4
  %1165 = add i32 %1164, -1
  %1166 = icmp sgt i32 %1165, 0
  br i1 %1166, label %"11.preheader", label %"12"

"11.preheader":                                   ; preds = %"10"
  %1167 = add i64 %1161, %12
  %1168 = add i64 %1161, %12
  br label %"11"

"11":                                             ; preds = %"11.preheader", %"11"
  %1169 = phi i32 [ %1189, %"11" ], [ 1, %"11.preheader" ]
  %1170 = sext i32 %1169 to i64
  %1171 = mul i64 %1170, 325
  %1172 = add i64 %1167, %1171
  %1173 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1172
  %1174 = add i32 %1169, -1
  %1175 = sext i32 %1174 to i64
  %1176 = mul i64 %1175, 325
  %1177 = add i64 %1168, %1176
  %1178 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1177
  %1179 = mul i64 %1170, 75
  %1180 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1179
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1180, double* %1178, double* %1173) #1
  %1181 = add i64 %1179, 25
  %1182 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1181
  %1183 = mul i64 %1175, 75
  %1184 = add i64 %1183, 50
  %1185 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1184
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1180, double* %1185, double* %1182) #1
  %1186 = add i64 %1179, 50
  %1187 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1186
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* %1182, double* %1187, double* %1173) #1
  %1188 = icmp eq i32 %1169, %1165
  %1189 = add i32 %1169, 1
  br i1 %1188, label %"12", label %"11"

"12":                                             ; preds = %"11", %"10"
  %1190 = load i32* %jsize, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = mul i64 %1191, 325
  %1193 = add i64 %1161, %12
  %1194 = add i64 %1193, %1192
  %1195 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1194
  %1196 = add i32 %1190, -1
  %1197 = sext i32 %1196 to i64
  %1198 = mul i64 %1197, 325
  %1199 = add i64 %1161, %12
  %1200 = add i64 %1199, %1198
  %1201 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1200
  %1202 = mul i64 %1191, 75
  %1203 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1202
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1203, double* %1201, double* %1195) #1
  %1204 = load i32* %jsize, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = mul i64 %1205, 75
  %1207 = add i64 %1206, 25
  %1208 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1207
  %1209 = add i32 %1204, -1
  %1210 = sext i32 %1209 to i64
  %1211 = mul i64 %1210, 75
  %1212 = add i64 %1211, 50
  %1213 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1212
  %1214 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1206
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1214, double* %1213, double* %1208) #1
  %1215 = load i32* %jsize, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = mul i64 %1216, 325
  %1218 = add i64 %1161, %12
  %1219 = add i64 %1218, %1217
  %1220 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1219
  %1221 = mul i64 %1216, 75
  %1222 = add i64 %1221, 25
  %1223 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1222
  call void bitcast (void (...)* @binvrhs_ to void (double*, double*)*)(double* %1223, double* %1220) #1
  %1224 = load i32* %jsize, align 4
  %1225 = add i32 %1224, -1
  %1226 = icmp sgt i32 %1225, -1
  br i1 %1226, label %"13.preheader", label %"18"

"13.preheader":                                   ; preds = %"12"
  %1227 = add i64 %13, %1161
  %1228 = add i64 %14, %1161
  br label %"13"

"13":                                             ; preds = %"13.preheader", %"17"
  %1229 = phi i32 [ %1253, %"17" ], [ %1225, %"13.preheader" ]
  %1230 = sext i32 %1229 to i64
  %1231 = mul i64 %1230, 325
  %1232 = add i64 %1227, %1231
  %1233 = mul i64 %1230, 75
  %1234 = add i64 %1233, 44
  %1235 = add i32 %1229, 1
  %1236 = sext i32 %1235 to i64
  %1237 = mul i64 %1236, 325
  %1238 = add i64 %1228, %1237
  br label %"14"

"14":                                             ; preds = %"13", %"16"
  %indvars.iv1 = phi i64 [ 1, %"13" ], [ %indvars.iv.next2, %"16" ]
  %1239 = add i64 %1232, %indvars.iv1
  %1240 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1239
  %1241 = add i64 %1234, %indvars.iv1
  br label %"15"

"15":                                             ; preds = %"14", %"15"
  %indvars.iv = phi i64 [ 1, %"14" ], [ %indvars.iv.next, %"15" ]
  %1242 = load double* %1240, align 8
  %1243 = mul i64 %indvars.iv, 5
  %1244 = add i64 %1241, %1243
  %1245 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1244
  %1246 = load double* %1245, align 8
  %1247 = add i64 %1238, %indvars.iv
  %1248 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1247
  %1249 = load double* %1248, align 8
  %1250 = fmul double %1246, %1249
  %1251 = fsub double %1242, %1250
  store double %1251, double* %1240, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %"16", label %"15"

"16":                                             ; preds = %"15"
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  %exitcond3 = icmp eq i64 %indvars.iv.next2, 6
  br i1 %exitcond3, label %"17", label %"14"

"17":                                             ; preds = %"16"
  %1252 = icmp eq i32 %1229, 0
  %1253 = add i32 %1229, -1
  br i1 %1252, label %"18", label %"13"

"18":                                             ; preds = %"17", %"12"
  %1254 = icmp eq i32 %18, %9
  %1255 = add i32 %18, 1
  br i1 %1254, label %"19", label %"6"

"19":                                             ; preds = %"18", %"5"
  %1256 = icmp eq i32 %7, %5
  %1257 = add i32 %7, 1
  br i1 %1256, label %"20", label %"5"

"20":                                             ; preds = %"19", %"4"
  %1258 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %"22", label %"21"

"21":                                             ; preds = %"20"
  call void bitcast (void (...)* @timer_stop_ to void (i32*)*)(i32* @1) #1
  br label %"22"

"22":                                             ; preds = %"20", %"21"
  %1260 = bitcast i32* %jsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1260)
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
