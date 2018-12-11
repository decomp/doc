; ModuleID = 'overview.ll'
source_filename = "overview.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @f(i32) #0 {
  br label %2

; <label>:2:                                      ; preds = %9, %1
  %.01 = phi i32 [ 0, %1 ], [ %.1, %9 ]
  %.0 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %3 = icmp slt i32 %.0, %0
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %2
  %5 = icmp slt i32 %.01, 100
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %4
  %7 = add nsw i32 %.01, %.0
  br label %8

; <label>:8:                                      ; preds = %6, %4
  %.1 = phi i32 [ %7, %6 ], [ %.01, %4 ]
  br label %9

; <label>:9:                                      ; preds = %8
  %10 = add nsw i32 %.0, 1
  br label %2

; <label>:11:                                     ; preds = %2
  ret i32 %.01
}

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
