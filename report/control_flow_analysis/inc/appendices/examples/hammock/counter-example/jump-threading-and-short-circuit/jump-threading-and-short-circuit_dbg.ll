; ModuleID = 'jump-threading-and-short-circuit.c'
source_filename = "jump-threading-and-short-circuit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @f() #0 !dbg !9 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !12, metadata !DIExpression()), !dbg !14
  %5 = call i32 @B1(), !dbg !15
  store i32 %5, i32* %1, align 4, !dbg !14
  %6 = load i32, i32* %1, align 4, !dbg !16
  %7 = icmp ne i32 %6, 0, !dbg !16
  br i1 %7, label %8, label %17, !dbg !18

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !21
  %9 = call i32 @B2(), !dbg !22
  store i32 %9, i32* %2, align 4, !dbg !21
  %10 = load i32, i32* %2, align 4, !dbg !23
  %11 = icmp ne i32 %10, 0, !dbg !23
  br i1 %11, label %12, label %14, !dbg !25

; <label>:12:                                     ; preds = %8
  %13 = call i32 @B3(), !dbg !26
  br label %16, !dbg !28

; <label>:14:                                     ; preds = %8
  %15 = call i32 @B4(), !dbg !29
  br label %16

; <label>:16:                                     ; preds = %14, %12
  br label %17, !dbg !31

; <label>:17:                                     ; preds = %16, %0
  %18 = call i32 @B5(), !dbg !32
  br label %19, !dbg !33

; <label>:19:                                     ; preds = %30, %17
  %20 = call i32 @B6(), !dbg !34
  %21 = icmp ne i32 %20, 0, !dbg !33
  br i1 %21, label %22, label %32, !dbg !33

; <label>:22:                                     ; preds = %19
  %23 = call i32 @B12(), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  br label %24, !dbg !39

; <label>:24:                                     ; preds = %27, %22
  %25 = call i32 @B13(), !dbg !40
  %26 = call i32 @B14(), !dbg !42
  store i32 %26, i32* %3, align 4, !dbg !43
  br label %27, !dbg !44

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %3, align 4, !dbg !45
  %29 = icmp ne i32 %28, 0, !dbg !44
  br i1 %29, label %24, label %30, !dbg !44, !llvm.loop !46

; <label>:30:                                     ; preds = %27
  %31 = call i32 @B15(), !dbg !48
  br label %19, !dbg !33, !llvm.loop !49

; <label>:32:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !51, metadata !DIExpression()), !dbg !52
  %33 = call i32 @B7(), !dbg !53
  store i32 %33, i32* %4, align 4, !dbg !52
  %34 = load i32, i32* %4, align 4, !dbg !54
  %35 = icmp ne i32 %34, 0, !dbg !54
  br i1 %35, label %39, label %36, !dbg !56

; <label>:36:                                     ; preds = %32
  %37 = call i32 @B8(), !dbg !57
  %38 = icmp ne i32 %37, 0, !dbg !57
  br i1 %38, label %39, label %41, !dbg !58

; <label>:39:                                     ; preds = %36, %32
  %40 = call i32 @B9(), !dbg !59
  br label %41, !dbg !61

; <label>:41:                                     ; preds = %39, %36
  %42 = call i32 @B10(), !dbg !62
  %43 = call i32 @B11(), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @B1() #2

declare i32 @B2() #2

declare i32 @B3() #2

declare i32 @B4() #2

declare i32 @B5() #2

declare i32 @B6() #2

declare i32 @B12() #2

declare i32 @B13() #2

declare i32 @B14() #2

declare i32 @B15() #2

declare i32 @B7() #2

declare i32 @B8() #2

declare i32 @B9() #2

declare i32 @B10() #2

declare i32 @B11() #2

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1 (tags/RELEASE_701/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "jump-threading-and-short-circuit.c", directory: "/home/u/Desktop/go/src/github.com/decomp/doc/presentation/control_flow_analysis/inc/methods/hammock/counter-example/jump-threading-and-short-circuit")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "f", scope: !1, file: !1, line: 17, type: !10, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "b1", scope: !9, file: !1, line: 18, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 18, column: 6, scope: !9)
!15 = !DILocation(line: 18, column: 11, scope: !9)
!16 = !DILocation(line: 19, column: 6, scope: !17)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 19, column: 6)
!18 = !DILocation(line: 19, column: 6, scope: !9)
!19 = !DILocalVariable(name: "b2", scope: !20, file: !1, line: 20, type: !13)
!20 = distinct !DILexicalBlock(scope: !17, file: !1, line: 19, column: 10)
!21 = !DILocation(line: 20, column: 7, scope: !20)
!22 = !DILocation(line: 20, column: 12, scope: !20)
!23 = !DILocation(line: 21, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 21, column: 7)
!25 = !DILocation(line: 21, column: 7, scope: !20)
!26 = !DILocation(line: 22, column: 4, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 21, column: 11)
!28 = !DILocation(line: 23, column: 3, scope: !27)
!29 = !DILocation(line: 24, column: 4, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 23, column: 10)
!31 = !DILocation(line: 26, column: 2, scope: !20)
!32 = !DILocation(line: 27, column: 2, scope: !9)
!33 = !DILocation(line: 28, column: 2, scope: !9)
!34 = !DILocation(line: 28, column: 9, scope: !9)
!35 = !DILocation(line: 29, column: 3, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !1, line: 28, column: 15)
!37 = !DILocalVariable(name: "b14", scope: !36, file: !1, line: 30, type: !13)
!38 = !DILocation(line: 30, column: 7, scope: !36)
!39 = !DILocation(line: 31, column: 3, scope: !36)
!40 = !DILocation(line: 32, column: 4, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 31, column: 6)
!42 = !DILocation(line: 33, column: 10, scope: !41)
!43 = !DILocation(line: 33, column: 8, scope: !41)
!44 = !DILocation(line: 34, column: 3, scope: !41)
!45 = !DILocation(line: 34, column: 11, scope: !36)
!46 = distinct !{!46, !39, !47}
!47 = !DILocation(line: 34, column: 14, scope: !36)
!48 = !DILocation(line: 35, column: 3, scope: !36)
!49 = distinct !{!49, !33, !50}
!50 = !DILocation(line: 36, column: 2, scope: !9)
!51 = !DILocalVariable(name: "b7", scope: !9, file: !1, line: 37, type: !13)
!52 = !DILocation(line: 37, column: 6, scope: !9)
!53 = !DILocation(line: 37, column: 11, scope: !9)
!54 = !DILocation(line: 38, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 6)
!56 = !DILocation(line: 38, column: 9, scope: !55)
!57 = !DILocation(line: 38, column: 12, scope: !55)
!58 = !DILocation(line: 38, column: 6, scope: !9)
!59 = !DILocation(line: 39, column: 3, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 18)
!61 = !DILocation(line: 40, column: 2, scope: !60)
!62 = !DILocation(line: 41, column: 2, scope: !9)
!63 = !DILocation(line: 42, column: 2, scope: !9)
!64 = !DILocation(line: 43, column: 1, scope: !9)
