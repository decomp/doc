; ModuleID = 'foo.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  br label %1

; <label>:1                                       ; preds = %16, %0
  %i.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %sum.0 = phi i32 [ 0, %0 ], [ %sum.1, %16 ]
  %2 = icmp slt i32 %i.0, 5
  br i1 %2, label %3, label %18

; <label>:3                                       ; preds = %1
  br label %4

; <label>:4                                       ; preds = %13, %3
  %j.0 = phi i32 [ 0, %3 ], [ %14, %13 ]
  %sum.1 = phi i32 [ %sum.0, %3 ], [ %sum.2, %13 ]
  %5 = icmp slt i32 %j.0, 7
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %4
  %7 = icmp slt i32 %i.0, %j.0
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %6
  %9 = add nsw i32 %sum.1, %i.0
  br label %12

; <label>:10                                      ; preds = %6
  %11 = add nsw i32 %sum.1, %j.0
  br label %12

; <label>:12                                      ; preds = %10, %8
  %sum.2 = phi i32 [ %9, %8 ], [ %11, %10 ]
  br label %13

; <label>:13                                      ; preds = %12
  %14 = add nsw i32 %j.0, 1
  br label %4

; <label>:15                                      ; preds = %4
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %i.0, 1
  br label %1

; <label>:18                                      ; preds = %1
  %19 = srem i32 %sum.0, 256
  ret i32 %19
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.6.0 (tags/RELEASE_360/final)"}
