; ModuleID = 'solve_subs.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

; Function Attrs: nounwind uwtable
define void @matvec_sub_([25 x double]* noalias %ablock, [5 x double]* noalias nocapture readonly %avec, [5 x double]* noalias nocapture %bvec) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds [5 x double]* %bvec, i64 0, i64 0
  %1 = load double* %0, align 8
  %2 = getelementptr inbounds [25 x double]* %ablock, i64 0, i64 0
  %3 = load double* %2, align 8
  %4 = getelementptr inbounds [5 x double]* %avec, i64 0, i64 0
  %5 = load double* %4, align 8
  %6 = fmul double %3, %5
  %7 = fsub double %1, %6
  %8 = getelementptr [25 x double]* %ablock, i64 0, i64 5
  %9 = load double* %8, align 8
  %10 = getelementptr [5 x double]* %avec, i64 0, i64 1
  %11 = load double* %10, align 8
  %12 = fmul double %9, %11
  %13 = fsub double %7, %12
  %14 = getelementptr [25 x double]* %ablock, i64 0, i64 10
  %15 = load double* %14, align 8
  %16 = getelementptr [5 x double]* %avec, i64 0, i64 2
  %17 = load double* %16, align 8
  %18 = fmul double %15, %17
  %19 = fsub double %13, %18
  %20 = getelementptr [25 x double]* %ablock, i64 0, i64 15
  %21 = load double* %20, align 8
  %22 = getelementptr [5 x double]* %avec, i64 0, i64 3
  %23 = load double* %22, align 8
  %24 = fmul double %21, %23
  %25 = fsub double %19, %24
  %26 = getelementptr [25 x double]* %ablock, i64 0, i64 20
  %27 = load double* %26, align 8
  %28 = getelementptr [5 x double]* %avec, i64 0, i64 4
  %29 = load double* %28, align 8
  %30 = fmul double %27, %29
  %31 = fsub double %25, %30
  store double %31, double* %0, align 8
  %32 = getelementptr [5 x double]* %bvec, i64 0, i64 1
  %33 = load double* %32, align 8
  %34 = getelementptr [25 x double]* %ablock, i64 0, i64 1
  %35 = load double* %34, align 8
  %36 = load double* %4, align 8
  %37 = fmul double %35, %36
  %38 = fsub double %33, %37
  %39 = getelementptr [25 x double]* %ablock, i64 0, i64 6
  %40 = load double* %39, align 8
  %41 = load double* %10, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %38, %42
  %44 = getelementptr [25 x double]* %ablock, i64 0, i64 11
  %45 = load double* %44, align 8
  %46 = load double* %16, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %43, %47
  %49 = getelementptr [25 x double]* %ablock, i64 0, i64 16
  %50 = load double* %49, align 8
  %51 = load double* %22, align 8
  %52 = fmul double %50, %51
  %53 = fsub double %48, %52
  %54 = getelementptr [25 x double]* %ablock, i64 0, i64 21
  %55 = load double* %54, align 8
  %56 = load double* %28, align 8
  %57 = fmul double %55, %56
  %58 = fsub double %53, %57
  store double %58, double* %32, align 8
  %59 = getelementptr [5 x double]* %bvec, i64 0, i64 2
  %60 = load double* %59, align 8
  %61 = getelementptr [25 x double]* %ablock, i64 0, i64 2
  %62 = load double* %61, align 8
  %63 = load double* %4, align 8
  %64 = fmul double %62, %63
  %65 = fsub double %60, %64
  %66 = getelementptr [25 x double]* %ablock, i64 0, i64 7
  %67 = load double* %66, align 8
  %68 = load double* %10, align 8
  %69 = fmul double %67, %68
  %70 = fsub double %65, %69
  %71 = getelementptr [25 x double]* %ablock, i64 0, i64 12
  %72 = load double* %71, align 8
  %73 = load double* %16, align 8
  %74 = fmul double %72, %73
  %75 = fsub double %70, %74
  %76 = getelementptr [25 x double]* %ablock, i64 0, i64 17
  %77 = load double* %76, align 8
  %78 = load double* %22, align 8
  %79 = fmul double %77, %78
  %80 = fsub double %75, %79
  %81 = getelementptr [25 x double]* %ablock, i64 0, i64 22
  %82 = load double* %81, align 8
  %83 = load double* %28, align 8
  %84 = fmul double %82, %83
  %85 = fsub double %80, %84
  store double %85, double* %59, align 8
  %86 = getelementptr [5 x double]* %bvec, i64 0, i64 3
  %87 = load double* %86, align 8
  %88 = getelementptr [25 x double]* %ablock, i64 0, i64 3
  %89 = load double* %88, align 8
  %90 = load double* %4, align 8
  %91 = fmul double %89, %90
  %92 = fsub double %87, %91
  %93 = getelementptr [25 x double]* %ablock, i64 0, i64 8
  %94 = load double* %93, align 8
  %95 = load double* %10, align 8
  %96 = fmul double %94, %95
  %97 = fsub double %92, %96
  %98 = getelementptr [25 x double]* %ablock, i64 0, i64 13
  %99 = load double* %98, align 8
  %100 = load double* %16, align 8
  %101 = fmul double %99, %100
  %102 = fsub double %97, %101
  %103 = getelementptr [25 x double]* %ablock, i64 0, i64 18
  %104 = load double* %103, align 8
  %105 = load double* %22, align 8
  %106 = fmul double %104, %105
  %107 = fsub double %102, %106
  %108 = getelementptr [25 x double]* %ablock, i64 0, i64 23
  %109 = load double* %108, align 8
  %110 = load double* %28, align 8
  %111 = fmul double %109, %110
  %112 = fsub double %107, %111
  store double %112, double* %86, align 8
  %113 = getelementptr [5 x double]* %bvec, i64 0, i64 4
  %114 = load double* %113, align 8
  %115 = getelementptr [25 x double]* %ablock, i64 0, i64 4
  %116 = load double* %115, align 8
  %117 = load double* %4, align 8
  %118 = fmul double %116, %117
  %119 = fsub double %114, %118
  %120 = getelementptr [25 x double]* %ablock, i64 0, i64 9
  %121 = load double* %120, align 8
  %122 = load double* %10, align 8
  %123 = fmul double %121, %122
  %124 = fsub double %119, %123
  %125 = getelementptr [25 x double]* %ablock, i64 0, i64 14
  %126 = load double* %125, align 8
  %127 = load double* %16, align 8
  %128 = fmul double %126, %127
  %129 = fsub double %124, %128
  %130 = getelementptr [25 x double]* %ablock, i64 0, i64 19
  %131 = load double* %130, align 8
  %132 = load double* %22, align 8
  %133 = fmul double %131, %132
  %134 = fsub double %129, %133
  %135 = getelementptr [25 x double]* %ablock, i64 0, i64 24
  %136 = load double* %135, align 8
  %137 = load double* %28, align 8
  %138 = fmul double %136, %137
  %139 = fsub double %134, %138
  store double %139, double* %113, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @matmul_sub_([25 x double]* noalias %ablock, [25 x double]* noalias %bblock, [25 x double]* noalias %cblock) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds [25 x double]* %cblock, i64 0, i64 0
  %1 = load double* %0, align 8
  %2 = getelementptr inbounds [25 x double]* %ablock, i64 0, i64 0
  %3 = load double* %2, align 8
  %4 = getelementptr inbounds [25 x double]* %bblock, i64 0, i64 0
  %5 = load double* %4, align 8
  %6 = fmul double %3, %5
  %7 = fsub double %1, %6
  %8 = getelementptr [25 x double]* %ablock, i64 0, i64 5
  %9 = load double* %8, align 8
  %10 = getelementptr [25 x double]* %bblock, i64 0, i64 1
  %11 = load double* %10, align 8
  %12 = fmul double %9, %11
  %13 = fsub double %7, %12
  %14 = getelementptr [25 x double]* %ablock, i64 0, i64 10
  %15 = load double* %14, align 8
  %16 = getelementptr [25 x double]* %bblock, i64 0, i64 2
  %17 = load double* %16, align 8
  %18 = fmul double %15, %17
  %19 = fsub double %13, %18
  %20 = getelementptr [25 x double]* %ablock, i64 0, i64 15
  %21 = load double* %20, align 8
  %22 = getelementptr [25 x double]* %bblock, i64 0, i64 3
  %23 = load double* %22, align 8
  %24 = fmul double %21, %23
  %25 = fsub double %19, %24
  %26 = getelementptr [25 x double]* %ablock, i64 0, i64 20
  %27 = load double* %26, align 8
  %28 = getelementptr [25 x double]* %bblock, i64 0, i64 4
  %29 = load double* %28, align 8
  %30 = fmul double %27, %29
  %31 = fsub double %25, %30
  store double %31, double* %0, align 8
  %32 = getelementptr [25 x double]* %cblock, i64 0, i64 1
  %33 = load double* %32, align 8
  %34 = getelementptr [25 x double]* %ablock, i64 0, i64 1
  %35 = load double* %34, align 8
  %36 = load double* %4, align 8
  %37 = fmul double %35, %36
  %38 = fsub double %33, %37
  %39 = getelementptr [25 x double]* %ablock, i64 0, i64 6
  %40 = load double* %39, align 8
  %41 = load double* %10, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %38, %42
  %44 = getelementptr [25 x double]* %ablock, i64 0, i64 11
  %45 = load double* %44, align 8
  %46 = load double* %16, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %43, %47
  %49 = getelementptr [25 x double]* %ablock, i64 0, i64 16
  %50 = load double* %49, align 8
  %51 = load double* %22, align 8
  %52 = fmul double %50, %51
  %53 = fsub double %48, %52
  %54 = getelementptr [25 x double]* %ablock, i64 0, i64 21
  %55 = load double* %54, align 8
  %56 = load double* %28, align 8
  %57 = fmul double %55, %56
  %58 = fsub double %53, %57
  store double %58, double* %32, align 8
  %59 = getelementptr [25 x double]* %cblock, i64 0, i64 2
  %60 = load double* %59, align 8
  %61 = getelementptr [25 x double]* %ablock, i64 0, i64 2
  %62 = load double* %61, align 8
  %63 = load double* %4, align 8
  %64 = fmul double %62, %63
  %65 = fsub double %60, %64
  %66 = getelementptr [25 x double]* %ablock, i64 0, i64 7
  %67 = load double* %66, align 8
  %68 = load double* %10, align 8
  %69 = fmul double %67, %68
  %70 = fsub double %65, %69
  %71 = getelementptr [25 x double]* %ablock, i64 0, i64 12
  %72 = load double* %71, align 8
  %73 = load double* %16, align 8
  %74 = fmul double %72, %73
  %75 = fsub double %70, %74
  %76 = getelementptr [25 x double]* %ablock, i64 0, i64 17
  %77 = load double* %76, align 8
  %78 = load double* %22, align 8
  %79 = fmul double %77, %78
  %80 = fsub double %75, %79
  %81 = getelementptr [25 x double]* %ablock, i64 0, i64 22
  %82 = load double* %81, align 8
  %83 = load double* %28, align 8
  %84 = fmul double %82, %83
  %85 = fsub double %80, %84
  store double %85, double* %59, align 8
  %86 = getelementptr [25 x double]* %cblock, i64 0, i64 3
  %87 = load double* %86, align 8
  %88 = getelementptr [25 x double]* %ablock, i64 0, i64 3
  %89 = load double* %88, align 8
  %90 = load double* %4, align 8
  %91 = fmul double %89, %90
  %92 = fsub double %87, %91
  %93 = getelementptr [25 x double]* %ablock, i64 0, i64 8
  %94 = load double* %93, align 8
  %95 = load double* %10, align 8
  %96 = fmul double %94, %95
  %97 = fsub double %92, %96
  %98 = getelementptr [25 x double]* %ablock, i64 0, i64 13
  %99 = load double* %98, align 8
  %100 = load double* %16, align 8
  %101 = fmul double %99, %100
  %102 = fsub double %97, %101
  %103 = getelementptr [25 x double]* %ablock, i64 0, i64 18
  %104 = load double* %103, align 8
  %105 = load double* %22, align 8
  %106 = fmul double %104, %105
  %107 = fsub double %102, %106
  %108 = getelementptr [25 x double]* %ablock, i64 0, i64 23
  %109 = load double* %108, align 8
  %110 = load double* %28, align 8
  %111 = fmul double %109, %110
  %112 = fsub double %107, %111
  store double %112, double* %86, align 8
  %113 = getelementptr [25 x double]* %cblock, i64 0, i64 4
  %114 = load double* %113, align 8
  %115 = getelementptr [25 x double]* %ablock, i64 0, i64 4
  %116 = load double* %115, align 8
  %117 = load double* %4, align 8
  %118 = fmul double %116, %117
  %119 = fsub double %114, %118
  %120 = getelementptr [25 x double]* %ablock, i64 0, i64 9
  %121 = load double* %120, align 8
  %122 = load double* %10, align 8
  %123 = fmul double %121, %122
  %124 = fsub double %119, %123
  %125 = getelementptr [25 x double]* %ablock, i64 0, i64 14
  %126 = load double* %125, align 8
  %127 = load double* %16, align 8
  %128 = fmul double %126, %127
  %129 = fsub double %124, %128
  %130 = getelementptr [25 x double]* %ablock, i64 0, i64 19
  %131 = load double* %130, align 8
  %132 = load double* %22, align 8
  %133 = fmul double %131, %132
  %134 = fsub double %129, %133
  %135 = getelementptr [25 x double]* %ablock, i64 0, i64 24
  %136 = load double* %135, align 8
  %137 = load double* %28, align 8
  %138 = fmul double %136, %137
  %139 = fsub double %134, %138
  store double %139, double* %113, align 8
  %140 = getelementptr [25 x double]* %cblock, i64 0, i64 5
  %141 = load double* %140, align 8
  %142 = load double* %2, align 8
  %143 = getelementptr [25 x double]* %bblock, i64 0, i64 5
  %144 = load double* %143, align 8
  %145 = fmul double %142, %144
  %146 = fsub double %141, %145
  %147 = load double* %8, align 8
  %148 = getelementptr [25 x double]* %bblock, i64 0, i64 6
  %149 = load double* %148, align 8
  %150 = fmul double %147, %149
  %151 = fsub double %146, %150
  %152 = load double* %14, align 8
  %153 = getelementptr [25 x double]* %bblock, i64 0, i64 7
  %154 = load double* %153, align 8
  %155 = fmul double %152, %154
  %156 = fsub double %151, %155
  %157 = load double* %20, align 8
  %158 = getelementptr [25 x double]* %bblock, i64 0, i64 8
  %159 = load double* %158, align 8
  %160 = fmul double %157, %159
  %161 = fsub double %156, %160
  %162 = load double* %26, align 8
  %163 = getelementptr [25 x double]* %bblock, i64 0, i64 9
  %164 = load double* %163, align 8
  %165 = fmul double %162, %164
  %166 = fsub double %161, %165
  store double %166, double* %140, align 8
  %167 = getelementptr [25 x double]* %cblock, i64 0, i64 6
  %168 = load double* %167, align 8
  %169 = load double* %34, align 8
  %170 = load double* %143, align 8
  %171 = fmul double %169, %170
  %172 = fsub double %168, %171
  %173 = load double* %39, align 8
  %174 = load double* %148, align 8
  %175 = fmul double %173, %174
  %176 = fsub double %172, %175
  %177 = load double* %44, align 8
  %178 = load double* %153, align 8
  %179 = fmul double %177, %178
  %180 = fsub double %176, %179
  %181 = load double* %49, align 8
  %182 = load double* %158, align 8
  %183 = fmul double %181, %182
  %184 = fsub double %180, %183
  %185 = load double* %54, align 8
  %186 = load double* %163, align 8
  %187 = fmul double %185, %186
  %188 = fsub double %184, %187
  store double %188, double* %167, align 8
  %189 = getelementptr [25 x double]* %cblock, i64 0, i64 7
  %190 = load double* %189, align 8
  %191 = load double* %61, align 8
  %192 = load double* %143, align 8
  %193 = fmul double %191, %192
  %194 = fsub double %190, %193
  %195 = load double* %66, align 8
  %196 = load double* %148, align 8
  %197 = fmul double %195, %196
  %198 = fsub double %194, %197
  %199 = load double* %71, align 8
  %200 = load double* %153, align 8
  %201 = fmul double %199, %200
  %202 = fsub double %198, %201
  %203 = load double* %76, align 8
  %204 = load double* %158, align 8
  %205 = fmul double %203, %204
  %206 = fsub double %202, %205
  %207 = load double* %81, align 8
  %208 = load double* %163, align 8
  %209 = fmul double %207, %208
  %210 = fsub double %206, %209
  store double %210, double* %189, align 8
  %211 = getelementptr [25 x double]* %cblock, i64 0, i64 8
  %212 = load double* %211, align 8
  %213 = load double* %88, align 8
  %214 = load double* %143, align 8
  %215 = fmul double %213, %214
  %216 = fsub double %212, %215
  %217 = load double* %93, align 8
  %218 = load double* %148, align 8
  %219 = fmul double %217, %218
  %220 = fsub double %216, %219
  %221 = load double* %98, align 8
  %222 = load double* %153, align 8
  %223 = fmul double %221, %222
  %224 = fsub double %220, %223
  %225 = load double* %103, align 8
  %226 = load double* %158, align 8
  %227 = fmul double %225, %226
  %228 = fsub double %224, %227
  %229 = load double* %108, align 8
  %230 = load double* %163, align 8
  %231 = fmul double %229, %230
  %232 = fsub double %228, %231
  store double %232, double* %211, align 8
  %233 = getelementptr [25 x double]* %cblock, i64 0, i64 9
  %234 = load double* %233, align 8
  %235 = load double* %115, align 8
  %236 = load double* %143, align 8
  %237 = fmul double %235, %236
  %238 = fsub double %234, %237
  %239 = load double* %120, align 8
  %240 = load double* %148, align 8
  %241 = fmul double %239, %240
  %242 = fsub double %238, %241
  %243 = load double* %125, align 8
  %244 = load double* %153, align 8
  %245 = fmul double %243, %244
  %246 = fsub double %242, %245
  %247 = load double* %130, align 8
  %248 = load double* %158, align 8
  %249 = fmul double %247, %248
  %250 = fsub double %246, %249
  %251 = load double* %135, align 8
  %252 = load double* %163, align 8
  %253 = fmul double %251, %252
  %254 = fsub double %250, %253
  store double %254, double* %233, align 8
  %255 = getelementptr [25 x double]* %cblock, i64 0, i64 10
  %256 = load double* %255, align 8
  %257 = load double* %2, align 8
  %258 = getelementptr [25 x double]* %bblock, i64 0, i64 10
  %259 = load double* %258, align 8
  %260 = fmul double %257, %259
  %261 = fsub double %256, %260
  %262 = load double* %8, align 8
  %263 = getelementptr [25 x double]* %bblock, i64 0, i64 11
  %264 = load double* %263, align 8
  %265 = fmul double %262, %264
  %266 = fsub double %261, %265
  %267 = load double* %14, align 8
  %268 = getelementptr [25 x double]* %bblock, i64 0, i64 12
  %269 = load double* %268, align 8
  %270 = fmul double %267, %269
  %271 = fsub double %266, %270
  %272 = load double* %20, align 8
  %273 = getelementptr [25 x double]* %bblock, i64 0, i64 13
  %274 = load double* %273, align 8
  %275 = fmul double %272, %274
  %276 = fsub double %271, %275
  %277 = load double* %26, align 8
  %278 = getelementptr [25 x double]* %bblock, i64 0, i64 14
  %279 = load double* %278, align 8
  %280 = fmul double %277, %279
  %281 = fsub double %276, %280
  store double %281, double* %255, align 8
  %282 = getelementptr [25 x double]* %cblock, i64 0, i64 11
  %283 = load double* %282, align 8
  %284 = load double* %34, align 8
  %285 = load double* %258, align 8
  %286 = fmul double %284, %285
  %287 = fsub double %283, %286
  %288 = load double* %39, align 8
  %289 = load double* %263, align 8
  %290 = fmul double %288, %289
  %291 = fsub double %287, %290
  %292 = load double* %44, align 8
  %293 = load double* %268, align 8
  %294 = fmul double %292, %293
  %295 = fsub double %291, %294
  %296 = load double* %49, align 8
  %297 = load double* %273, align 8
  %298 = fmul double %296, %297
  %299 = fsub double %295, %298
  %300 = load double* %54, align 8
  %301 = load double* %278, align 8
  %302 = fmul double %300, %301
  %303 = fsub double %299, %302
  store double %303, double* %282, align 8
  %304 = getelementptr [25 x double]* %cblock, i64 0, i64 12
  %305 = load double* %304, align 8
  %306 = load double* %61, align 8
  %307 = load double* %258, align 8
  %308 = fmul double %306, %307
  %309 = fsub double %305, %308
  %310 = load double* %66, align 8
  %311 = load double* %263, align 8
  %312 = fmul double %310, %311
  %313 = fsub double %309, %312
  %314 = load double* %71, align 8
  %315 = load double* %268, align 8
  %316 = fmul double %314, %315
  %317 = fsub double %313, %316
  %318 = load double* %76, align 8
  %319 = load double* %273, align 8
  %320 = fmul double %318, %319
  %321 = fsub double %317, %320
  %322 = load double* %81, align 8
  %323 = load double* %278, align 8
  %324 = fmul double %322, %323
  %325 = fsub double %321, %324
  store double %325, double* %304, align 8
  %326 = getelementptr [25 x double]* %cblock, i64 0, i64 13
  %327 = load double* %326, align 8
  %328 = load double* %88, align 8
  %329 = load double* %258, align 8
  %330 = fmul double %328, %329
  %331 = fsub double %327, %330
  %332 = load double* %93, align 8
  %333 = load double* %263, align 8
  %334 = fmul double %332, %333
  %335 = fsub double %331, %334
  %336 = load double* %98, align 8
  %337 = load double* %268, align 8
  %338 = fmul double %336, %337
  %339 = fsub double %335, %338
  %340 = load double* %103, align 8
  %341 = load double* %273, align 8
  %342 = fmul double %340, %341
  %343 = fsub double %339, %342
  %344 = load double* %108, align 8
  %345 = load double* %278, align 8
  %346 = fmul double %344, %345
  %347 = fsub double %343, %346
  store double %347, double* %326, align 8
  %348 = getelementptr [25 x double]* %cblock, i64 0, i64 14
  %349 = load double* %348, align 8
  %350 = load double* %115, align 8
  %351 = load double* %258, align 8
  %352 = fmul double %350, %351
  %353 = fsub double %349, %352
  %354 = load double* %120, align 8
  %355 = load double* %263, align 8
  %356 = fmul double %354, %355
  %357 = fsub double %353, %356
  %358 = load double* %125, align 8
  %359 = load double* %268, align 8
  %360 = fmul double %358, %359
  %361 = fsub double %357, %360
  %362 = load double* %130, align 8
  %363 = load double* %273, align 8
  %364 = fmul double %362, %363
  %365 = fsub double %361, %364
  %366 = load double* %135, align 8
  %367 = load double* %278, align 8
  %368 = fmul double %366, %367
  %369 = fsub double %365, %368
  store double %369, double* %348, align 8
  %370 = getelementptr [25 x double]* %cblock, i64 0, i64 15
  %371 = load double* %370, align 8
  %372 = load double* %2, align 8
  %373 = getelementptr [25 x double]* %bblock, i64 0, i64 15
  %374 = load double* %373, align 8
  %375 = fmul double %372, %374
  %376 = fsub double %371, %375
  %377 = load double* %8, align 8
  %378 = getelementptr [25 x double]* %bblock, i64 0, i64 16
  %379 = load double* %378, align 8
  %380 = fmul double %377, %379
  %381 = fsub double %376, %380
  %382 = load double* %14, align 8
  %383 = getelementptr [25 x double]* %bblock, i64 0, i64 17
  %384 = load double* %383, align 8
  %385 = fmul double %382, %384
  %386 = fsub double %381, %385
  %387 = load double* %20, align 8
  %388 = getelementptr [25 x double]* %bblock, i64 0, i64 18
  %389 = load double* %388, align 8
  %390 = fmul double %387, %389
  %391 = fsub double %386, %390
  %392 = load double* %26, align 8
  %393 = getelementptr [25 x double]* %bblock, i64 0, i64 19
  %394 = load double* %393, align 8
  %395 = fmul double %392, %394
  %396 = fsub double %391, %395
  store double %396, double* %370, align 8
  %397 = getelementptr [25 x double]* %cblock, i64 0, i64 16
  %398 = load double* %397, align 8
  %399 = load double* %34, align 8
  %400 = load double* %373, align 8
  %401 = fmul double %399, %400
  %402 = fsub double %398, %401
  %403 = load double* %39, align 8
  %404 = load double* %378, align 8
  %405 = fmul double %403, %404
  %406 = fsub double %402, %405
  %407 = load double* %44, align 8
  %408 = load double* %383, align 8
  %409 = fmul double %407, %408
  %410 = fsub double %406, %409
  %411 = load double* %49, align 8
  %412 = load double* %388, align 8
  %413 = fmul double %411, %412
  %414 = fsub double %410, %413
  %415 = load double* %54, align 8
  %416 = load double* %393, align 8
  %417 = fmul double %415, %416
  %418 = fsub double %414, %417
  store double %418, double* %397, align 8
  %419 = getelementptr [25 x double]* %cblock, i64 0, i64 17
  %420 = load double* %419, align 8
  %421 = load double* %61, align 8
  %422 = load double* %373, align 8
  %423 = fmul double %421, %422
  %424 = fsub double %420, %423
  %425 = load double* %66, align 8
  %426 = load double* %378, align 8
  %427 = fmul double %425, %426
  %428 = fsub double %424, %427
  %429 = load double* %71, align 8
  %430 = load double* %383, align 8
  %431 = fmul double %429, %430
  %432 = fsub double %428, %431
  %433 = load double* %76, align 8
  %434 = load double* %388, align 8
  %435 = fmul double %433, %434
  %436 = fsub double %432, %435
  %437 = load double* %81, align 8
  %438 = load double* %393, align 8
  %439 = fmul double %437, %438
  %440 = fsub double %436, %439
  store double %440, double* %419, align 8
  %441 = getelementptr [25 x double]* %cblock, i64 0, i64 18
  %442 = load double* %441, align 8
  %443 = load double* %88, align 8
  %444 = load double* %373, align 8
  %445 = fmul double %443, %444
  %446 = fsub double %442, %445
  %447 = load double* %93, align 8
  %448 = load double* %378, align 8
  %449 = fmul double %447, %448
  %450 = fsub double %446, %449
  %451 = load double* %98, align 8
  %452 = load double* %383, align 8
  %453 = fmul double %451, %452
  %454 = fsub double %450, %453
  %455 = load double* %103, align 8
  %456 = load double* %388, align 8
  %457 = fmul double %455, %456
  %458 = fsub double %454, %457
  %459 = load double* %108, align 8
  %460 = load double* %393, align 8
  %461 = fmul double %459, %460
  %462 = fsub double %458, %461
  store double %462, double* %441, align 8
  %463 = getelementptr [25 x double]* %cblock, i64 0, i64 19
  %464 = load double* %463, align 8
  %465 = load double* %115, align 8
  %466 = load double* %373, align 8
  %467 = fmul double %465, %466
  %468 = fsub double %464, %467
  %469 = load double* %120, align 8
  %470 = load double* %378, align 8
  %471 = fmul double %469, %470
  %472 = fsub double %468, %471
  %473 = load double* %125, align 8
  %474 = load double* %383, align 8
  %475 = fmul double %473, %474
  %476 = fsub double %472, %475
  %477 = load double* %130, align 8
  %478 = load double* %388, align 8
  %479 = fmul double %477, %478
  %480 = fsub double %476, %479
  %481 = load double* %135, align 8
  %482 = load double* %393, align 8
  %483 = fmul double %481, %482
  %484 = fsub double %480, %483
  store double %484, double* %463, align 8
  %485 = getelementptr [25 x double]* %cblock, i64 0, i64 20
  %486 = load double* %485, align 8
  %487 = load double* %2, align 8
  %488 = getelementptr [25 x double]* %bblock, i64 0, i64 20
  %489 = load double* %488, align 8
  %490 = fmul double %487, %489
  %491 = fsub double %486, %490
  %492 = load double* %8, align 8
  %493 = getelementptr [25 x double]* %bblock, i64 0, i64 21
  %494 = load double* %493, align 8
  %495 = fmul double %492, %494
  %496 = fsub double %491, %495
  %497 = load double* %14, align 8
  %498 = getelementptr [25 x double]* %bblock, i64 0, i64 22
  %499 = load double* %498, align 8
  %500 = fmul double %497, %499
  %501 = fsub double %496, %500
  %502 = load double* %20, align 8
  %503 = getelementptr [25 x double]* %bblock, i64 0, i64 23
  %504 = load double* %503, align 8
  %505 = fmul double %502, %504
  %506 = fsub double %501, %505
  %507 = load double* %26, align 8
  %508 = getelementptr [25 x double]* %bblock, i64 0, i64 24
  %509 = load double* %508, align 8
  %510 = fmul double %507, %509
  %511 = fsub double %506, %510
  store double %511, double* %485, align 8
  %512 = getelementptr [25 x double]* %cblock, i64 0, i64 21
  %513 = load double* %512, align 8
  %514 = load double* %34, align 8
  %515 = load double* %488, align 8
  %516 = fmul double %514, %515
  %517 = fsub double %513, %516
  %518 = load double* %39, align 8
  %519 = load double* %493, align 8
  %520 = fmul double %518, %519
  %521 = fsub double %517, %520
  %522 = load double* %44, align 8
  %523 = load double* %498, align 8
  %524 = fmul double %522, %523
  %525 = fsub double %521, %524
  %526 = load double* %49, align 8
  %527 = load double* %503, align 8
  %528 = fmul double %526, %527
  %529 = fsub double %525, %528
  %530 = load double* %54, align 8
  %531 = load double* %508, align 8
  %532 = fmul double %530, %531
  %533 = fsub double %529, %532
  store double %533, double* %512, align 8
  %534 = getelementptr [25 x double]* %cblock, i64 0, i64 22
  %535 = load double* %534, align 8
  %536 = load double* %61, align 8
  %537 = load double* %488, align 8
  %538 = fmul double %536, %537
  %539 = fsub double %535, %538
  %540 = load double* %66, align 8
  %541 = load double* %493, align 8
  %542 = fmul double %540, %541
  %543 = fsub double %539, %542
  %544 = load double* %71, align 8
  %545 = load double* %498, align 8
  %546 = fmul double %544, %545
  %547 = fsub double %543, %546
  %548 = load double* %76, align 8
  %549 = load double* %503, align 8
  %550 = fmul double %548, %549
  %551 = fsub double %547, %550
  %552 = load double* %81, align 8
  %553 = load double* %508, align 8
  %554 = fmul double %552, %553
  %555 = fsub double %551, %554
  store double %555, double* %534, align 8
  %556 = getelementptr [25 x double]* %cblock, i64 0, i64 23
  %557 = load double* %556, align 8
  %558 = load double* %88, align 8
  %559 = load double* %488, align 8
  %560 = fmul double %558, %559
  %561 = fsub double %557, %560
  %562 = load double* %93, align 8
  %563 = load double* %493, align 8
  %564 = fmul double %562, %563
  %565 = fsub double %561, %564
  %566 = load double* %98, align 8
  %567 = load double* %498, align 8
  %568 = fmul double %566, %567
  %569 = fsub double %565, %568
  %570 = load double* %103, align 8
  %571 = load double* %503, align 8
  %572 = fmul double %570, %571
  %573 = fsub double %569, %572
  %574 = load double* %108, align 8
  %575 = load double* %508, align 8
  %576 = fmul double %574, %575
  %577 = fsub double %573, %576
  store double %577, double* %556, align 8
  %578 = getelementptr [25 x double]* %cblock, i64 0, i64 24
  %579 = load double* %578, align 8
  %580 = load double* %115, align 8
  %581 = load double* %488, align 8
  %582 = fmul double %580, %581
  %583 = fsub double %579, %582
  %584 = load double* %120, align 8
  %585 = load double* %493, align 8
  %586 = fmul double %584, %585
  %587 = fsub double %583, %586
  %588 = load double* %125, align 8
  %589 = load double* %498, align 8
  %590 = fmul double %588, %589
  %591 = fsub double %587, %590
  %592 = load double* %130, align 8
  %593 = load double* %503, align 8
  %594 = fmul double %592, %593
  %595 = fsub double %591, %594
  %596 = load double* %135, align 8
  %597 = load double* %508, align 8
  %598 = fmul double %596, %597
  %599 = fsub double %595, %598
  store double %599, double* %578, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @binvcrhs_([25 x double]* noalias %lhs, [25 x double]* noalias %c, [5 x double]* noalias nocapture %r) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds [25 x double]* %lhs, i64 0, i64 0
  %1 = load double* %0, align 8
  %2 = fdiv double 1.000000e+00, %1
  %3 = getelementptr [25 x double]* %lhs, i64 0, i64 5
  %4 = load double* %3, align 8
  %5 = fmul double %2, %4
  store double %5, double* %3, align 8
  %6 = getelementptr [25 x double]* %lhs, i64 0, i64 10
  %7 = load double* %6, align 8
  %8 = fmul double %2, %7
  store double %8, double* %6, align 8
  %9 = getelementptr [25 x double]* %lhs, i64 0, i64 15
  %10 = load double* %9, align 8
  %11 = fmul double %2, %10
  store double %11, double* %9, align 8
  %12 = getelementptr [25 x double]* %lhs, i64 0, i64 20
  %13 = load double* %12, align 8
  %14 = fmul double %2, %13
  store double %14, double* %12, align 8
  %15 = getelementptr inbounds [25 x double]* %c, i64 0, i64 0
  %16 = load double* %15, align 8
  %17 = fmul double %2, %16
  store double %17, double* %15, align 8
  %18 = getelementptr [25 x double]* %c, i64 0, i64 5
  %19 = load double* %18, align 8
  %20 = fmul double %2, %19
  store double %20, double* %18, align 8
  %21 = getelementptr [25 x double]* %c, i64 0, i64 10
  %22 = load double* %21, align 8
  %23 = fmul double %2, %22
  store double %23, double* %21, align 8
  %24 = getelementptr [25 x double]* %c, i64 0, i64 15
  %25 = load double* %24, align 8
  %26 = fmul double %2, %25
  store double %26, double* %24, align 8
  %27 = getelementptr [25 x double]* %c, i64 0, i64 20
  %28 = load double* %27, align 8
  %29 = fmul double %2, %28
  store double %29, double* %27, align 8
  %30 = getelementptr inbounds [5 x double]* %r, i64 0, i64 0
  %31 = load double* %30, align 8
  %32 = fmul double %2, %31
  store double %32, double* %30, align 8
  %33 = getelementptr [25 x double]* %lhs, i64 0, i64 1
  %34 = load double* %33, align 8
  %35 = getelementptr [25 x double]* %lhs, i64 0, i64 6
  %36 = load double* %35, align 8
  %37 = load double* %3, align 8
  %38 = fmul double %34, %37
  %39 = fsub double %36, %38
  store double %39, double* %35, align 8
  %40 = getelementptr [25 x double]* %lhs, i64 0, i64 11
  %41 = load double* %40, align 8
  %42 = load double* %6, align 8
  %43 = fmul double %34, %42
  %44 = fsub double %41, %43
  store double %44, double* %40, align 8
  %45 = getelementptr [25 x double]* %lhs, i64 0, i64 16
  %46 = load double* %45, align 8
  %47 = load double* %9, align 8
  %48 = fmul double %34, %47
  %49 = fsub double %46, %48
  store double %49, double* %45, align 8
  %50 = getelementptr [25 x double]* %lhs, i64 0, i64 21
  %51 = load double* %50, align 8
  %52 = load double* %12, align 8
  %53 = fmul double %34, %52
  %54 = fsub double %51, %53
  store double %54, double* %50, align 8
  %55 = getelementptr [25 x double]* %c, i64 0, i64 1
  %56 = load double* %55, align 8
  %57 = load double* %15, align 8
  %58 = fmul double %34, %57
  %59 = fsub double %56, %58
  store double %59, double* %55, align 8
  %60 = getelementptr [25 x double]* %c, i64 0, i64 6
  %61 = load double* %60, align 8
  %62 = load double* %18, align 8
  %63 = fmul double %34, %62
  %64 = fsub double %61, %63
  store double %64, double* %60, align 8
  %65 = getelementptr [25 x double]* %c, i64 0, i64 11
  %66 = load double* %65, align 8
  %67 = load double* %21, align 8
  %68 = fmul double %34, %67
  %69 = fsub double %66, %68
  store double %69, double* %65, align 8
  %70 = getelementptr [25 x double]* %c, i64 0, i64 16
  %71 = load double* %70, align 8
  %72 = load double* %24, align 8
  %73 = fmul double %34, %72
  %74 = fsub double %71, %73
  store double %74, double* %70, align 8
  %75 = getelementptr [25 x double]* %c, i64 0, i64 21
  %76 = load double* %75, align 8
  %77 = load double* %27, align 8
  %78 = fmul double %34, %77
  %79 = fsub double %76, %78
  store double %79, double* %75, align 8
  %80 = getelementptr [5 x double]* %r, i64 0, i64 1
  %81 = load double* %80, align 8
  %82 = load double* %30, align 8
  %83 = fmul double %34, %82
  %84 = fsub double %81, %83
  store double %84, double* %80, align 8
  %85 = getelementptr [25 x double]* %lhs, i64 0, i64 2
  %86 = load double* %85, align 8
  %87 = getelementptr [25 x double]* %lhs, i64 0, i64 7
  %88 = load double* %87, align 8
  %89 = load double* %3, align 8
  %90 = fmul double %86, %89
  %91 = fsub double %88, %90
  store double %91, double* %87, align 8
  %92 = getelementptr [25 x double]* %lhs, i64 0, i64 12
  %93 = load double* %92, align 8
  %94 = load double* %6, align 8
  %95 = fmul double %86, %94
  %96 = fsub double %93, %95
  store double %96, double* %92, align 8
  %97 = getelementptr [25 x double]* %lhs, i64 0, i64 17
  %98 = load double* %97, align 8
  %99 = load double* %9, align 8
  %100 = fmul double %86, %99
  %101 = fsub double %98, %100
  store double %101, double* %97, align 8
  %102 = getelementptr [25 x double]* %lhs, i64 0, i64 22
  %103 = load double* %102, align 8
  %104 = load double* %12, align 8
  %105 = fmul double %86, %104
  %106 = fsub double %103, %105
  store double %106, double* %102, align 8
  %107 = getelementptr [25 x double]* %c, i64 0, i64 2
  %108 = load double* %107, align 8
  %109 = load double* %15, align 8
  %110 = fmul double %86, %109
  %111 = fsub double %108, %110
  store double %111, double* %107, align 8
  %112 = getelementptr [25 x double]* %c, i64 0, i64 7
  %113 = load double* %112, align 8
  %114 = load double* %18, align 8
  %115 = fmul double %86, %114
  %116 = fsub double %113, %115
  store double %116, double* %112, align 8
  %117 = getelementptr [25 x double]* %c, i64 0, i64 12
  %118 = load double* %117, align 8
  %119 = load double* %21, align 8
  %120 = fmul double %86, %119
  %121 = fsub double %118, %120
  store double %121, double* %117, align 8
  %122 = getelementptr [25 x double]* %c, i64 0, i64 17
  %123 = load double* %122, align 8
  %124 = load double* %24, align 8
  %125 = fmul double %86, %124
  %126 = fsub double %123, %125
  store double %126, double* %122, align 8
  %127 = getelementptr [25 x double]* %c, i64 0, i64 22
  %128 = load double* %127, align 8
  %129 = load double* %27, align 8
  %130 = fmul double %86, %129
  %131 = fsub double %128, %130
  store double %131, double* %127, align 8
  %132 = getelementptr [5 x double]* %r, i64 0, i64 2
  %133 = load double* %132, align 8
  %134 = load double* %30, align 8
  %135 = fmul double %86, %134
  %136 = fsub double %133, %135
  store double %136, double* %132, align 8
  %137 = getelementptr [25 x double]* %lhs, i64 0, i64 3
  %138 = load double* %137, align 8
  %139 = getelementptr [25 x double]* %lhs, i64 0, i64 8
  %140 = load double* %139, align 8
  %141 = load double* %3, align 8
  %142 = fmul double %138, %141
  %143 = fsub double %140, %142
  store double %143, double* %139, align 8
  %144 = getelementptr [25 x double]* %lhs, i64 0, i64 13
  %145 = load double* %144, align 8
  %146 = load double* %6, align 8
  %147 = fmul double %138, %146
  %148 = fsub double %145, %147
  store double %148, double* %144, align 8
  %149 = getelementptr [25 x double]* %lhs, i64 0, i64 18
  %150 = load double* %149, align 8
  %151 = load double* %9, align 8
  %152 = fmul double %138, %151
  %153 = fsub double %150, %152
  store double %153, double* %149, align 8
  %154 = getelementptr [25 x double]* %lhs, i64 0, i64 23
  %155 = load double* %154, align 8
  %156 = load double* %12, align 8
  %157 = fmul double %138, %156
  %158 = fsub double %155, %157
  store double %158, double* %154, align 8
  %159 = getelementptr [25 x double]* %c, i64 0, i64 3
  %160 = load double* %159, align 8
  %161 = load double* %15, align 8
  %162 = fmul double %138, %161
  %163 = fsub double %160, %162
  store double %163, double* %159, align 8
  %164 = getelementptr [25 x double]* %c, i64 0, i64 8
  %165 = load double* %164, align 8
  %166 = load double* %18, align 8
  %167 = fmul double %138, %166
  %168 = fsub double %165, %167
  store double %168, double* %164, align 8
  %169 = getelementptr [25 x double]* %c, i64 0, i64 13
  %170 = load double* %169, align 8
  %171 = load double* %21, align 8
  %172 = fmul double %138, %171
  %173 = fsub double %170, %172
  store double %173, double* %169, align 8
  %174 = getelementptr [25 x double]* %c, i64 0, i64 18
  %175 = load double* %174, align 8
  %176 = load double* %24, align 8
  %177 = fmul double %138, %176
  %178 = fsub double %175, %177
  store double %178, double* %174, align 8
  %179 = getelementptr [25 x double]* %c, i64 0, i64 23
  %180 = load double* %179, align 8
  %181 = load double* %27, align 8
  %182 = fmul double %138, %181
  %183 = fsub double %180, %182
  store double %183, double* %179, align 8
  %184 = getelementptr [5 x double]* %r, i64 0, i64 3
  %185 = load double* %184, align 8
  %186 = load double* %30, align 8
  %187 = fmul double %138, %186
  %188 = fsub double %185, %187
  store double %188, double* %184, align 8
  %189 = getelementptr [25 x double]* %lhs, i64 0, i64 4
  %190 = load double* %189, align 8
  %191 = getelementptr [25 x double]* %lhs, i64 0, i64 9
  %192 = load double* %191, align 8
  %193 = load double* %3, align 8
  %194 = fmul double %190, %193
  %195 = fsub double %192, %194
  store double %195, double* %191, align 8
  %196 = getelementptr [25 x double]* %lhs, i64 0, i64 14
  %197 = load double* %196, align 8
  %198 = load double* %6, align 8
  %199 = fmul double %190, %198
  %200 = fsub double %197, %199
  store double %200, double* %196, align 8
  %201 = getelementptr [25 x double]* %lhs, i64 0, i64 19
  %202 = load double* %201, align 8
  %203 = load double* %9, align 8
  %204 = fmul double %190, %203
  %205 = fsub double %202, %204
  store double %205, double* %201, align 8
  %206 = getelementptr [25 x double]* %lhs, i64 0, i64 24
  %207 = load double* %206, align 8
  %208 = load double* %12, align 8
  %209 = fmul double %190, %208
  %210 = fsub double %207, %209
  store double %210, double* %206, align 8
  %211 = getelementptr [25 x double]* %c, i64 0, i64 4
  %212 = load double* %211, align 8
  %213 = load double* %15, align 8
  %214 = fmul double %190, %213
  %215 = fsub double %212, %214
  store double %215, double* %211, align 8
  %216 = getelementptr [25 x double]* %c, i64 0, i64 9
  %217 = load double* %216, align 8
  %218 = load double* %18, align 8
  %219 = fmul double %190, %218
  %220 = fsub double %217, %219
  store double %220, double* %216, align 8
  %221 = getelementptr [25 x double]* %c, i64 0, i64 14
  %222 = load double* %221, align 8
  %223 = load double* %21, align 8
  %224 = fmul double %190, %223
  %225 = fsub double %222, %224
  store double %225, double* %221, align 8
  %226 = getelementptr [25 x double]* %c, i64 0, i64 19
  %227 = load double* %226, align 8
  %228 = load double* %24, align 8
  %229 = fmul double %190, %228
  %230 = fsub double %227, %229
  store double %230, double* %226, align 8
  %231 = getelementptr [25 x double]* %c, i64 0, i64 24
  %232 = load double* %231, align 8
  %233 = load double* %27, align 8
  %234 = fmul double %190, %233
  %235 = fsub double %232, %234
  store double %235, double* %231, align 8
  %236 = getelementptr [5 x double]* %r, i64 0, i64 4
  %237 = load double* %236, align 8
  %238 = load double* %30, align 8
  %239 = fmul double %190, %238
  %240 = fsub double %237, %239
  store double %240, double* %236, align 8
  %241 = load double* %35, align 8
  %242 = fdiv double 1.000000e+00, %241
  %243 = load double* %40, align 8
  %244 = fmul double %242, %243
  store double %244, double* %40, align 8
  %245 = load double* %45, align 8
  %246 = fmul double %242, %245
  store double %246, double* %45, align 8
  %247 = load double* %50, align 8
  %248 = fmul double %242, %247
  store double %248, double* %50, align 8
  %249 = load double* %55, align 8
  %250 = fmul double %242, %249
  store double %250, double* %55, align 8
  %251 = load double* %60, align 8
  %252 = fmul double %242, %251
  store double %252, double* %60, align 8
  %253 = load double* %65, align 8
  %254 = fmul double %242, %253
  store double %254, double* %65, align 8
  %255 = load double* %70, align 8
  %256 = fmul double %242, %255
  store double %256, double* %70, align 8
  %257 = load double* %75, align 8
  %258 = fmul double %242, %257
  store double %258, double* %75, align 8
  %259 = load double* %80, align 8
  %260 = fmul double %242, %259
  store double %260, double* %80, align 8
  %261 = load double* %3, align 8
  %262 = load double* %6, align 8
  %263 = load double* %40, align 8
  %264 = fmul double %261, %263
  %265 = fsub double %262, %264
  store double %265, double* %6, align 8
  %266 = load double* %9, align 8
  %267 = load double* %45, align 8
  %268 = fmul double %261, %267
  %269 = fsub double %266, %268
  store double %269, double* %9, align 8
  %270 = load double* %12, align 8
  %271 = load double* %50, align 8
  %272 = fmul double %261, %271
  %273 = fsub double %270, %272
  store double %273, double* %12, align 8
  %274 = load double* %15, align 8
  %275 = load double* %55, align 8
  %276 = fmul double %261, %275
  %277 = fsub double %274, %276
  store double %277, double* %15, align 8
  %278 = load double* %18, align 8
  %279 = load double* %60, align 8
  %280 = fmul double %261, %279
  %281 = fsub double %278, %280
  store double %281, double* %18, align 8
  %282 = load double* %21, align 8
  %283 = load double* %65, align 8
  %284 = fmul double %261, %283
  %285 = fsub double %282, %284
  store double %285, double* %21, align 8
  %286 = load double* %24, align 8
  %287 = load double* %70, align 8
  %288 = fmul double %261, %287
  %289 = fsub double %286, %288
  store double %289, double* %24, align 8
  %290 = load double* %27, align 8
  %291 = load double* %75, align 8
  %292 = fmul double %261, %291
  %293 = fsub double %290, %292
  store double %293, double* %27, align 8
  %294 = load double* %30, align 8
  %295 = load double* %80, align 8
  %296 = fmul double %261, %295
  %297 = fsub double %294, %296
  store double %297, double* %30, align 8
  %298 = load double* %87, align 8
  %299 = load double* %92, align 8
  %300 = load double* %40, align 8
  %301 = fmul double %298, %300
  %302 = fsub double %299, %301
  store double %302, double* %92, align 8
  %303 = load double* %97, align 8
  %304 = load double* %45, align 8
  %305 = fmul double %298, %304
  %306 = fsub double %303, %305
  store double %306, double* %97, align 8
  %307 = load double* %102, align 8
  %308 = load double* %50, align 8
  %309 = fmul double %298, %308
  %310 = fsub double %307, %309
  store double %310, double* %102, align 8
  %311 = load double* %107, align 8
  %312 = load double* %55, align 8
  %313 = fmul double %298, %312
  %314 = fsub double %311, %313
  store double %314, double* %107, align 8
  %315 = load double* %112, align 8
  %316 = load double* %60, align 8
  %317 = fmul double %298, %316
  %318 = fsub double %315, %317
  store double %318, double* %112, align 8
  %319 = load double* %117, align 8
  %320 = load double* %65, align 8
  %321 = fmul double %298, %320
  %322 = fsub double %319, %321
  store double %322, double* %117, align 8
  %323 = load double* %122, align 8
  %324 = load double* %70, align 8
  %325 = fmul double %298, %324
  %326 = fsub double %323, %325
  store double %326, double* %122, align 8
  %327 = load double* %127, align 8
  %328 = load double* %75, align 8
  %329 = fmul double %298, %328
  %330 = fsub double %327, %329
  store double %330, double* %127, align 8
  %331 = load double* %132, align 8
  %332 = load double* %80, align 8
  %333 = fmul double %298, %332
  %334 = fsub double %331, %333
  store double %334, double* %132, align 8
  %335 = load double* %139, align 8
  %336 = load double* %144, align 8
  %337 = load double* %40, align 8
  %338 = fmul double %335, %337
  %339 = fsub double %336, %338
  store double %339, double* %144, align 8
  %340 = load double* %149, align 8
  %341 = load double* %45, align 8
  %342 = fmul double %335, %341
  %343 = fsub double %340, %342
  store double %343, double* %149, align 8
  %344 = load double* %154, align 8
  %345 = load double* %50, align 8
  %346 = fmul double %335, %345
  %347 = fsub double %344, %346
  store double %347, double* %154, align 8
  %348 = load double* %159, align 8
  %349 = load double* %55, align 8
  %350 = fmul double %335, %349
  %351 = fsub double %348, %350
  store double %351, double* %159, align 8
  %352 = load double* %164, align 8
  %353 = load double* %60, align 8
  %354 = fmul double %335, %353
  %355 = fsub double %352, %354
  store double %355, double* %164, align 8
  %356 = load double* %169, align 8
  %357 = load double* %65, align 8
  %358 = fmul double %335, %357
  %359 = fsub double %356, %358
  store double %359, double* %169, align 8
  %360 = load double* %174, align 8
  %361 = load double* %70, align 8
  %362 = fmul double %335, %361
  %363 = fsub double %360, %362
  store double %363, double* %174, align 8
  %364 = load double* %179, align 8
  %365 = load double* %75, align 8
  %366 = fmul double %335, %365
  %367 = fsub double %364, %366
  store double %367, double* %179, align 8
  %368 = load double* %184, align 8
  %369 = load double* %80, align 8
  %370 = fmul double %335, %369
  %371 = fsub double %368, %370
  store double %371, double* %184, align 8
  %372 = load double* %191, align 8
  %373 = load double* %196, align 8
  %374 = load double* %40, align 8
  %375 = fmul double %372, %374
  %376 = fsub double %373, %375
  store double %376, double* %196, align 8
  %377 = load double* %201, align 8
  %378 = load double* %45, align 8
  %379 = fmul double %372, %378
  %380 = fsub double %377, %379
  store double %380, double* %201, align 8
  %381 = load double* %206, align 8
  %382 = load double* %50, align 8
  %383 = fmul double %372, %382
  %384 = fsub double %381, %383
  store double %384, double* %206, align 8
  %385 = load double* %211, align 8
  %386 = load double* %55, align 8
  %387 = fmul double %372, %386
  %388 = fsub double %385, %387
  store double %388, double* %211, align 8
  %389 = load double* %216, align 8
  %390 = load double* %60, align 8
  %391 = fmul double %372, %390
  %392 = fsub double %389, %391
  store double %392, double* %216, align 8
  %393 = load double* %221, align 8
  %394 = load double* %65, align 8
  %395 = fmul double %372, %394
  %396 = fsub double %393, %395
  store double %396, double* %221, align 8
  %397 = load double* %226, align 8
  %398 = load double* %70, align 8
  %399 = fmul double %372, %398
  %400 = fsub double %397, %399
  store double %400, double* %226, align 8
  %401 = load double* %231, align 8
  %402 = load double* %75, align 8
  %403 = fmul double %372, %402
  %404 = fsub double %401, %403
  store double %404, double* %231, align 8
  %405 = load double* %236, align 8
  %406 = load double* %80, align 8
  %407 = fmul double %372, %406
  %408 = fsub double %405, %407
  store double %408, double* %236, align 8
  %409 = load double* %92, align 8
  %410 = fdiv double 1.000000e+00, %409
  %411 = load double* %97, align 8
  %412 = fmul double %410, %411
  store double %412, double* %97, align 8
  %413 = load double* %102, align 8
  %414 = fmul double %410, %413
  store double %414, double* %102, align 8
  %415 = load double* %107, align 8
  %416 = fmul double %410, %415
  store double %416, double* %107, align 8
  %417 = load double* %112, align 8
  %418 = fmul double %410, %417
  store double %418, double* %112, align 8
  %419 = load double* %117, align 8
  %420 = fmul double %410, %419
  store double %420, double* %117, align 8
  %421 = load double* %122, align 8
  %422 = fmul double %410, %421
  store double %422, double* %122, align 8
  %423 = load double* %127, align 8
  %424 = fmul double %410, %423
  store double %424, double* %127, align 8
  %425 = load double* %132, align 8
  %426 = fmul double %410, %425
  store double %426, double* %132, align 8
  %427 = load double* %6, align 8
  %428 = load double* %9, align 8
  %429 = load double* %97, align 8
  %430 = fmul double %427, %429
  %431 = fsub double %428, %430
  store double %431, double* %9, align 8
  %432 = load double* %12, align 8
  %433 = load double* %102, align 8
  %434 = fmul double %427, %433
  %435 = fsub double %432, %434
  store double %435, double* %12, align 8
  %436 = load double* %15, align 8
  %437 = load double* %107, align 8
  %438 = fmul double %427, %437
  %439 = fsub double %436, %438
  store double %439, double* %15, align 8
  %440 = load double* %18, align 8
  %441 = load double* %112, align 8
  %442 = fmul double %427, %441
  %443 = fsub double %440, %442
  store double %443, double* %18, align 8
  %444 = load double* %21, align 8
  %445 = load double* %117, align 8
  %446 = fmul double %427, %445
  %447 = fsub double %444, %446
  store double %447, double* %21, align 8
  %448 = load double* %24, align 8
  %449 = load double* %122, align 8
  %450 = fmul double %427, %449
  %451 = fsub double %448, %450
  store double %451, double* %24, align 8
  %452 = load double* %27, align 8
  %453 = load double* %127, align 8
  %454 = fmul double %427, %453
  %455 = fsub double %452, %454
  store double %455, double* %27, align 8
  %456 = load double* %30, align 8
  %457 = load double* %132, align 8
  %458 = fmul double %427, %457
  %459 = fsub double %456, %458
  store double %459, double* %30, align 8
  %460 = load double* %40, align 8
  %461 = load double* %45, align 8
  %462 = load double* %97, align 8
  %463 = fmul double %460, %462
  %464 = fsub double %461, %463
  store double %464, double* %45, align 8
  %465 = load double* %50, align 8
  %466 = load double* %102, align 8
  %467 = fmul double %460, %466
  %468 = fsub double %465, %467
  store double %468, double* %50, align 8
  %469 = load double* %55, align 8
  %470 = load double* %107, align 8
  %471 = fmul double %460, %470
  %472 = fsub double %469, %471
  store double %472, double* %55, align 8
  %473 = load double* %60, align 8
  %474 = load double* %112, align 8
  %475 = fmul double %460, %474
  %476 = fsub double %473, %475
  store double %476, double* %60, align 8
  %477 = load double* %65, align 8
  %478 = load double* %117, align 8
  %479 = fmul double %460, %478
  %480 = fsub double %477, %479
  store double %480, double* %65, align 8
  %481 = load double* %70, align 8
  %482 = load double* %122, align 8
  %483 = fmul double %460, %482
  %484 = fsub double %481, %483
  store double %484, double* %70, align 8
  %485 = load double* %75, align 8
  %486 = load double* %127, align 8
  %487 = fmul double %460, %486
  %488 = fsub double %485, %487
  store double %488, double* %75, align 8
  %489 = load double* %80, align 8
  %490 = load double* %132, align 8
  %491 = fmul double %460, %490
  %492 = fsub double %489, %491
  store double %492, double* %80, align 8
  %493 = load double* %144, align 8
  %494 = load double* %149, align 8
  %495 = load double* %97, align 8
  %496 = fmul double %493, %495
  %497 = fsub double %494, %496
  store double %497, double* %149, align 8
  %498 = load double* %154, align 8
  %499 = load double* %102, align 8
  %500 = fmul double %493, %499
  %501 = fsub double %498, %500
  store double %501, double* %154, align 8
  %502 = load double* %159, align 8
  %503 = load double* %107, align 8
  %504 = fmul double %493, %503
  %505 = fsub double %502, %504
  store double %505, double* %159, align 8
  %506 = load double* %164, align 8
  %507 = load double* %112, align 8
  %508 = fmul double %493, %507
  %509 = fsub double %506, %508
  store double %509, double* %164, align 8
  %510 = load double* %169, align 8
  %511 = load double* %117, align 8
  %512 = fmul double %493, %511
  %513 = fsub double %510, %512
  store double %513, double* %169, align 8
  %514 = load double* %174, align 8
  %515 = load double* %122, align 8
  %516 = fmul double %493, %515
  %517 = fsub double %514, %516
  store double %517, double* %174, align 8
  %518 = load double* %179, align 8
  %519 = load double* %127, align 8
  %520 = fmul double %493, %519
  %521 = fsub double %518, %520
  store double %521, double* %179, align 8
  %522 = load double* %184, align 8
  %523 = load double* %132, align 8
  %524 = fmul double %493, %523
  %525 = fsub double %522, %524
  store double %525, double* %184, align 8
  %526 = load double* %196, align 8
  %527 = load double* %201, align 8
  %528 = load double* %97, align 8
  %529 = fmul double %526, %528
  %530 = fsub double %527, %529
  store double %530, double* %201, align 8
  %531 = load double* %206, align 8
  %532 = load double* %102, align 8
  %533 = fmul double %526, %532
  %534 = fsub double %531, %533
  store double %534, double* %206, align 8
  %535 = load double* %211, align 8
  %536 = load double* %107, align 8
  %537 = fmul double %526, %536
  %538 = fsub double %535, %537
  store double %538, double* %211, align 8
  %539 = load double* %216, align 8
  %540 = load double* %112, align 8
  %541 = fmul double %526, %540
  %542 = fsub double %539, %541
  store double %542, double* %216, align 8
  %543 = load double* %221, align 8
  %544 = load double* %117, align 8
  %545 = fmul double %526, %544
  %546 = fsub double %543, %545
  store double %546, double* %221, align 8
  %547 = load double* %226, align 8
  %548 = load double* %122, align 8
  %549 = fmul double %526, %548
  %550 = fsub double %547, %549
  store double %550, double* %226, align 8
  %551 = load double* %231, align 8
  %552 = load double* %127, align 8
  %553 = fmul double %526, %552
  %554 = fsub double %551, %553
  store double %554, double* %231, align 8
  %555 = load double* %236, align 8
  %556 = load double* %132, align 8
  %557 = fmul double %526, %556
  %558 = fsub double %555, %557
  store double %558, double* %236, align 8
  %559 = load double* %149, align 8
  %560 = fdiv double 1.000000e+00, %559
  %561 = load double* %154, align 8
  %562 = fmul double %560, %561
  store double %562, double* %154, align 8
  %563 = load double* %159, align 8
  %564 = fmul double %560, %563
  store double %564, double* %159, align 8
  %565 = load double* %164, align 8
  %566 = fmul double %560, %565
  store double %566, double* %164, align 8
  %567 = load double* %169, align 8
  %568 = fmul double %560, %567
  store double %568, double* %169, align 8
  %569 = load double* %174, align 8
  %570 = fmul double %560, %569
  store double %570, double* %174, align 8
  %571 = load double* %179, align 8
  %572 = fmul double %560, %571
  store double %572, double* %179, align 8
  %573 = load double* %184, align 8
  %574 = fmul double %560, %573
  store double %574, double* %184, align 8
  %575 = load double* %9, align 8
  %576 = load double* %12, align 8
  %577 = load double* %154, align 8
  %578 = fmul double %575, %577
  %579 = fsub double %576, %578
  store double %579, double* %12, align 8
  %580 = load double* %15, align 8
  %581 = load double* %159, align 8
  %582 = fmul double %575, %581
  %583 = fsub double %580, %582
  store double %583, double* %15, align 8
  %584 = load double* %18, align 8
  %585 = load double* %164, align 8
  %586 = fmul double %575, %585
  %587 = fsub double %584, %586
  store double %587, double* %18, align 8
  %588 = load double* %21, align 8
  %589 = load double* %169, align 8
  %590 = fmul double %575, %589
  %591 = fsub double %588, %590
  store double %591, double* %21, align 8
  %592 = load double* %24, align 8
  %593 = load double* %174, align 8
  %594 = fmul double %575, %593
  %595 = fsub double %592, %594
  store double %595, double* %24, align 8
  %596 = load double* %27, align 8
  %597 = load double* %179, align 8
  %598 = fmul double %575, %597
  %599 = fsub double %596, %598
  store double %599, double* %27, align 8
  %600 = load double* %30, align 8
  %601 = load double* %184, align 8
  %602 = fmul double %575, %601
  %603 = fsub double %600, %602
  store double %603, double* %30, align 8
  %604 = load double* %45, align 8
  %605 = load double* %50, align 8
  %606 = load double* %154, align 8
  %607 = fmul double %604, %606
  %608 = fsub double %605, %607
  store double %608, double* %50, align 8
  %609 = load double* %55, align 8
  %610 = load double* %159, align 8
  %611 = fmul double %604, %610
  %612 = fsub double %609, %611
  store double %612, double* %55, align 8
  %613 = load double* %60, align 8
  %614 = load double* %164, align 8
  %615 = fmul double %604, %614
  %616 = fsub double %613, %615
  store double %616, double* %60, align 8
  %617 = load double* %65, align 8
  %618 = load double* %169, align 8
  %619 = fmul double %604, %618
  %620 = fsub double %617, %619
  store double %620, double* %65, align 8
  %621 = load double* %70, align 8
  %622 = load double* %174, align 8
  %623 = fmul double %604, %622
  %624 = fsub double %621, %623
  store double %624, double* %70, align 8
  %625 = load double* %75, align 8
  %626 = load double* %179, align 8
  %627 = fmul double %604, %626
  %628 = fsub double %625, %627
  store double %628, double* %75, align 8
  %629 = load double* %80, align 8
  %630 = load double* %184, align 8
  %631 = fmul double %604, %630
  %632 = fsub double %629, %631
  store double %632, double* %80, align 8
  %633 = load double* %97, align 8
  %634 = load double* %102, align 8
  %635 = load double* %154, align 8
  %636 = fmul double %633, %635
  %637 = fsub double %634, %636
  store double %637, double* %102, align 8
  %638 = load double* %107, align 8
  %639 = load double* %159, align 8
  %640 = fmul double %633, %639
  %641 = fsub double %638, %640
  store double %641, double* %107, align 8
  %642 = load double* %112, align 8
  %643 = load double* %164, align 8
  %644 = fmul double %633, %643
  %645 = fsub double %642, %644
  store double %645, double* %112, align 8
  %646 = load double* %117, align 8
  %647 = load double* %169, align 8
  %648 = fmul double %633, %647
  %649 = fsub double %646, %648
  store double %649, double* %117, align 8
  %650 = load double* %122, align 8
  %651 = load double* %174, align 8
  %652 = fmul double %633, %651
  %653 = fsub double %650, %652
  store double %653, double* %122, align 8
  %654 = load double* %127, align 8
  %655 = load double* %179, align 8
  %656 = fmul double %633, %655
  %657 = fsub double %654, %656
  store double %657, double* %127, align 8
  %658 = load double* %132, align 8
  %659 = load double* %184, align 8
  %660 = fmul double %633, %659
  %661 = fsub double %658, %660
  store double %661, double* %132, align 8
  %662 = load double* %201, align 8
  %663 = load double* %206, align 8
  %664 = load double* %154, align 8
  %665 = fmul double %662, %664
  %666 = fsub double %663, %665
  store double %666, double* %206, align 8
  %667 = load double* %211, align 8
  %668 = load double* %159, align 8
  %669 = fmul double %662, %668
  %670 = fsub double %667, %669
  store double %670, double* %211, align 8
  %671 = load double* %216, align 8
  %672 = load double* %164, align 8
  %673 = fmul double %662, %672
  %674 = fsub double %671, %673
  store double %674, double* %216, align 8
  %675 = load double* %221, align 8
  %676 = load double* %169, align 8
  %677 = fmul double %662, %676
  %678 = fsub double %675, %677
  store double %678, double* %221, align 8
  %679 = load double* %226, align 8
  %680 = load double* %174, align 8
  %681 = fmul double %662, %680
  %682 = fsub double %679, %681
  store double %682, double* %226, align 8
  %683 = load double* %231, align 8
  %684 = load double* %179, align 8
  %685 = fmul double %662, %684
  %686 = fsub double %683, %685
  store double %686, double* %231, align 8
  %687 = load double* %236, align 8
  %688 = load double* %184, align 8
  %689 = fmul double %662, %688
  %690 = fsub double %687, %689
  store double %690, double* %236, align 8
  %691 = load double* %206, align 8
  %692 = fdiv double 1.000000e+00, %691
  %693 = load double* %211, align 8
  %694 = fmul double %692, %693
  store double %694, double* %211, align 8
  %695 = load double* %216, align 8
  %696 = fmul double %692, %695
  store double %696, double* %216, align 8
  %697 = load double* %221, align 8
  %698 = fmul double %692, %697
  store double %698, double* %221, align 8
  %699 = load double* %226, align 8
  %700 = fmul double %692, %699
  store double %700, double* %226, align 8
  %701 = load double* %231, align 8
  %702 = fmul double %692, %701
  store double %702, double* %231, align 8
  %703 = load double* %236, align 8
  %704 = fmul double %692, %703
  store double %704, double* %236, align 8
  %705 = load double* %12, align 8
  %706 = load double* %15, align 8
  %707 = load double* %211, align 8
  %708 = fmul double %705, %707
  %709 = fsub double %706, %708
  store double %709, double* %15, align 8
  %710 = load double* %18, align 8
  %711 = load double* %216, align 8
  %712 = fmul double %705, %711
  %713 = fsub double %710, %712
  store double %713, double* %18, align 8
  %714 = load double* %21, align 8
  %715 = load double* %221, align 8
  %716 = fmul double %705, %715
  %717 = fsub double %714, %716
  store double %717, double* %21, align 8
  %718 = load double* %24, align 8
  %719 = load double* %226, align 8
  %720 = fmul double %705, %719
  %721 = fsub double %718, %720
  store double %721, double* %24, align 8
  %722 = load double* %27, align 8
  %723 = load double* %231, align 8
  %724 = fmul double %705, %723
  %725 = fsub double %722, %724
  store double %725, double* %27, align 8
  %726 = load double* %30, align 8
  %727 = load double* %236, align 8
  %728 = fmul double %705, %727
  %729 = fsub double %726, %728
  store double %729, double* %30, align 8
  %730 = load double* %50, align 8
  %731 = load double* %55, align 8
  %732 = load double* %211, align 8
  %733 = fmul double %730, %732
  %734 = fsub double %731, %733
  store double %734, double* %55, align 8
  %735 = load double* %60, align 8
  %736 = load double* %216, align 8
  %737 = fmul double %730, %736
  %738 = fsub double %735, %737
  store double %738, double* %60, align 8
  %739 = load double* %65, align 8
  %740 = load double* %221, align 8
  %741 = fmul double %730, %740
  %742 = fsub double %739, %741
  store double %742, double* %65, align 8
  %743 = load double* %70, align 8
  %744 = load double* %226, align 8
  %745 = fmul double %730, %744
  %746 = fsub double %743, %745
  store double %746, double* %70, align 8
  %747 = load double* %75, align 8
  %748 = load double* %231, align 8
  %749 = fmul double %730, %748
  %750 = fsub double %747, %749
  store double %750, double* %75, align 8
  %751 = load double* %80, align 8
  %752 = load double* %236, align 8
  %753 = fmul double %730, %752
  %754 = fsub double %751, %753
  store double %754, double* %80, align 8
  %755 = load double* %102, align 8
  %756 = load double* %107, align 8
  %757 = load double* %211, align 8
  %758 = fmul double %755, %757
  %759 = fsub double %756, %758
  store double %759, double* %107, align 8
  %760 = load double* %112, align 8
  %761 = load double* %216, align 8
  %762 = fmul double %755, %761
  %763 = fsub double %760, %762
  store double %763, double* %112, align 8
  %764 = load double* %117, align 8
  %765 = load double* %221, align 8
  %766 = fmul double %755, %765
  %767 = fsub double %764, %766
  store double %767, double* %117, align 8
  %768 = load double* %122, align 8
  %769 = load double* %226, align 8
  %770 = fmul double %755, %769
  %771 = fsub double %768, %770
  store double %771, double* %122, align 8
  %772 = load double* %127, align 8
  %773 = load double* %231, align 8
  %774 = fmul double %755, %773
  %775 = fsub double %772, %774
  store double %775, double* %127, align 8
  %776 = load double* %132, align 8
  %777 = load double* %236, align 8
  %778 = fmul double %755, %777
  %779 = fsub double %776, %778
  store double %779, double* %132, align 8
  %780 = load double* %154, align 8
  %781 = load double* %159, align 8
  %782 = load double* %211, align 8
  %783 = fmul double %780, %782
  %784 = fsub double %781, %783
  store double %784, double* %159, align 8
  %785 = load double* %164, align 8
  %786 = load double* %216, align 8
  %787 = fmul double %780, %786
  %788 = fsub double %785, %787
  store double %788, double* %164, align 8
  %789 = load double* %169, align 8
  %790 = load double* %221, align 8
  %791 = fmul double %780, %790
  %792 = fsub double %789, %791
  store double %792, double* %169, align 8
  %793 = load double* %174, align 8
  %794 = load double* %226, align 8
  %795 = fmul double %780, %794
  %796 = fsub double %793, %795
  store double %796, double* %174, align 8
  %797 = load double* %179, align 8
  %798 = load double* %231, align 8
  %799 = fmul double %780, %798
  %800 = fsub double %797, %799
  store double %800, double* %179, align 8
  %801 = load double* %184, align 8
  %802 = load double* %236, align 8
  %803 = fmul double %780, %802
  %804 = fsub double %801, %803
  store double %804, double* %184, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @binvrhs_([25 x double]* noalias %lhs, [5 x double]* noalias nocapture %r) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds [25 x double]* %lhs, i64 0, i64 0
  %1 = load double* %0, align 8
  %2 = fdiv double 1.000000e+00, %1
  %3 = getelementptr [25 x double]* %lhs, i64 0, i64 5
  %4 = load double* %3, align 8
  %5 = fmul double %2, %4
  store double %5, double* %3, align 8
  %6 = getelementptr [25 x double]* %lhs, i64 0, i64 10
  %7 = load double* %6, align 8
  %8 = fmul double %2, %7
  store double %8, double* %6, align 8
  %9 = getelementptr [25 x double]* %lhs, i64 0, i64 15
  %10 = load double* %9, align 8
  %11 = fmul double %2, %10
  store double %11, double* %9, align 8
  %12 = getelementptr [25 x double]* %lhs, i64 0, i64 20
  %13 = load double* %12, align 8
  %14 = fmul double %2, %13
  store double %14, double* %12, align 8
  %15 = getelementptr inbounds [5 x double]* %r, i64 0, i64 0
  %16 = load double* %15, align 8
  %17 = fmul double %2, %16
  store double %17, double* %15, align 8
  %18 = getelementptr [25 x double]* %lhs, i64 0, i64 1
  %19 = load double* %18, align 8
  %20 = getelementptr [25 x double]* %lhs, i64 0, i64 6
  %21 = load double* %20, align 8
  %22 = load double* %3, align 8
  %23 = fmul double %19, %22
  %24 = fsub double %21, %23
  store double %24, double* %20, align 8
  %25 = getelementptr [25 x double]* %lhs, i64 0, i64 11
  %26 = load double* %25, align 8
  %27 = load double* %6, align 8
  %28 = fmul double %19, %27
  %29 = fsub double %26, %28
  store double %29, double* %25, align 8
  %30 = getelementptr [25 x double]* %lhs, i64 0, i64 16
  %31 = load double* %30, align 8
  %32 = load double* %9, align 8
  %33 = fmul double %19, %32
  %34 = fsub double %31, %33
  store double %34, double* %30, align 8
  %35 = getelementptr [25 x double]* %lhs, i64 0, i64 21
  %36 = load double* %35, align 8
  %37 = load double* %12, align 8
  %38 = fmul double %19, %37
  %39 = fsub double %36, %38
  store double %39, double* %35, align 8
  %40 = getelementptr [5 x double]* %r, i64 0, i64 1
  %41 = load double* %40, align 8
  %42 = load double* %15, align 8
  %43 = fmul double %19, %42
  %44 = fsub double %41, %43
  store double %44, double* %40, align 8
  %45 = getelementptr [25 x double]* %lhs, i64 0, i64 2
  %46 = load double* %45, align 8
  %47 = getelementptr [25 x double]* %lhs, i64 0, i64 7
  %48 = load double* %47, align 8
  %49 = load double* %3, align 8
  %50 = fmul double %46, %49
  %51 = fsub double %48, %50
  store double %51, double* %47, align 8
  %52 = getelementptr [25 x double]* %lhs, i64 0, i64 12
  %53 = load double* %52, align 8
  %54 = load double* %6, align 8
  %55 = fmul double %46, %54
  %56 = fsub double %53, %55
  store double %56, double* %52, align 8
  %57 = getelementptr [25 x double]* %lhs, i64 0, i64 17
  %58 = load double* %57, align 8
  %59 = load double* %9, align 8
  %60 = fmul double %46, %59
  %61 = fsub double %58, %60
  store double %61, double* %57, align 8
  %62 = getelementptr [25 x double]* %lhs, i64 0, i64 22
  %63 = load double* %62, align 8
  %64 = load double* %12, align 8
  %65 = fmul double %46, %64
  %66 = fsub double %63, %65
  store double %66, double* %62, align 8
  %67 = getelementptr [5 x double]* %r, i64 0, i64 2
  %68 = load double* %67, align 8
  %69 = load double* %15, align 8
  %70 = fmul double %46, %69
  %71 = fsub double %68, %70
  store double %71, double* %67, align 8
  %72 = getelementptr [25 x double]* %lhs, i64 0, i64 3
  %73 = load double* %72, align 8
  %74 = getelementptr [25 x double]* %lhs, i64 0, i64 8
  %75 = load double* %74, align 8
  %76 = load double* %3, align 8
  %77 = fmul double %73, %76
  %78 = fsub double %75, %77
  store double %78, double* %74, align 8
  %79 = getelementptr [25 x double]* %lhs, i64 0, i64 13
  %80 = load double* %79, align 8
  %81 = load double* %6, align 8
  %82 = fmul double %73, %81
  %83 = fsub double %80, %82
  store double %83, double* %79, align 8
  %84 = getelementptr [25 x double]* %lhs, i64 0, i64 18
  %85 = load double* %84, align 8
  %86 = load double* %9, align 8
  %87 = fmul double %73, %86
  %88 = fsub double %85, %87
  store double %88, double* %84, align 8
  %89 = getelementptr [25 x double]* %lhs, i64 0, i64 23
  %90 = load double* %89, align 8
  %91 = load double* %12, align 8
  %92 = fmul double %73, %91
  %93 = fsub double %90, %92
  store double %93, double* %89, align 8
  %94 = getelementptr [5 x double]* %r, i64 0, i64 3
  %95 = load double* %94, align 8
  %96 = load double* %15, align 8
  %97 = fmul double %73, %96
  %98 = fsub double %95, %97
  store double %98, double* %94, align 8
  %99 = getelementptr [25 x double]* %lhs, i64 0, i64 4
  %100 = load double* %99, align 8
  %101 = getelementptr [25 x double]* %lhs, i64 0, i64 9
  %102 = load double* %101, align 8
  %103 = load double* %3, align 8
  %104 = fmul double %100, %103
  %105 = fsub double %102, %104
  store double %105, double* %101, align 8
  %106 = getelementptr [25 x double]* %lhs, i64 0, i64 14
  %107 = load double* %106, align 8
  %108 = load double* %6, align 8
  %109 = fmul double %100, %108
  %110 = fsub double %107, %109
  store double %110, double* %106, align 8
  %111 = getelementptr [25 x double]* %lhs, i64 0, i64 19
  %112 = load double* %111, align 8
  %113 = load double* %9, align 8
  %114 = fmul double %100, %113
  %115 = fsub double %112, %114
  store double %115, double* %111, align 8
  %116 = getelementptr [25 x double]* %lhs, i64 0, i64 24
  %117 = load double* %116, align 8
  %118 = load double* %12, align 8
  %119 = fmul double %100, %118
  %120 = fsub double %117, %119
  store double %120, double* %116, align 8
  %121 = getelementptr [5 x double]* %r, i64 0, i64 4
  %122 = load double* %121, align 8
  %123 = load double* %15, align 8
  %124 = fmul double %100, %123
  %125 = fsub double %122, %124
  store double %125, double* %121, align 8
  %126 = load double* %20, align 8
  %127 = fdiv double 1.000000e+00, %126
  %128 = load double* %25, align 8
  %129 = fmul double %127, %128
  store double %129, double* %25, align 8
  %130 = load double* %30, align 8
  %131 = fmul double %127, %130
  store double %131, double* %30, align 8
  %132 = load double* %35, align 8
  %133 = fmul double %127, %132
  store double %133, double* %35, align 8
  %134 = load double* %40, align 8
  %135 = fmul double %127, %134
  store double %135, double* %40, align 8
  %136 = load double* %3, align 8
  %137 = load double* %6, align 8
  %138 = load double* %25, align 8
  %139 = fmul double %136, %138
  %140 = fsub double %137, %139
  store double %140, double* %6, align 8
  %141 = load double* %9, align 8
  %142 = load double* %30, align 8
  %143 = fmul double %136, %142
  %144 = fsub double %141, %143
  store double %144, double* %9, align 8
  %145 = load double* %12, align 8
  %146 = load double* %35, align 8
  %147 = fmul double %136, %146
  %148 = fsub double %145, %147
  store double %148, double* %12, align 8
  %149 = load double* %15, align 8
  %150 = load double* %40, align 8
  %151 = fmul double %136, %150
  %152 = fsub double %149, %151
  store double %152, double* %15, align 8
  %153 = load double* %47, align 8
  %154 = load double* %52, align 8
  %155 = load double* %25, align 8
  %156 = fmul double %153, %155
  %157 = fsub double %154, %156
  store double %157, double* %52, align 8
  %158 = load double* %57, align 8
  %159 = load double* %30, align 8
  %160 = fmul double %153, %159
  %161 = fsub double %158, %160
  store double %161, double* %57, align 8
  %162 = load double* %62, align 8
  %163 = load double* %35, align 8
  %164 = fmul double %153, %163
  %165 = fsub double %162, %164
  store double %165, double* %62, align 8
  %166 = load double* %67, align 8
  %167 = load double* %40, align 8
  %168 = fmul double %153, %167
  %169 = fsub double %166, %168
  store double %169, double* %67, align 8
  %170 = load double* %74, align 8
  %171 = load double* %79, align 8
  %172 = load double* %25, align 8
  %173 = fmul double %170, %172
  %174 = fsub double %171, %173
  store double %174, double* %79, align 8
  %175 = load double* %84, align 8
  %176 = load double* %30, align 8
  %177 = fmul double %170, %176
  %178 = fsub double %175, %177
  store double %178, double* %84, align 8
  %179 = load double* %89, align 8
  %180 = load double* %35, align 8
  %181 = fmul double %170, %180
  %182 = fsub double %179, %181
  store double %182, double* %89, align 8
  %183 = load double* %94, align 8
  %184 = load double* %40, align 8
  %185 = fmul double %170, %184
  %186 = fsub double %183, %185
  store double %186, double* %94, align 8
  %187 = load double* %101, align 8
  %188 = load double* %106, align 8
  %189 = load double* %25, align 8
  %190 = fmul double %187, %189
  %191 = fsub double %188, %190
  store double %191, double* %106, align 8
  %192 = load double* %111, align 8
  %193 = load double* %30, align 8
  %194 = fmul double %187, %193
  %195 = fsub double %192, %194
  store double %195, double* %111, align 8
  %196 = load double* %116, align 8
  %197 = load double* %35, align 8
  %198 = fmul double %187, %197
  %199 = fsub double %196, %198
  store double %199, double* %116, align 8
  %200 = load double* %121, align 8
  %201 = load double* %40, align 8
  %202 = fmul double %187, %201
  %203 = fsub double %200, %202
  store double %203, double* %121, align 8
  %204 = load double* %52, align 8
  %205 = fdiv double 1.000000e+00, %204
  %206 = load double* %57, align 8
  %207 = fmul double %205, %206
  store double %207, double* %57, align 8
  %208 = load double* %62, align 8
  %209 = fmul double %205, %208
  store double %209, double* %62, align 8
  %210 = load double* %67, align 8
  %211 = fmul double %205, %210
  store double %211, double* %67, align 8
  %212 = load double* %6, align 8
  %213 = load double* %9, align 8
  %214 = load double* %57, align 8
  %215 = fmul double %212, %214
  %216 = fsub double %213, %215
  store double %216, double* %9, align 8
  %217 = load double* %12, align 8
  %218 = load double* %62, align 8
  %219 = fmul double %212, %218
  %220 = fsub double %217, %219
  store double %220, double* %12, align 8
  %221 = load double* %15, align 8
  %222 = load double* %67, align 8
  %223 = fmul double %212, %222
  %224 = fsub double %221, %223
  store double %224, double* %15, align 8
  %225 = load double* %25, align 8
  %226 = load double* %30, align 8
  %227 = load double* %57, align 8
  %228 = fmul double %225, %227
  %229 = fsub double %226, %228
  store double %229, double* %30, align 8
  %230 = load double* %35, align 8
  %231 = load double* %62, align 8
  %232 = fmul double %225, %231
  %233 = fsub double %230, %232
  store double %233, double* %35, align 8
  %234 = load double* %40, align 8
  %235 = load double* %67, align 8
  %236 = fmul double %225, %235
  %237 = fsub double %234, %236
  store double %237, double* %40, align 8
  %238 = load double* %79, align 8
  %239 = load double* %84, align 8
  %240 = load double* %57, align 8
  %241 = fmul double %238, %240
  %242 = fsub double %239, %241
  store double %242, double* %84, align 8
  %243 = load double* %89, align 8
  %244 = load double* %62, align 8
  %245 = fmul double %238, %244
  %246 = fsub double %243, %245
  store double %246, double* %89, align 8
  %247 = load double* %94, align 8
  %248 = load double* %67, align 8
  %249 = fmul double %238, %248
  %250 = fsub double %247, %249
  store double %250, double* %94, align 8
  %251 = load double* %106, align 8
  %252 = load double* %111, align 8
  %253 = load double* %57, align 8
  %254 = fmul double %251, %253
  %255 = fsub double %252, %254
  store double %255, double* %111, align 8
  %256 = load double* %116, align 8
  %257 = load double* %62, align 8
  %258 = fmul double %251, %257
  %259 = fsub double %256, %258
  store double %259, double* %116, align 8
  %260 = load double* %121, align 8
  %261 = load double* %67, align 8
  %262 = fmul double %251, %261
  %263 = fsub double %260, %262
  store double %263, double* %121, align 8
  %264 = load double* %84, align 8
  %265 = fdiv double 1.000000e+00, %264
  %266 = load double* %89, align 8
  %267 = fmul double %265, %266
  store double %267, double* %89, align 8
  %268 = load double* %94, align 8
  %269 = fmul double %265, %268
  store double %269, double* %94, align 8
  %270 = load double* %9, align 8
  %271 = load double* %12, align 8
  %272 = load double* %89, align 8
  %273 = fmul double %270, %272
  %274 = fsub double %271, %273
  store double %274, double* %12, align 8
  %275 = load double* %15, align 8
  %276 = load double* %94, align 8
  %277 = fmul double %270, %276
  %278 = fsub double %275, %277
  store double %278, double* %15, align 8
  %279 = load double* %30, align 8
  %280 = load double* %35, align 8
  %281 = load double* %89, align 8
  %282 = fmul double %279, %281
  %283 = fsub double %280, %282
  store double %283, double* %35, align 8
  %284 = load double* %40, align 8
  %285 = load double* %94, align 8
  %286 = fmul double %279, %285
  %287 = fsub double %284, %286
  store double %287, double* %40, align 8
  %288 = load double* %57, align 8
  %289 = load double* %62, align 8
  %290 = load double* %89, align 8
  %291 = fmul double %288, %290
  %292 = fsub double %289, %291
  store double %292, double* %62, align 8
  %293 = load double* %67, align 8
  %294 = load double* %94, align 8
  %295 = fmul double %288, %294
  %296 = fsub double %293, %295
  store double %296, double* %67, align 8
  %297 = load double* %111, align 8
  %298 = load double* %116, align 8
  %299 = load double* %89, align 8
  %300 = fmul double %297, %299
  %301 = fsub double %298, %300
  store double %301, double* %116, align 8
  %302 = load double* %121, align 8
  %303 = load double* %94, align 8
  %304 = fmul double %297, %303
  %305 = fsub double %302, %304
  %306 = fdiv double 1.000000e+00, %301
  %307 = fmul double %305, %306
  store double %307, double* %121, align 8
  %308 = load double* %12, align 8
  %309 = load double* %15, align 8
  %310 = fmul double %307, %308
  %311 = fsub double %309, %310
  store double %311, double* %15, align 8
  %312 = load double* %35, align 8
  %313 = load double* %40, align 8
  %314 = load double* %121, align 8
  %315 = fmul double %312, %314
  %316 = fsub double %313, %315
  store double %316, double* %40, align 8
  %317 = load double* %62, align 8
  %318 = load double* %67, align 8
  %319 = load double* %121, align 8
  %320 = fmul double %317, %319
  %321 = fsub double %318, %320
  store double %321, double* %67, align 8
  %322 = load double* %89, align 8
  %323 = load double* %94, align 8
  %324 = load double* %121, align 8
  %325 = fmul double %322, %324
  %326 = fsub double %323, %325
  store double %326, double* %94, align 8
  ret void
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
