; ModuleID = 'z_solve.f'
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
@0 = internal constant i32 8
@1 = internal constant i32 8

; Function Attrs: nounwind uwtable
define void @z_solve_() unnamed_addr #0 {
entry:
  %ksize = alloca i32, align 4
  %0 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %"4", label %"3"

"3":                                              ; preds = %entry
  call void bitcast (void (...)* @timer_start_ to void (i32*)*)(i32* @0) #1
  br label %"4"

"4":                                              ; preds = %entry, %"3"
  %2 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %3 = add i32 %2, -1
  store i32 %3, i32* %ksize, align 4
  %4 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %5 = add i32 %4, -2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %"5", label %"20"

"5":                                              ; preds = %"4", %"19"
  %7 = phi i32 [ %1263, %"19" ], [ 1, %"4" ]
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %9 = add i32 %8, -2
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %"6.preheader", label %"19"

"6.preheader":                                    ; preds = %"5"
  %11 = sext i32 %7 to i64
  %12 = mul i64 %11, 325
  %13 = add i64 %12, -1
  %14 = add i64 %12, -1
  %15 = sext i32 %7 to i64
  %16 = mul i64 %15, 325
  %17 = mul i64 %15, 65
  br label %"6"

"6":                                              ; preds = %"6.preheader", %"18"
  %18 = phi i32 [ %1261, %"18" ], [ 1, %"6.preheader" ]
  %19 = load i32* %ksize, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %"7.preheader", label %"8"

"7.preheader":                                    ; preds = %"6"
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, 5
  %23 = add i64 %22, %16
  %24 = add i64 %21, %17
  %25 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 69), align 8
  %26 = fsub double 2.000000e+00, %25
  %27 = fmul double %25, 2.000000e+00
  %28 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 68), align 32
  %29 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %30 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %31 = fmul double %30, %29
  %32 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 70), align 16
  %33 = fmul double %30, %32
  %34 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 71), align 8
  %35 = fmul double %33, %34
  %36 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %37 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %38 = fsub double %36, %37
  %39 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %40 = fmul double %36, %39
  %41 = fsub double %40, %37
  %42 = fsub double %36, %37
  %43 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 65), align 8
  %44 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 66), align 16
  %45 = fsub double %43, %44
  %46 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 93), align 8
  %47 = fmul double %46, %43
  %48 = fsub double %47, %44
  br label %"7"

"7":                                              ; preds = %"7.preheader", %"7"
  %49 = phi i32 [ %286, %"7" ], [ 0, %"7.preheader" ]
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 21125
  %52 = add i64 %23, %51
  %53 = getelementptr %1* @fields_, i64 0, i32 0, i64 %52
  %54 = load double* %53, align 8
  %55 = fdiv double 1.000000e+00, %54
  store double %55, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %56 = fmul double %55, %55
  store double %56, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %57 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %58 = fmul double %57, %56
  store double %58, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %59 = mul i64 %50, 25
  %60 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %59
  store double 0.000000e+00, double* %60, align 8
  %61 = add i64 %59, 5
  %62 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %61
  store double 0.000000e+00, double* %62, align 8
  %63 = add i64 %59, 10
  %64 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %63
  store double 0.000000e+00, double* %64, align 8
  %65 = add i64 %59, 15
  %66 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %65
  store double 1.000000e+00, double* %66, align 8
  %67 = add i64 %59, 20
  %68 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %67
  store double 0.000000e+00, double* %68, align 8
  %69 = add i64 %59, 1
  %70 = add i64 %52, 1
  %71 = getelementptr %1* @fields_, i64 0, i32 0, i64 %70
  %72 = load double* %71, align 8
  %73 = add i64 %52, 3
  %74 = getelementptr %1* @fields_, i64 0, i32 0, i64 %73
  %75 = load double* %74, align 8
  %76 = fmul double %72, %75
  %77 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %78 = fmul double %76, %77
  %79 = fsub double -0.000000e+00, %78
  %80 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %69
  store double %79, double* %80, align 8
  %81 = add i64 %59, 6
  %82 = load double* %74, align 8
  %83 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %84 = fmul double %82, %83
  %85 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %81
  store double %84, double* %85, align 8
  %86 = add i64 %59, 11
  %87 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %86
  store double 0.000000e+00, double* %87, align 8
  %88 = add i64 %59, 16
  %89 = load double* %71, align 8
  %90 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %91 = fmul double %89, %90
  %92 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %88
  store double %91, double* %92, align 8
  %93 = add i64 %59, 21
  %94 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %93
  store double 0.000000e+00, double* %94, align 8
  %95 = add i64 %59, 2
  %96 = add i64 %52, 2
  %97 = getelementptr %1* @fields_, i64 0, i32 0, i64 %96
  %98 = load double* %97, align 8
  %99 = load double* %74, align 8
  %100 = fmul double %98, %99
  %101 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %102 = fmul double %100, %101
  %103 = fsub double -0.000000e+00, %102
  %104 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %95
  store double %103, double* %104, align 8
  %105 = add i64 %59, 7
  %106 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %105
  store double 0.000000e+00, double* %106, align 8
  %107 = add i64 %59, 12
  %108 = load double* %74, align 8
  %109 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %110 = fmul double %108, %109
  %111 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %107
  store double %110, double* %111, align 8
  %112 = add i64 %59, 17
  %113 = load double* %97, align 8
  %114 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %115 = fmul double %113, %114
  %116 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %112
  store double %115, double* %116, align 8
  %117 = add i64 %59, 22
  %118 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %117
  store double 0.000000e+00, double* %118, align 8
  %119 = add i64 %59, 3
  %120 = mul i64 %50, 4225
  %121 = add i64 %24, %120
  %122 = getelementptr %1* @fields_, i64 0, i32 4, i64 %121
  %123 = load double* %122, align 8
  %124 = fmul double %123, %25
  %125 = load double* %74, align 8
  %126 = fmul double %125, %125
  %127 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %128 = fmul double %126, %127
  %129 = fsub double %124, %128
  %130 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %119
  store double %129, double* %130, align 8
  %131 = add i64 %59, 8
  %132 = load double* %71, align 8
  %133 = fmul double %132, %25
  %134 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %135 = fmul double %133, %134
  %136 = fsub double -0.000000e+00, %135
  %137 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %131
  store double %136, double* %137, align 8
  %138 = add i64 %59, 13
  %139 = load double* %97, align 8
  %140 = fmul double %139, %25
  %141 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %142 = fmul double %140, %141
  %143 = fsub double -0.000000e+00, %142
  %144 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %138
  store double %143, double* %144, align 8
  %145 = add i64 %59, 18
  %146 = load double* %74, align 8
  %147 = fmul double %26, %146
  %148 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %149 = fmul double %147, %148
  %150 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %145
  store double %149, double* %150, align 8
  %151 = add i64 %59, 23
  %152 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %151
  store double %25, double* %152, align 8
  %153 = add i64 %59, 4
  %154 = getelementptr %1* @fields_, i64 0, i32 6, i64 %121
  %155 = load double* %154, align 8
  %156 = fmul double %27, %155
  %157 = add i64 %52, 4
  %158 = getelementptr %1* @fields_, i64 0, i32 0, i64 %157
  %159 = load double* %158, align 8
  %160 = fmul double %159, %28
  %161 = fsub double %156, %160
  %162 = load double* %74, align 8
  %163 = fmul double %162, %161
  %164 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %165 = fmul double %164, %163
  %166 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %153
  store double %165, double* %166, align 8
  %167 = add i64 %59, 9
  %168 = load double* %71, align 8
  %169 = load double* %74, align 8
  %170 = fmul double %168, %169
  %171 = fmul double %170, %25
  %172 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %173 = fmul double %171, %172
  %174 = fsub double -0.000000e+00, %173
  %175 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %167
  store double %174, double* %175, align 8
  %176 = add i64 %59, 14
  %177 = load double* %97, align 8
  %178 = load double* %74, align 8
  %179 = fmul double %177, %178
  %180 = fmul double %179, %25
  %181 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %182 = fmul double %180, %181
  %183 = fsub double -0.000000e+00, %182
  %184 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %176
  store double %183, double* %184, align 8
  %185 = add i64 %59, 19
  %186 = load double* %158, align 8
  %187 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %188 = fmul double %186, %187
  %189 = fmul double %188, %28
  %190 = load double* %122, align 8
  %191 = load double* %74, align 8
  %192 = fmul double %191, %191
  %193 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %194 = fmul double %192, %193
  %195 = fadd double %190, %194
  %196 = fmul double %25, %195
  %197 = fsub double %189, %196
  %198 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %185
  store double %197, double* %198, align 8
  %199 = add i64 %59, 24
  %200 = load double* %74, align 8
  %201 = fmul double %200, %28
  %202 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %203 = fmul double %201, %202
  %204 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %199
  store double %203, double* %204, align 8
  %205 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %59
  store double 0.000000e+00, double* %205, align 8
  %206 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %61
  store double 0.000000e+00, double* %206, align 8
  %207 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %63
  store double 0.000000e+00, double* %207, align 8
  %208 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %65
  store double 0.000000e+00, double* %208, align 8
  %209 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %67
  store double 0.000000e+00, double* %209, align 8
  %210 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %211 = fmul double %29, %210
  %212 = load double* %71, align 8
  %213 = fmul double %211, %212
  %214 = fsub double -0.000000e+00, %213
  %215 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %69
  store double %214, double* %215, align 8
  %216 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %217 = fmul double %29, %216
  %218 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %81
  store double %217, double* %218, align 8
  %219 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %86
  store double 0.000000e+00, double* %219, align 8
  %220 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %88
  store double 0.000000e+00, double* %220, align 8
  %221 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %93
  store double 0.000000e+00, double* %221, align 8
  %222 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %223 = fmul double %29, %222
  %224 = load double* %97, align 8
  %225 = fmul double %223, %224
  %226 = fsub double -0.000000e+00, %225
  %227 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %95
  store double %226, double* %227, align 8
  %228 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %105
  store double 0.000000e+00, double* %228, align 8
  %229 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %230 = fmul double %29, %229
  %231 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %107
  store double %230, double* %231, align 8
  %232 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %112
  store double 0.000000e+00, double* %232, align 8
  %233 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %117
  store double 0.000000e+00, double* %233, align 8
  %234 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %235 = fmul double %31, %234
  %236 = load double* %74, align 8
  %237 = fmul double %235, %236
  %238 = fsub double -0.000000e+00, %237
  %239 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %119
  store double %238, double* %239, align 8
  %240 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %131
  store double 0.000000e+00, double* %240, align 8
  %241 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %138
  store double 0.000000e+00, double* %241, align 8
  %242 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %243 = fmul double %35, %242
  %244 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %145
  store double %243, double* %244, align 8
  %245 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %151
  store double 0.000000e+00, double* %245, align 8
  %246 = load double* %71, align 8
  %247 = fmul double %246, %246
  %248 = load double* %97, align 8
  %249 = fmul double %248, %248
  %250 = load double* %74, align 8
  %251 = fmul double %250, %250
  %252 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 5), align 8
  %253 = fmul double %38, %252
  %254 = fmul double %247, %253
  %255 = fsub double -0.000000e+00, %254
  %256 = fmul double %249, %253
  %257 = fsub double %255, %256
  %258 = fmul double %252, %41
  %259 = fmul double %251, %258
  %260 = fsub double %257, %259
  %261 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %262 = fmul double %37, %261
  %263 = load double* %158, align 8
  %264 = fmul double %262, %263
  %265 = fsub double %260, %264
  %266 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %153
  store double %265, double* %266, align 8
  %267 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %268 = fmul double %42, %267
  %269 = load double* %71, align 8
  %270 = fmul double %268, %269
  %271 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %167
  store double %270, double* %271, align 8
  %272 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %273 = fmul double %45, %272
  %274 = load double* %97, align 8
  %275 = fmul double %273, %274
  %276 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %176
  store double %275, double* %276, align 8
  %277 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %278 = fmul double %48, %277
  %279 = load double* %74, align 8
  %280 = fmul double %278, %279
  %281 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %185
  store double %280, double* %281, align 8
  %282 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %283 = fmul double %44, %282
  %284 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %199
  store double %283, double* %284, align 8
  %285 = icmp eq i32 %49, %19
  %286 = add i32 %49, 1
  br i1 %285, label %"8", label %"7"

"8":                                              ; preds = %"7", %"6"
  call void bitcast (void (...)* @lhsinit_ to void ([4875 x double]*, i32*)*)([4875 x double]* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2), i32* %ksize) #1
  %287 = load i32* %ksize, align 4
  %288 = add i32 %287, -1
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %"9.preheader", label %"10"

"9.preheader":                                    ; preds = %"8"
  %290 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  %291 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 6), align 16
  %292 = fmul double %290, %291
  %293 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 7), align 8
  %294 = fmul double %290, %293
  %295 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 19), align 8
  %296 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 20), align 32
  %297 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 21), align 8
  %298 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 22), align 16
  %299 = load double* getelementptr inbounds (%0* @constants_, i64 0, i32 23), align 8
  br label %"9"

"9":                                              ; preds = %"9.preheader", %"9"
  %300 = phi i32 [ %854, %"9" ], [ 1, %"9.preheader" ]
  store double %292, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  store double %294, double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %301 = sext i32 %300 to i64
  %302 = mul i64 %301, 75
  %303 = add i32 %300, -1
  %304 = sext i32 %303 to i64
  %305 = mul i64 %304, 25
  %306 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %305
  %307 = load double* %306, align 8
  %308 = fmul double %307, %294
  %309 = fsub double -0.000000e+00, %308
  %310 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %305
  %311 = load double* %310, align 8
  %312 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %313 = fmul double %311, %312
  %314 = fsub double %309, %313
  %315 = fmul double %312, %295
  %316 = fsub double %314, %315
  %317 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %302
  store double %316, double* %317, align 8
  %318 = add i64 %302, 5
  %319 = add i64 %305, 5
  %320 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %319
  %321 = load double* %320, align 8
  %322 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %323 = fmul double %321, %322
  %324 = fsub double -0.000000e+00, %323
  %325 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %319
  %326 = load double* %325, align 8
  %327 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %328 = fmul double %326, %327
  %329 = fsub double %324, %328
  %330 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %318
  store double %329, double* %330, align 8
  %331 = add i64 %302, 10
  %332 = add i64 %305, 10
  %333 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %332
  %334 = load double* %333, align 8
  %335 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %336 = fmul double %334, %335
  %337 = fsub double -0.000000e+00, %336
  %338 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %332
  %339 = load double* %338, align 8
  %340 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %341 = fmul double %339, %340
  %342 = fsub double %337, %341
  %343 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %331
  store double %342, double* %343, align 8
  %344 = add i64 %302, 15
  %345 = add i64 %305, 15
  %346 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %345
  %347 = load double* %346, align 8
  %348 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %349 = fmul double %347, %348
  %350 = fsub double -0.000000e+00, %349
  %351 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %345
  %352 = load double* %351, align 8
  %353 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %354 = fmul double %352, %353
  %355 = fsub double %350, %354
  %356 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %344
  store double %355, double* %356, align 8
  %357 = add i64 %302, 20
  %358 = add i64 %305, 20
  %359 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %358
  %360 = load double* %359, align 8
  %361 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %362 = fmul double %360, %361
  %363 = fsub double -0.000000e+00, %362
  %364 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %358
  %365 = load double* %364, align 8
  %366 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %367 = fmul double %365, %366
  %368 = fsub double %363, %367
  %369 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %357
  store double %368, double* %369, align 8
  %370 = add i64 %302, 1
  %371 = add i64 %305, 1
  %372 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %371
  %373 = load double* %372, align 8
  %374 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %375 = fmul double %373, %374
  %376 = fsub double -0.000000e+00, %375
  %377 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %371
  %378 = load double* %377, align 8
  %379 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %380 = fmul double %378, %379
  %381 = fsub double %376, %380
  %382 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %370
  store double %381, double* %382, align 8
  %383 = add i64 %302, 6
  %384 = add i64 %305, 6
  %385 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %384
  %386 = load double* %385, align 8
  %387 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %388 = fmul double %386, %387
  %389 = fsub double -0.000000e+00, %388
  %390 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %384
  %391 = load double* %390, align 8
  %392 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %393 = fmul double %391, %392
  %394 = fsub double %389, %393
  %395 = fmul double %392, %296
  %396 = fsub double %394, %395
  %397 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %383
  store double %396, double* %397, align 8
  %398 = add i64 %302, 11
  %399 = add i64 %305, 11
  %400 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %399
  %401 = load double* %400, align 8
  %402 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %403 = fmul double %401, %402
  %404 = fsub double -0.000000e+00, %403
  %405 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %399
  %406 = load double* %405, align 8
  %407 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %408 = fmul double %406, %407
  %409 = fsub double %404, %408
  %410 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %398
  store double %409, double* %410, align 8
  %411 = add i64 %302, 16
  %412 = add i64 %305, 16
  %413 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %412
  %414 = load double* %413, align 8
  %415 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %416 = fmul double %414, %415
  %417 = fsub double -0.000000e+00, %416
  %418 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %412
  %419 = load double* %418, align 8
  %420 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %421 = fmul double %419, %420
  %422 = fsub double %417, %421
  %423 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %411
  store double %422, double* %423, align 8
  %424 = add i64 %302, 21
  %425 = add i64 %305, 21
  %426 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %425
  %427 = load double* %426, align 8
  %428 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %429 = fmul double %427, %428
  %430 = fsub double -0.000000e+00, %429
  %431 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %425
  %432 = load double* %431, align 8
  %433 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %434 = fmul double %432, %433
  %435 = fsub double %430, %434
  %436 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %424
  store double %435, double* %436, align 8
  %437 = add i64 %302, 2
  %438 = add i64 %305, 2
  %439 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %438
  %440 = load double* %439, align 8
  %441 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %442 = fmul double %440, %441
  %443 = fsub double -0.000000e+00, %442
  %444 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %438
  %445 = load double* %444, align 8
  %446 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %447 = fmul double %445, %446
  %448 = fsub double %443, %447
  %449 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %437
  store double %448, double* %449, align 8
  %450 = add i64 %302, 7
  %451 = add i64 %305, 7
  %452 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %451
  %453 = load double* %452, align 8
  %454 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %455 = fmul double %453, %454
  %456 = fsub double -0.000000e+00, %455
  %457 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %451
  %458 = load double* %457, align 8
  %459 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %460 = fmul double %458, %459
  %461 = fsub double %456, %460
  %462 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %450
  store double %461, double* %462, align 8
  %463 = add i64 %302, 12
  %464 = add i64 %305, 12
  %465 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %464
  %466 = load double* %465, align 8
  %467 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %468 = fmul double %466, %467
  %469 = fsub double -0.000000e+00, %468
  %470 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %464
  %471 = load double* %470, align 8
  %472 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %473 = fmul double %471, %472
  %474 = fsub double %469, %473
  %475 = fmul double %472, %297
  %476 = fsub double %474, %475
  %477 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %463
  store double %476, double* %477, align 8
  %478 = add i64 %302, 17
  %479 = add i64 %305, 17
  %480 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %479
  %481 = load double* %480, align 8
  %482 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %483 = fmul double %481, %482
  %484 = fsub double -0.000000e+00, %483
  %485 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %479
  %486 = load double* %485, align 8
  %487 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %488 = fmul double %486, %487
  %489 = fsub double %484, %488
  %490 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %478
  store double %489, double* %490, align 8
  %491 = add i64 %302, 22
  %492 = add i64 %305, 22
  %493 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %492
  %494 = load double* %493, align 8
  %495 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %496 = fmul double %494, %495
  %497 = fsub double -0.000000e+00, %496
  %498 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %492
  %499 = load double* %498, align 8
  %500 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %501 = fmul double %499, %500
  %502 = fsub double %497, %501
  %503 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %491
  store double %502, double* %503, align 8
  %504 = add i64 %302, 3
  %505 = add i64 %305, 3
  %506 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %505
  %507 = load double* %506, align 8
  %508 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %509 = fmul double %507, %508
  %510 = fsub double -0.000000e+00, %509
  %511 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %505
  %512 = load double* %511, align 8
  %513 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %514 = fmul double %512, %513
  %515 = fsub double %510, %514
  %516 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %504
  store double %515, double* %516, align 8
  %517 = add i64 %302, 8
  %518 = add i64 %305, 8
  %519 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %518
  %520 = load double* %519, align 8
  %521 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %522 = fmul double %520, %521
  %523 = fsub double -0.000000e+00, %522
  %524 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %518
  %525 = load double* %524, align 8
  %526 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %527 = fmul double %525, %526
  %528 = fsub double %523, %527
  %529 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %517
  store double %528, double* %529, align 8
  %530 = add i64 %302, 13
  %531 = add i64 %305, 13
  %532 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %531
  %533 = load double* %532, align 8
  %534 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %535 = fmul double %533, %534
  %536 = fsub double -0.000000e+00, %535
  %537 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %531
  %538 = load double* %537, align 8
  %539 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %540 = fmul double %538, %539
  %541 = fsub double %536, %540
  %542 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %530
  store double %541, double* %542, align 8
  %543 = add i64 %302, 18
  %544 = add i64 %305, 18
  %545 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %544
  %546 = load double* %545, align 8
  %547 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %548 = fmul double %546, %547
  %549 = fsub double -0.000000e+00, %548
  %550 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %544
  %551 = load double* %550, align 8
  %552 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %553 = fmul double %551, %552
  %554 = fsub double %549, %553
  %555 = fmul double %552, %298
  %556 = fsub double %554, %555
  %557 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %543
  store double %556, double* %557, align 8
  %558 = add i64 %302, 23
  %559 = add i64 %305, 23
  %560 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %559
  %561 = load double* %560, align 8
  %562 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %563 = fmul double %561, %562
  %564 = fsub double -0.000000e+00, %563
  %565 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %559
  %566 = load double* %565, align 8
  %567 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %568 = fmul double %566, %567
  %569 = fsub double %564, %568
  %570 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %558
  store double %569, double* %570, align 8
  %571 = add i64 %302, 4
  %572 = add i64 %305, 4
  %573 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %572
  %574 = load double* %573, align 8
  %575 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %576 = fmul double %574, %575
  %577 = fsub double -0.000000e+00, %576
  %578 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %572
  %579 = load double* %578, align 8
  %580 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %581 = fmul double %579, %580
  %582 = fsub double %577, %581
  %583 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %571
  store double %582, double* %583, align 8
  %584 = add i64 %302, 9
  %585 = add i64 %305, 9
  %586 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %585
  %587 = load double* %586, align 8
  %588 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %589 = fmul double %587, %588
  %590 = fsub double -0.000000e+00, %589
  %591 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %585
  %592 = load double* %591, align 8
  %593 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %594 = fmul double %592, %593
  %595 = fsub double %590, %594
  %596 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %584
  store double %595, double* %596, align 8
  %597 = add i64 %302, 14
  %598 = add i64 %305, 14
  %599 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %598
  %600 = load double* %599, align 8
  %601 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %602 = fmul double %600, %601
  %603 = fsub double -0.000000e+00, %602
  %604 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %598
  %605 = load double* %604, align 8
  %606 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %607 = fmul double %605, %606
  %608 = fsub double %603, %607
  %609 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %597
  store double %608, double* %609, align 8
  %610 = add i64 %302, 19
  %611 = add i64 %305, 19
  %612 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %611
  %613 = load double* %612, align 8
  %614 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %615 = fmul double %613, %614
  %616 = fsub double -0.000000e+00, %615
  %617 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %611
  %618 = load double* %617, align 8
  %619 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %620 = fmul double %618, %619
  %621 = fsub double %616, %620
  %622 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %610
  store double %621, double* %622, align 8
  %623 = add i64 %302, 24
  %624 = add i64 %305, 24
  %625 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %624
  %626 = load double* %625, align 8
  %627 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %628 = fmul double %626, %627
  %629 = fsub double -0.000000e+00, %628
  %630 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %624
  %631 = load double* %630, align 8
  %632 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %633 = fmul double %631, %632
  %634 = fsub double %629, %633
  %635 = fmul double %632, %299
  %636 = fsub double %634, %635
  %637 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %623
  store double %636, double* %637, align 8
  %638 = add i64 %302, 25
  %639 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %640 = fmul double %639, 2.000000e+00
  %641 = mul i64 %301, 25
  %642 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %641
  %643 = load double* %642, align 8
  %644 = fmul double %640, %643
  %645 = fadd double %644, 1.000000e+00
  %646 = fmul double %640, %295
  %647 = fadd double %645, %646
  %648 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %638
  store double %647, double* %648, align 8
  %649 = add i64 %302, 30
  %650 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %651 = fmul double %650, 2.000000e+00
  %652 = add i64 %641, 5
  %653 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %652
  %654 = load double* %653, align 8
  %655 = fmul double %651, %654
  %656 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %649
  store double %655, double* %656, align 8
  %657 = add i64 %302, 35
  %658 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %659 = fmul double %658, 2.000000e+00
  %660 = add i64 %641, 10
  %661 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %660
  %662 = load double* %661, align 8
  %663 = fmul double %659, %662
  %664 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %657
  store double %663, double* %664, align 8
  %665 = add i64 %302, 40
  %666 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %667 = fmul double %666, 2.000000e+00
  %668 = add i64 %641, 15
  %669 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %668
  %670 = load double* %669, align 8
  %671 = fmul double %667, %670
  %672 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %665
  store double %671, double* %672, align 8
  %673 = add i64 %302, 45
  %674 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %675 = fmul double %674, 2.000000e+00
  %676 = add i64 %641, 20
  %677 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %676
  %678 = load double* %677, align 8
  %679 = fmul double %675, %678
  %680 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %673
  store double %679, double* %680, align 8
  %681 = add i64 %302, 26
  %682 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %683 = fmul double %682, 2.000000e+00
  %684 = add i64 %641, 1
  %685 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %684
  %686 = load double* %685, align 8
  %687 = fmul double %683, %686
  %688 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %681
  store double %687, double* %688, align 8
  %689 = add i64 %302, 31
  %690 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %691 = fmul double %690, 2.000000e+00
  %692 = add i64 %641, 6
  %693 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %692
  %694 = load double* %693, align 8
  %695 = fmul double %691, %694
  %696 = fadd double %695, 1.000000e+00
  %697 = fmul double %691, %296
  %698 = fadd double %696, %697
  %699 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %689
  store double %698, double* %699, align 8
  %700 = add i64 %302, 36
  %701 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %702 = fmul double %701, 2.000000e+00
  %703 = add i64 %641, 11
  %704 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %703
  %705 = load double* %704, align 8
  %706 = fmul double %702, %705
  %707 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %700
  store double %706, double* %707, align 8
  %708 = add i64 %302, 41
  %709 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %710 = fmul double %709, 2.000000e+00
  %711 = add i64 %641, 16
  %712 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %711
  %713 = load double* %712, align 8
  %714 = fmul double %710, %713
  %715 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %708
  store double %714, double* %715, align 8
  %716 = add i64 %302, 46
  %717 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %718 = fmul double %717, 2.000000e+00
  %719 = add i64 %641, 21
  %720 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %719
  %721 = load double* %720, align 8
  %722 = fmul double %718, %721
  %723 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %716
  store double %722, double* %723, align 8
  %724 = add i64 %302, 27
  %725 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %726 = fmul double %725, 2.000000e+00
  %727 = add i64 %641, 2
  %728 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %727
  %729 = load double* %728, align 8
  %730 = fmul double %726, %729
  %731 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %724
  store double %730, double* %731, align 8
  %732 = add i64 %302, 32
  %733 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %734 = fmul double %733, 2.000000e+00
  %735 = add i64 %641, 7
  %736 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %735
  %737 = load double* %736, align 8
  %738 = fmul double %734, %737
  %739 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %732
  store double %738, double* %739, align 8
  %740 = add i64 %302, 37
  %741 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %742 = fmul double %741, 2.000000e+00
  %743 = add i64 %641, 12
  %744 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %743
  %745 = load double* %744, align 8
  %746 = fmul double %742, %745
  %747 = fadd double %746, 1.000000e+00
  %748 = fmul double %742, %297
  %749 = fadd double %747, %748
  %750 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %740
  store double %749, double* %750, align 8
  %751 = add i64 %302, 42
  %752 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %753 = fmul double %752, 2.000000e+00
  %754 = add i64 %641, 17
  %755 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %754
  %756 = load double* %755, align 8
  %757 = fmul double %753, %756
  %758 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %751
  store double %757, double* %758, align 8
  %759 = add i64 %302, 47
  %760 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %761 = fmul double %760, 2.000000e+00
  %762 = add i64 %641, 22
  %763 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %762
  %764 = load double* %763, align 8
  %765 = fmul double %761, %764
  %766 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %759
  store double %765, double* %766, align 8
  %767 = add i64 %302, 28
  %768 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %769 = fmul double %768, 2.000000e+00
  %770 = add i64 %641, 3
  %771 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %770
  %772 = load double* %771, align 8
  %773 = fmul double %769, %772
  %774 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %767
  store double %773, double* %774, align 8
  %775 = add i64 %302, 33
  %776 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %777 = fmul double %776, 2.000000e+00
  %778 = add i64 %641, 8
  %779 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %778
  %780 = load double* %779, align 8
  %781 = fmul double %777, %780
  %782 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %775
  store double %781, double* %782, align 8
  %783 = add i64 %302, 38
  %784 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %785 = fmul double %784, 2.000000e+00
  %786 = add i64 %641, 13
  %787 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %786
  %788 = load double* %787, align 8
  %789 = fmul double %785, %788
  %790 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %783
  store double %789, double* %790, align 8
  %791 = add i64 %302, 43
  %792 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %793 = fmul double %792, 2.000000e+00
  %794 = add i64 %641, 18
  %795 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %794
  %796 = load double* %795, align 8
  %797 = fmul double %793, %796
  %798 = fadd double %797, 1.000000e+00
  %799 = fmul double %793, %298
  %800 = fadd double %798, %799
  %801 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %791
  store double %800, double* %801, align 8
  %802 = add i64 %302, 48
  %803 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %804 = fmul double %803, 2.000000e+00
  %805 = add i64 %641, 23
  %806 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %805
  %807 = load double* %806, align 8
  %808 = fmul double %804, %807
  %809 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %802
  store double %808, double* %809, align 8
  %810 = add i64 %302, 29
  %811 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %812 = fmul double %811, 2.000000e+00
  %813 = add i64 %641, 4
  %814 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %813
  %815 = load double* %814, align 8
  %816 = fmul double %812, %815
  %817 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %810
  store double %816, double* %817, align 8
  %818 = add i64 %302, 34
  %819 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %820 = fmul double %819, 2.000000e+00
  %821 = add i64 %641, 9
  %822 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %821
  %823 = load double* %822, align 8
  %824 = fmul double %820, %823
  %825 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %818
  store double %824, double* %825, align 8
  %826 = add i64 %302, 39
  %827 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %828 = fmul double %827, 2.000000e+00
  %829 = add i64 %641, 14
  %830 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %829
  %831 = load double* %830, align 8
  %832 = fmul double %828, %831
  %833 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %826
  store double %832, double* %833, align 8
  %834 = add i64 %302, 44
  %835 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %836 = fmul double %835, 2.000000e+00
  %837 = add i64 %641, 19
  %838 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %837
  %839 = load double* %838, align 8
  %840 = fmul double %836, %839
  %841 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %834
  store double %840, double* %841, align 8
  %842 = add i64 %302, 49
  %843 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %844 = fmul double %843, 2.000000e+00
  %845 = add i64 %641, 24
  %846 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %845
  %847 = load double* %846, align 8
  %848 = fmul double %844, %847
  %849 = fadd double %848, 1.000000e+00
  %850 = fmul double %844, %299
  %851 = fadd double %849, %850
  %852 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %842
  store double %851, double* %852, align 8
  %853 = add i64 %302, 50
  %854 = add i32 %300, 1
  %855 = sext i32 %854 to i64
  %856 = mul i64 %855, 25
  %857 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %856
  %858 = load double* %857, align 8
  %859 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %860 = fmul double %858, %859
  %861 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %856
  %862 = load double* %861, align 8
  %863 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %864 = fmul double %862, %863
  %865 = fsub double %860, %864
  %866 = fmul double %863, %295
  %867 = fsub double %865, %866
  %868 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %853
  store double %867, double* %868, align 8
  %869 = add i64 %302, 55
  %870 = add i64 %856, 5
  %871 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %870
  %872 = load double* %871, align 8
  %873 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %874 = fmul double %872, %873
  %875 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %870
  %876 = load double* %875, align 8
  %877 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %878 = fmul double %876, %877
  %879 = fsub double %874, %878
  %880 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %869
  store double %879, double* %880, align 8
  %881 = add i64 %302, 60
  %882 = add i64 %856, 10
  %883 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %882
  %884 = load double* %883, align 8
  %885 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %886 = fmul double %884, %885
  %887 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %882
  %888 = load double* %887, align 8
  %889 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %890 = fmul double %888, %889
  %891 = fsub double %886, %890
  %892 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %881
  store double %891, double* %892, align 8
  %893 = add i64 %302, 65
  %894 = add i64 %856, 15
  %895 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %894
  %896 = load double* %895, align 8
  %897 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %898 = fmul double %896, %897
  %899 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %894
  %900 = load double* %899, align 8
  %901 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %902 = fmul double %900, %901
  %903 = fsub double %898, %902
  %904 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %893
  store double %903, double* %904, align 8
  %905 = add i64 %302, 70
  %906 = add i64 %856, 20
  %907 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %906
  %908 = load double* %907, align 8
  %909 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %910 = fmul double %908, %909
  %911 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %906
  %912 = load double* %911, align 8
  %913 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %914 = fmul double %912, %913
  %915 = fsub double %910, %914
  %916 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %905
  store double %915, double* %916, align 8
  %917 = add i64 %302, 51
  %918 = add i64 %856, 1
  %919 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %918
  %920 = load double* %919, align 8
  %921 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %922 = fmul double %920, %921
  %923 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %918
  %924 = load double* %923, align 8
  %925 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %926 = fmul double %924, %925
  %927 = fsub double %922, %926
  %928 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %917
  store double %927, double* %928, align 8
  %929 = add i64 %302, 56
  %930 = add i64 %856, 6
  %931 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %930
  %932 = load double* %931, align 8
  %933 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %934 = fmul double %932, %933
  %935 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %930
  %936 = load double* %935, align 8
  %937 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %938 = fmul double %936, %937
  %939 = fsub double %934, %938
  %940 = fmul double %937, %296
  %941 = fsub double %939, %940
  %942 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %929
  store double %941, double* %942, align 8
  %943 = add i64 %302, 61
  %944 = add i64 %856, 11
  %945 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %944
  %946 = load double* %945, align 8
  %947 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %948 = fmul double %946, %947
  %949 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %944
  %950 = load double* %949, align 8
  %951 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %952 = fmul double %950, %951
  %953 = fsub double %948, %952
  %954 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %943
  store double %953, double* %954, align 8
  %955 = add i64 %302, 66
  %956 = add i64 %856, 16
  %957 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %956
  %958 = load double* %957, align 8
  %959 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %960 = fmul double %958, %959
  %961 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %956
  %962 = load double* %961, align 8
  %963 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %964 = fmul double %962, %963
  %965 = fsub double %960, %964
  %966 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %955
  store double %965, double* %966, align 8
  %967 = add i64 %302, 71
  %968 = add i64 %856, 21
  %969 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %968
  %970 = load double* %969, align 8
  %971 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %972 = fmul double %970, %971
  %973 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %968
  %974 = load double* %973, align 8
  %975 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %976 = fmul double %974, %975
  %977 = fsub double %972, %976
  %978 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %967
  store double %977, double* %978, align 8
  %979 = add i64 %302, 52
  %980 = add i64 %856, 2
  %981 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %980
  %982 = load double* %981, align 8
  %983 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %984 = fmul double %982, %983
  %985 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %980
  %986 = load double* %985, align 8
  %987 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %988 = fmul double %986, %987
  %989 = fsub double %984, %988
  %990 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %979
  store double %989, double* %990, align 8
  %991 = add i64 %302, 57
  %992 = add i64 %856, 7
  %993 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %992
  %994 = load double* %993, align 8
  %995 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %996 = fmul double %994, %995
  %997 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %992
  %998 = load double* %997, align 8
  %999 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1000 = fmul double %998, %999
  %1001 = fsub double %996, %1000
  %1002 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %991
  store double %1001, double* %1002, align 8
  %1003 = add i64 %302, 62
  %1004 = add i64 %856, 12
  %1005 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1004
  %1006 = load double* %1005, align 8
  %1007 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1008 = fmul double %1006, %1007
  %1009 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1004
  %1010 = load double* %1009, align 8
  %1011 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1012 = fmul double %1010, %1011
  %1013 = fsub double %1008, %1012
  %1014 = fmul double %1011, %297
  %1015 = fsub double %1013, %1014
  %1016 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1003
  store double %1015, double* %1016, align 8
  %1017 = add i64 %302, 67
  %1018 = add i64 %856, 17
  %1019 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1018
  %1020 = load double* %1019, align 8
  %1021 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1022 = fmul double %1020, %1021
  %1023 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1018
  %1024 = load double* %1023, align 8
  %1025 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1026 = fmul double %1024, %1025
  %1027 = fsub double %1022, %1026
  %1028 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1017
  store double %1027, double* %1028, align 8
  %1029 = add i64 %302, 72
  %1030 = add i64 %856, 22
  %1031 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1030
  %1032 = load double* %1031, align 8
  %1033 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1034 = fmul double %1032, %1033
  %1035 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1030
  %1036 = load double* %1035, align 8
  %1037 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1038 = fmul double %1036, %1037
  %1039 = fsub double %1034, %1038
  %1040 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1029
  store double %1039, double* %1040, align 8
  %1041 = add i64 %302, 53
  %1042 = add i64 %856, 3
  %1043 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1042
  %1044 = load double* %1043, align 8
  %1045 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1046 = fmul double %1044, %1045
  %1047 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1042
  %1048 = load double* %1047, align 8
  %1049 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1050 = fmul double %1048, %1049
  %1051 = fsub double %1046, %1050
  %1052 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1041
  store double %1051, double* %1052, align 8
  %1053 = add i64 %302, 58
  %1054 = add i64 %856, 8
  %1055 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1054
  %1056 = load double* %1055, align 8
  %1057 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1058 = fmul double %1056, %1057
  %1059 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1054
  %1060 = load double* %1059, align 8
  %1061 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1062 = fmul double %1060, %1061
  %1063 = fsub double %1058, %1062
  %1064 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1053
  store double %1063, double* %1064, align 8
  %1065 = add i64 %302, 63
  %1066 = add i64 %856, 13
  %1067 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1066
  %1068 = load double* %1067, align 8
  %1069 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1070 = fmul double %1068, %1069
  %1071 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1066
  %1072 = load double* %1071, align 8
  %1073 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1074 = fmul double %1072, %1073
  %1075 = fsub double %1070, %1074
  %1076 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1065
  store double %1075, double* %1076, align 8
  %1077 = add i64 %302, 68
  %1078 = add i64 %856, 18
  %1079 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1078
  %1080 = load double* %1079, align 8
  %1081 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1082 = fmul double %1080, %1081
  %1083 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1078
  %1084 = load double* %1083, align 8
  %1085 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1086 = fmul double %1084, %1085
  %1087 = fsub double %1082, %1086
  %1088 = fmul double %1085, %298
  %1089 = fsub double %1087, %1088
  %1090 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1077
  store double %1089, double* %1090, align 8
  %1091 = add i64 %302, 73
  %1092 = add i64 %856, 23
  %1093 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1092
  %1094 = load double* %1093, align 8
  %1095 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1096 = fmul double %1094, %1095
  %1097 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1092
  %1098 = load double* %1097, align 8
  %1099 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1100 = fmul double %1098, %1099
  %1101 = fsub double %1096, %1100
  %1102 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1091
  store double %1101, double* %1102, align 8
  %1103 = add i64 %302, 54
  %1104 = add i64 %856, 4
  %1105 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1104
  %1106 = load double* %1105, align 8
  %1107 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1108 = fmul double %1106, %1107
  %1109 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1104
  %1110 = load double* %1109, align 8
  %1111 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1112 = fmul double %1110, %1111
  %1113 = fsub double %1108, %1112
  %1114 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1103
  store double %1113, double* %1114, align 8
  %1115 = add i64 %302, 59
  %1116 = add i64 %856, 9
  %1117 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1116
  %1118 = load double* %1117, align 8
  %1119 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1120 = fmul double %1118, %1119
  %1121 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1116
  %1122 = load double* %1121, align 8
  %1123 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1124 = fmul double %1122, %1123
  %1125 = fsub double %1120, %1124
  %1126 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1115
  store double %1125, double* %1126, align 8
  %1127 = add i64 %302, 64
  %1128 = add i64 %856, 14
  %1129 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1128
  %1130 = load double* %1129, align 8
  %1131 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1132 = fmul double %1130, %1131
  %1133 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1128
  %1134 = load double* %1133, align 8
  %1135 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1136 = fmul double %1134, %1135
  %1137 = fsub double %1132, %1136
  %1138 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1127
  store double %1137, double* %1138, align 8
  %1139 = add i64 %302, 69
  %1140 = add i64 %856, 19
  %1141 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1140
  %1142 = load double* %1141, align 8
  %1143 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1144 = fmul double %1142, %1143
  %1145 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1140
  %1146 = load double* %1145, align 8
  %1147 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1148 = fmul double %1146, %1147
  %1149 = fsub double %1144, %1148
  %1150 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1139
  store double %1149, double* %1150, align 8
  %1151 = add i64 %302, 74
  %1152 = add i64 %856, 24
  %1153 = getelementptr %4* @work_lhs_, i64 0, i32 0, i64 %1152
  %1154 = load double* %1153, align 8
  %1155 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 4), align 16
  %1156 = fmul double %1154, %1155
  %1157 = getelementptr %4* @work_lhs_, i64 0, i32 1, i64 %1152
  %1158 = load double* %1157, align 8
  %1159 = load double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 3), align 8
  %1160 = fmul double %1158, %1159
  %1161 = fsub double %1156, %1160
  %1162 = fmul double %1159, %299
  %1163 = fsub double %1161, %1162
  %1164 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1151
  store double %1163, double* %1164, align 8
  %1165 = icmp eq i32 %300, %288
  br i1 %1165, label %"10", label %"9"

"10":                                             ; preds = %"9", %"8"
  %1166 = sext i32 %18 to i64
  %1167 = mul i64 %1166, 5
  %1168 = add i64 %1167, %12
  %1169 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1168
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 25), double* getelementptr inbounds (%4* @work_lhs_, i64 0, i32 2, i64 50), double* %1169) #1
  %1170 = load i32* %ksize, align 4
  %1171 = add i32 %1170, -1
  %1172 = icmp sgt i32 %1171, 0
  br i1 %1172, label %"11.preheader", label %"12"

"11.preheader":                                   ; preds = %"10"
  %1173 = add i64 %1167, %12
  %1174 = add i64 %1167, %12
  br label %"11"

"11":                                             ; preds = %"11.preheader", %"11"
  %1175 = phi i32 [ %1195, %"11" ], [ 1, %"11.preheader" ]
  %1176 = sext i32 %1175 to i64
  %1177 = mul i64 %1176, 21125
  %1178 = add i64 %1173, %1177
  %1179 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1178
  %1180 = add i32 %1175, -1
  %1181 = sext i32 %1180 to i64
  %1182 = mul i64 %1181, 21125
  %1183 = add i64 %1174, %1182
  %1184 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1183
  %1185 = mul i64 %1176, 75
  %1186 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1185
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1186, double* %1184, double* %1179) #1
  %1187 = add i64 %1185, 25
  %1188 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1187
  %1189 = mul i64 %1181, 75
  %1190 = add i64 %1189, 50
  %1191 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1190
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1186, double* %1191, double* %1188) #1
  %1192 = add i64 %1185, 50
  %1193 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1192
  call void bitcast (void (...)* @binvcrhs_ to void (double*, double*, double*)*)(double* %1188, double* %1193, double* %1179) #1
  %1194 = icmp eq i32 %1175, %1171
  %1195 = add i32 %1175, 1
  br i1 %1194, label %"12", label %"11"

"12":                                             ; preds = %"11", %"10"
  %1196 = load i32* %ksize, align 4
  %1197 = sext i32 %1196 to i64
  %1198 = mul i64 %1197, 21125
  %1199 = add i64 %1167, %12
  %1200 = add i64 %1199, %1198
  %1201 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1200
  %1202 = add i32 %1196, -1
  %1203 = sext i32 %1202 to i64
  %1204 = mul i64 %1203, 21125
  %1205 = add i64 %1167, %12
  %1206 = add i64 %1205, %1204
  %1207 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1206
  %1208 = mul i64 %1197, 75
  %1209 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1208
  call void bitcast (void (...)* @matvec_sub_ to void (double*, double*, double*)*)(double* %1209, double* %1207, double* %1201) #1
  %1210 = load i32* %ksize, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = mul i64 %1211, 75
  %1213 = add i64 %1212, 25
  %1214 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1213
  %1215 = add i32 %1210, -1
  %1216 = sext i32 %1215 to i64
  %1217 = mul i64 %1216, 75
  %1218 = add i64 %1217, 50
  %1219 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1218
  %1220 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1212
  call void bitcast (void (...)* @matmul_sub_ to void (double*, double*, double*)*)(double* %1220, double* %1219, double* %1214) #1
  %1221 = load i32* %ksize, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = mul i64 %1222, 21125
  %1224 = add i64 %1167, %12
  %1225 = add i64 %1224, %1223
  %1226 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1225
  %1227 = mul i64 %1222, 75
  %1228 = add i64 %1227, 25
  %1229 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1228
  call void bitcast (void (...)* @binvrhs_ to void (double*, double*)*)(double* %1229, double* %1226) #1
  %1230 = load i32* %ksize, align 4
  %1231 = add i32 %1230, -1
  %1232 = icmp sgt i32 %1231, -1
  br i1 %1232, label %"13.preheader", label %"18"

"13.preheader":                                   ; preds = %"12"
  %1233 = add i64 %13, %1167
  %1234 = add i64 %14, %1167
  br label %"13"

"13":                                             ; preds = %"13.preheader", %"17"
  %1235 = phi i32 [ %1259, %"17" ], [ %1231, %"13.preheader" ]
  %1236 = sext i32 %1235 to i64
  %1237 = mul i64 %1236, 21125
  %1238 = add i64 %1233, %1237
  %1239 = mul i64 %1236, 75
  %1240 = add i64 %1239, 44
  %1241 = add i32 %1235, 1
  %1242 = sext i32 %1241 to i64
  %1243 = mul i64 %1242, 21125
  %1244 = add i64 %1234, %1243
  br label %"14"

"14":                                             ; preds = %"13", %"16"
  %indvars.iv1 = phi i64 [ 1, %"13" ], [ %indvars.iv.next2, %"16" ]
  %1245 = add i64 %1238, %indvars.iv1
  %1246 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1245
  %1247 = add i64 %1240, %indvars.iv1
  br label %"15"

"15":                                             ; preds = %"14", %"15"
  %indvars.iv = phi i64 [ 1, %"14" ], [ %indvars.iv.next, %"15" ]
  %1248 = load double* %1246, align 8
  %1249 = mul i64 %indvars.iv, 5
  %1250 = add i64 %1247, %1249
  %1251 = getelementptr %4* @work_lhs_, i64 0, i32 2, i64 %1250
  %1252 = load double* %1251, align 8
  %1253 = add i64 %1244, %indvars.iv
  %1254 = getelementptr %1* @fields_, i64 0, i32 7, i64 %1253
  %1255 = load double* %1254, align 8
  %1256 = fmul double %1252, %1255
  %1257 = fsub double %1248, %1256
  store double %1257, double* %1246, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %"16", label %"15"

"16":                                             ; preds = %"15"
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  %exitcond3 = icmp eq i64 %indvars.iv.next2, 6
  br i1 %exitcond3, label %"17", label %"14"

"17":                                             ; preds = %"16"
  %1258 = icmp eq i32 %1235, 0
  %1259 = add i32 %1235, -1
  br i1 %1258, label %"18", label %"13"

"18":                                             ; preds = %"17", %"12"
  %1260 = icmp eq i32 %18, %9
  %1261 = add i32 %18, 1
  br i1 %1260, label %"19", label %"6"

"19":                                             ; preds = %"18", %"5"
  %1262 = icmp eq i32 %7, %5
  %1263 = add i32 %7, 1
  br i1 %1262, label %"20", label %"5"

"20":                                             ; preds = %"19", %"4"
  %1264 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %"22", label %"21"

"21":                                             ; preds = %"20"
  call void bitcast (void (...)* @timer_stop_ to void (i32*)*)(i32* @1) #1
  br label %"22"

"22":                                             ; preds = %"20", %"21"
  %1266 = bitcast i32* %ksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1266)
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
