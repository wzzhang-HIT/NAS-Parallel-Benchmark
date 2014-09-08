; ModuleID = 'add.f'
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
@0 = internal constant i32 11
@1 = internal constant i32 11

; Function Attrs: nounwind uwtable
define void @add_() unnamed_addr #0 {
entry:
  %0 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %"4", label %"3"

"3":                                              ; preds = %entry
  tail call void bitcast (void (...)* @timer_start_ to void (i32*)*)(i32* @0) #1
  br label %"4"

"4":                                              ; preds = %entry, %"3"
  %2 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %3 = add i32 %2, -2
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %"5.preheader", label %"12"

"5.preheader":                                    ; preds = %"4"
  %5 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %6 = add i32 %5, -2
  %7 = icmp sgt i32 %6, 0
  %8 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %9 = add i32 %8, -2
  %10 = icmp sgt i32 %9, 0
  br label %"5"

"5":                                              ; preds = %"5.preheader", %"11"
  %11 = phi i32 [ %34, %"11" ], [ 1, %"5.preheader" ]
  br i1 %7, label %"6.preheader", label %"11"

"6.preheader":                                    ; preds = %"5"
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 21125
  %14 = add i64 %13, -1
  br label %"6"

"6":                                              ; preds = %"6.preheader", %"10"
  %15 = phi i32 [ %32, %"10" ], [ 1, %"6.preheader" ]
  br i1 %10, label %"7.preheader", label %"10"

"7.preheader":                                    ; preds = %"6"
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 325
  %18 = add i64 %14, %17
  br label %"7"

"7":                                              ; preds = %"7.preheader", %"9"
  %19 = phi i32 [ %30, %"9" ], [ 1, %"7.preheader" ]
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 5
  %22 = add i64 %18, %21
  br label %"8"

"8":                                              ; preds = %"7", %"8"
  %indvars.iv = phi i64 [ 1, %"7" ], [ %indvars.iv.next, %"8" ]
  %23 = add i64 %22, %indvars.iv
  %24 = getelementptr %1* @fields_, i64 0, i32 0, i64 %23
  %25 = load double* %24, align 8
  %26 = getelementptr %1* @fields_, i64 0, i32 7, i64 %23
  %27 = load double* %26, align 8
  %28 = fadd double %25, %27
  store double %28, double* %24, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %"9", label %"8"

"9":                                              ; preds = %"8"
  %29 = icmp eq i32 %19, %9
  %30 = add i32 %19, 1
  br i1 %29, label %"10", label %"7"

"10":                                             ; preds = %"9", %"6"
  %31 = icmp eq i32 %15, %6
  %32 = add i32 %15, 1
  br i1 %31, label %"11", label %"6"

"11":                                             ; preds = %"10", %"5"
  %33 = icmp eq i32 %11, %3
  %34 = add i32 %11, 1
  br i1 %33, label %"12", label %"5"

"12":                                             ; preds = %"11", %"4"
  %35 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %return, label %"13"

"13":                                             ; preds = %"12"
  tail call void bitcast (void (...)* @timer_stop_ to void (i32*)*)(i32* @1) #1
  br label %return

return:                                           ; preds = %"12", %"13"
  ret void
}

declare void @timer_start_(...)

declare void @timer_stop_(...)

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }

!0 = metadata !{i32 0, i32 2}
