; ModuleID = 'jump-threading-and-short-circuit_dbg.ll'
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
  br i1 %7, label %8, label %16, !dbg !18

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

; <label>:16:                                     ; preds = %12, %14, %0
  %17 = call i32 @B5(), !dbg !31
  br label %18, !dbg !32

; <label>:18:                                     ; preds = %27, %16
  %19 = call i32 @B6(), !dbg !33
  %20 = icmp ne i32 %19, 0, !dbg !32
  br i1 %20, label %21, label %29, !dbg !32

; <label>:21:                                     ; preds = %18
  %22 = call i32 @B12(), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !36, metadata !DIExpression()), !dbg !37
  br label %23, !dbg !38

; <label>:23:                                     ; preds = %21, %23
  %24 = call i32 @B13(), !dbg !39
  %25 = call i32 @B14(), !dbg !41
  store i32 %25, i32* %3, align 4, !dbg !42
  %26 = icmp ne i32 %25, 0, !dbg !43
  br i1 %26, label %23, label %27, !dbg !43, !llvm.loop !44

; <label>:27:                                     ; preds = %23
  %28 = call i32 @B15(), !dbg !46
  br label %18, !dbg !32, !llvm.loop !47

; <label>:29:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  %30 = call i32 @B7(), !dbg !51
  store i32 %30, i32* %4, align 4, !dbg !50
  %31 = load i32, i32* %4, align 4, !dbg !52
  %32 = icmp ne i32 %31, 0, !dbg !52
  br i1 %32, label %36, label %33, !dbg !54

; <label>:33:                                     ; preds = %29
  %34 = call i32 @B8(), !dbg !55
  %35 = icmp ne i32 %34, 0, !dbg !55
  br i1 %35, label %36, label %38, !dbg !56

; <label>:36:                                     ; preds = %33, %29
  %37 = call i32 @B9(), !dbg !57
  br label %38, !dbg !59

; <label>:38:                                     ; preds = %36, %33
  %39 = call i32 @B10(), !dbg !60
  %40 = call i32 @B11(), !dbg !61
  ret void, !dbg !62
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
!31 = !DILocation(line: 27, column: 2, scope: !9)
!32 = !DILocation(line: 28, column: 2, scope: !9)
!33 = !DILocation(line: 28, column: 9, scope: !9)
!34 = !DILocation(line: 29, column: 3, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 28, column: 15)
!36 = !DILocalVariable(name: "b14", scope: !35, file: !1, line: 30, type: !13)
!37 = !DILocation(line: 30, column: 7, scope: !35)
!38 = !DILocation(line: 31, column: 3, scope: !35)
!39 = !DILocation(line: 32, column: 4, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 31, column: 6)
!41 = !DILocation(line: 33, column: 10, scope: !40)
!42 = !DILocation(line: 33, column: 8, scope: !40)
!43 = !DILocation(line: 34, column: 3, scope: !40)
!44 = distinct !{!44, !38, !45}
!45 = !DILocation(line: 34, column: 14, scope: !35)
!46 = !DILocation(line: 35, column: 3, scope: !35)
!47 = distinct !{!47, !32, !48}
!48 = !DILocation(line: 36, column: 2, scope: !9)
!49 = !DILocalVariable(name: "b7", scope: !9, file: !1, line: 37, type: !13)
!50 = !DILocation(line: 37, column: 6, scope: !9)
!51 = !DILocation(line: 37, column: 11, scope: !9)
!52 = !DILocation(line: 38, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !9, file: !1, line: 38, column: 6)
!54 = !DILocation(line: 38, column: 9, scope: !53)
!55 = !DILocation(line: 38, column: 12, scope: !53)
!56 = !DILocation(line: 38, column: 6, scope: !9)
!57 = !DILocation(line: 39, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 38, column: 18)
!59 = !DILocation(line: 40, column: 2, scope: !58)
!60 = !DILocation(line: 41, column: 2, scope: !9)
!61 = !DILocation(line: 42, column: 2, scope: !9)
!62 = !DILocation(line: 43, column: 1, scope: !9)
