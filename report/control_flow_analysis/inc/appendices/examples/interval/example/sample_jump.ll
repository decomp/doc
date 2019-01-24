; ModuleID = 'sample.ll'
source_filename = "sample.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @B1()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %0
  %9 = call i32 @B2()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8
  %13 = call i32 @B3()
  br label %16

; <label>:14:                                     ; preds = %8
  %15 = call i32 @B4()
  br label %16

; <label>:16:                                     ; preds = %12, %14, %0
  %17 = call i32 @B5()
  br label %18

; <label>:18:                                     ; preds = %27, %16
  %19 = call i32 @B6()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %18
  %22 = call i32 @B12()
  br label %23

; <label>:23:                                     ; preds = %21, %23
  %24 = call i32 @B13()
  %25 = call i32 @B14()
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %23, label %27

; <label>:27:                                     ; preds = %23
  %28 = call i32 @B15()
  br label %18

; <label>:29:                                     ; preds = %18
  %30 = call i32 @B7()
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %29
  %34 = call i32 @B8()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %33, %29
  %37 = call i32 @B9()
  br label %38

; <label>:38:                                     ; preds = %36, %33
  %39 = call i32 @B10()
  %40 = call i32 @B11()
  ret void
}

declare i32 @B1() #1

declare i32 @B2() #1

declare i32 @B3() #1

declare i32 @B4() #1

declare i32 @B5() #1

declare i32 @B6() #1

declare i32 @B12() #1

declare i32 @B13() #1

declare i32 @B14() #1

declare i32 @B15() #1

declare i32 @B7() #1

declare i32 @B8() #1

declare i32 @B9() #1

declare i32 @B10() #1

declare i32 @B11() #1

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
