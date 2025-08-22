; ModuleID = 'hello.ll'

%regset = type { i16, i16, i32, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i80, i80, i80, i80, i80, i80, i80, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i80, i80, i80, i80, i80, i80, i80, i80, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512, i512 }

define void @fn_0(%regset* noalias nocapture) {
entry_fn_0:
  %RIP_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 13
  %RBP_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 8
  %RBP_init = load i64, i64* %RBP_ptr, align 4
  %RSP_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 15
  %RSP_init = load i64, i64* %RSP_ptr, align 4
  %EFLAGS_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 2
  %EFLAGS_init = load i32, i32* %EFLAGS_ptr, align 4
  %RAX_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 7
  %RDI_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 11
  %RDI_init = load i64, i64* %RDI_ptr, align 4
  %RSI_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 14
  %RSI_init = load i64, i64* %RSI_ptr, align 4
  %RCX_ptr = getelementptr inbounds %regset, %regset* %0, i64 0, i32 10
  %RCX_init = load i64, i64* %RCX_ptr, align 4
  %1 = add i64 %RSP_init, -8
  %2 = inttoptr i64 %1 to i64*
  store i64 %RBP_init, i64* %2, align 4
  %RSP_2 = add i64 %RSP_init, -40
  %3 = add i64 %RSP_init, -12
  %4 = inttoptr i64 %3 to i32*
  store i32 0, i32* %4, align 4
  %EDI_0 = trunc i64 %RDI_init to i32
  %5 = add i64 %RSP_init, -16
  %6 = inttoptr i64 %5 to i32*
  store i32 %EDI_0, i32* %6, align 4
  %7 = add i64 %RSP_init, -24
  %8 = inttoptr i64 %7 to i64*
  store i64 %RSI_init, i64* %8, align 4
  %RSP_3 = add i64 %RSP_init, -48
  %9 = inttoptr i64 %RSP_3 to i64*
  store i64 39, i64* %9, align 4
  %ZF_0 = icmp eq i64 %RSP_2, 0
  %10 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 32)
  %OF_0 = extractvalue { i64, i1 } %10, 1
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1, i64 32)
  %CF_0 = extractvalue { i64, i1 } %11, 1
  %12 = trunc i64 %RSP_2 to i8
  %13 = tail call i8 @llvm.ctpop.i8(i8 %12)
  %14 = and i8 %13, 1
  %15 = and i32 %EFLAGS_init, -2262
  %16 = zext i1 %CF_0 to i32
  %17 = xor i8 %14, 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 2
  %20 = zext i1 %ZF_0 to i32
  %21 = shl nuw nsw i32 %20, 6
  %22 = lshr i64 %RSP_2, 56
  %.tr = trunc i64 %22 to i32
  %23 = and i32 %.tr, 128
  %24 = zext i1 %OF_0 to i32
  %25 = shl nuw nsw i32 %24, 11
  %26 = or i32 %21, %15
  %27 = or i32 %26, %23
  %28 = or i32 %27, %16
  %29 = or i32 %28, %25
  %EFLAGS_1 = or i32 %29, %19
  store i32 %EFLAGS_1, i32* %EFLAGS_ptr, align 4
  store i64 0, i64* %RAX_ptr, align 4
  store i64 %1, i64* %RBP_ptr, align 4
  store i64 %RCX_init, i64* %RCX_ptr, align 4
  store i64 15, i64* %RDI_ptr, align 4
  store i64 39, i64* %RIP_ptr, align 4
  store i64 %RSI_init, i64* %RSI_ptr, align 4
  store i64 %RSP_3, i64* %RSP_ptr, align 4
  tail call void @fn_27(%regset* %0)
  %EFLAGS_4 = load i32, i32* %EFLAGS_ptr, align 4
  %RAX_3 = load i64, i64* %RAX_ptr, align 4
  %EAX_4 = trunc i64 %RAX_3 to i32
  %RBP_3 = load i64, i64* %RBP_ptr, align 4
  %RDI_1 = load i64, i64* %RDI_ptr, align 4
  %RSI_1 = load i64, i64* %RSI_ptr, align 4
  %RSP_8 = load i64, i64* %RSP_ptr, align 4
  %30 = add i64 %RBP_3, -20
  %31 = inttoptr i64 %30 to i32*
  store i32 %EAX_4, i32* %31, align 4
  %RSP_5 = add i64 %RSP_8, 32
  %RSP_6 = add i64 %RSP_8, 40
  %32 = inttoptr i64 %RSP_5 to i64*
  %RBP_2 = load i64, i64* %32, align 4
  %RSP_7 = add i64 %RSP_8, 48
  %33 = inttoptr i64 %RSP_6 to i64*
  %RIP_18 = load i64, i64* %33, align 4
  %ZF_1 = icmp eq i64 %RSP_5, 0
  %34 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RSP_8, i64 32)
  %OF_1 = extractvalue { i64, i1 } %34, 1
  %CF_1 = icmp ugt i64 %RSP_8, -33
  %35 = trunc i64 %RSP_5 to i8
  %36 = tail call i8 @llvm.ctpop.i8(i8 %35)
  %37 = and i8 %36, 1
  %38 = and i32 %EFLAGS_4, -2262
  %39 = zext i1 %CF_1 to i32
  %40 = or i32 %39, %38
  %41 = xor i8 %37, 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 2
  %44 = zext i1 %ZF_1 to i32
  %45 = shl nuw nsw i32 %44, 6
  %46 = lshr i64 %RSP_5, 56
  %.tr20 = trunc i64 %46 to i32
  %47 = and i32 %.tr20, 128
  %48 = zext i1 %OF_1 to i32
  %49 = shl nuw nsw i32 %48, 11
  %50 = or i32 %40, %45
  %51 = or i32 %50, %47
  %52 = or i32 %51, %49
  %EFLAGS_3 = or i32 %52, %43
  store i32 %EFLAGS_3, i32* %EFLAGS_ptr, align 4
  store i64 0, i64* %RAX_ptr, align 4
  store i64 %RBP_2, i64* %RBP_ptr, align 4
  store i64 0, i64* %RCX_ptr, align 4
  store i64 %RDI_1, i64* %RDI_ptr, align 4
  store i64 %RIP_18, i64* %RIP_ptr, align 4
  store i64 %RSI_1, i64* %RSI_ptr, align 4
  store i64 %RSP_7, i64* %RSP_ptr, align 4
  ret void
}

declare void @fn_27(%regset*)

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

define i32 @main(i32, i8**) {
  %3 = alloca %regset, align 8
  %4 = alloca [8192 x i8], align 1
  %5 = ptrtoint [8192 x i8]* %4 to i64
  %6 = add i64 %5, 8184
  %7 = inttoptr i64 %6 to i64*
  store i64 -1, i64* %7, align 4
  %8 = getelementptr inbounds %regset, %regset* %3, i64 0, i32 15
  store i64 %6, i64* %8, align 8
  %9 = getelementptr inbounds %regset, %regset* %3, i64 0, i32 11
  %10 = zext i32 %0 to i64
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %regset, %regset* %3, i64 0, i32 14
  %12 = ptrtoint i8** %1 to i64
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %regset, %regset* %3, i64 0, i32 2
  store i32 514, i32* %13, align 4
  call void @fn_0(%regset* %3)
  %14 = getelementptr inbounds %regset, %regset* %3, i64 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind
define void @main_init_regset(%regset* nocapture, i8*, i32, i32, i8**) #1 {
  %6 = ptrtoint i8* %1 to i64
  %7 = zext i32 %2 to i64
  %8 = add i64 %6, -8
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to i64*
  store i64 -1, i64* %10, align 4
  %11 = getelementptr inbounds %regset, %regset* %0, i64 0, i32 15
  store i64 %9, i64* %11, align 4
  %12 = getelementptr inbounds %regset, %regset* %0, i64 0, i32 11
  %13 = zext i32 %3 to i64
  store i64 %13, i64* %12, align 4
  %14 = getelementptr inbounds %regset, %regset* %0, i64 0, i32 14
  %15 = ptrtoint i8** %4 to i64
  store i64 %15, i64* %14, align 4
  %16 = getelementptr inbounds %regset, %regset* %0, i64 0, i32 2
  store i32 514, i32* %16, align 4
  ret void
}

; Function Attrs: nounwind readonly
define i32 @main_fini_regset(%regset* nocapture readonly) #2 {
  %2 = getelementptr inbounds %regset, %regset* %0, i64 0, i32 7
  %3 = load i64, i64* %2, align 4
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
