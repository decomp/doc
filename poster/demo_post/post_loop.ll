; ModuleID = 'post_loop.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  br label %1

; <label>:1                                       ; preds = %10, %0
  %i.0 = phi i32 [ 0, %0 ], [ %i.1, %10 ]
  %n.0 = phi i32 [ 1, %0 ], [ %n.1, %10 ]
  %2 = icmp slt i32 %i.0, 10
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %1
  %4 = add nsw i32 %i.0, 1
  %5 = mul nsw i32 %n.0, 2
  br label %9

; <label>:6                                       ; preds = %1
  %7 = add nsw i32 %i.0, 4
  %8 = mul nsw i32 %n.0, 3
  br label %9

; <label>:9                                       ; preds = %6, %3
  %i.1 = phi i32 [ %4, %3 ], [ %7, %6 ]
  %n.1 = phi i32 [ %5, %3 ], [ %8, %6 ]
  br label %10

; <label>:10                                      ; preds = %9
  %11 = icmp slt i32 %i.1, 15
  br i1 %11, label %1, label %12

; <label>:12                                      ; preds = %10
  %13 = srem i32 %n.1, 123
  ret i32 %13
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.6.0 (tags/RELEASE_360/final)"}
