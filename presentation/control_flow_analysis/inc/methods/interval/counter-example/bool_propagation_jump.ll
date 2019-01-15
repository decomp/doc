; ModuleID = 'bool_propagation.ll'
source_filename = "bool_propagation.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @B1()
  store i32 %3, i32* %1, align 4
  %4 = call i32 @B2()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %.thread

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %.thread3

; <label>:10:                                     ; preds = %7
  %11 = call i32 @B3()
  %.pr = load i32, i32* %1, align 4
  %12 = icmp ne i32 %.pr, 0
  br i1 %12, label %.thread3, label %.thread

.thread:                                          ; preds = %10, %0
  %.pr2.pr = phi i32 [ %.pr, %10 ], [ %5, %0 ]
  %13 = call i32 @B4()
  br label %15

.thread3:                                         ; preds = %7, %10
  %14 = call i32 @B5()
  br label %15

; <label>:15:                                     ; preds = %.thread, %.thread3
  %16 = call i32 @B6()
  ret void
}

declare i32 @B1() #1

declare i32 @B2() #1

declare i32 @B3() #1

declare i32 @B4() #1

declare i32 @B5() #1

declare i32 @B6() #1

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
