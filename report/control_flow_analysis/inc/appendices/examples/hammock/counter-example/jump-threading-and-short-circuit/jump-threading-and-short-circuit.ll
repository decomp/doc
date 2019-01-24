; ModuleID = 'jump-threading-and-short-circuit.c'
source_filename = "jump-threading-and-short-circuit.c"
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
  br i1 %7, label %8, label %17

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

; <label>:16:                                     ; preds = %14, %12
  br label %17

; <label>:17:                                     ; preds = %16, %0
  %18 = call i32 @B5()
  br label %19

; <label>:19:                                     ; preds = %30, %17
  %20 = call i32 @B6()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %19
  %23 = call i32 @B12()
  br label %24

; <label>:24:                                     ; preds = %27, %22
  %25 = call i32 @B13()
  %26 = call i32 @B14()
  store i32 %26, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %24, label %30

; <label>:30:                                     ; preds = %27
  %31 = call i32 @B15()
  br label %19

; <label>:32:                                     ; preds = %19
  %33 = call i32 @B7()
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %32
  %37 = call i32 @B8()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %36, %32
  %40 = call i32 @B9()
  br label %41

; <label>:41:                                     ; preds = %39, %36
  %42 = call i32 @B10()
  %43 = call i32 @B11()
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
