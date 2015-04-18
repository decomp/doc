; ModuleID = 'example1.ll'
target datalayout = "e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-pc-linux-gnu"

%struct.rlimit = type { i32, i32 }

define i32 @foo(i32, i32) {
driverBlock:
  %rl = alloca %struct.rlimit, align 8
  %2 = bitcast %struct.rlimit* %rl to i64*
  store i64 0, i64* %2, align 8
  %3 = ptrtoint %struct.rlimit* %rl to i32
  %4 = call i32 @getrlimit(i32 3, i32 %3)
  %5 = getelementptr %struct.rlimit* %rl, i32 0, i32 0
  %6 = load i32* %5, align 8
  %7 = call i32 @mmap(i32 0, i32 %6, i32 3, i32 131106, i32 -1, i32 0)
  %8 = add i32 %7, %6
  %9 = add i32 %8, -52
  %10 = inttoptr i32 %9 to i32*
  store i32 %1, i32* %10, align 4
  %11 = add i32 %8, -56
  %12 = inttoptr i32 %11 to i32*
  store i32 %0, i32* %12, align 4
  %13 = add i32 %8, -84
  %14 = load i32* %10, align 4
  %15 = add i32 %8, -68
  %16 = inttoptr i32 %15 to i32*
  store i32 0, i32* %16, align 4
  %17 = add i32 %8, -72
  %18 = inttoptr i32 %17 to i32*
  store i32 %0, i32* %18, align 4
  %19 = add i32 %8, -76
  %20 = inttoptr i32 %19 to i32*
  store i32 %14, i32* %20, align 4
  %21 = inttoptr i32 %13 to i32*
  store i32 0, i32* %21, align 4
  %22 = add i32 %8, -80
  %23 = inttoptr i32 %22 to i32*
  store i32 0, i32* %23, align 4
  br label %block_0x34.i

block_0x34.i:                                     ; preds = %block_0x53.i, %driverBlock
  %24 = phi i32 [ 0, %driverBlock ], [ %34, %block_0x53.i ]
  %25 = load i32* %21, align 4
  %26 = add i32 %25, -100
  %27 = icmp slt i32 %26, 0
  %28 = sub i32 99, %25
  %29 = and i32 %28, %25
  %30 = icmp slt i32 %29, 0
  %tmp57.i = xor i1 %27, %30
  br i1 %tmp57.i, label %block_0x41.i, label %block_0x53.i

block_0x41.i:                                     ; preds = %block_0x34.i
  %31 = mul i32 %24, 3
  %32 = add i32 %31, %25
  store i32 %32, i32* %21, align 4
  %.pre.i = load i32* %23, align 4
  br label %block_0x53.i

block_0x53.i:                                     ; preds = %block_0x41.i, %block_0x34.i
  %33 = phi i32 [ %.pre.i, %block_0x41.i ], [ %24, %block_0x34.i ]
  %34 = add i32 %33, 1
  store i32 %34, i32* %23, align 4
  %35 = add i32 %33, -9
  %36 = icmp slt i32 %35, 0
  %37 = sub i32 8, %33
  %38 = and i32 %34, %37
  %39 = icmp slt i32 %38, 0
  %tmp59.i = xor i1 %36, %39
  br i1 %tmp59.i, label %block_0x34.i, label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x53.i
  %40 = load i32* %21, align 4
  %rl1 = alloca %struct.rlimit, align 8
  %41 = bitcast %struct.rlimit* %rl1 to i64*
  store i64 0, i64* %41, align 8
  %42 = ptrtoint %struct.rlimit* %rl1 to i32
  %43 = call i32 @getrlimit(i32 3, i32 %42)
  %44 = getelementptr %struct.rlimit* %rl1, i32 0, i32 0
  %45 = load i32* %44, align 8
  %46 = tail call i32 @munmap(i32 %7, i32 %45)
  ret i32 %40
}

declare i32 @getrlimit(i32, i32)

declare i32 @mmap(i32, i32, i32, i32, i32, i32)

declare i32 @munmap(i32, i32)
