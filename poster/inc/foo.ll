define i32 @main(i32 %argc, i8** %argv) {
  br label %1
; <label>:1
  %i.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %x.0 = phi i32 [ 0, %0 ], [ %x.1, %9 ]
  %2 = icmp slt i32 %i.0, 10
  br i1 %2, label %3, label %11
; <label>:3
  %4 = icmp slt i32 %x.0, 100
  br i1 %4, label %5, label %8
; <label>:5
  %6 = mul nsw i32 2, %i.0
  %7 = add nsw i32 %x.0, %6
  br label %8
; <label>:8
  %x.1 = phi i32 [ %7, %5 ], [ %x.0, %3 ]
  br label %9
; <label>:9
  %10 = add nsw i32 %i.0, 1
  br label %1
; <label>:11
  ret i32 %x.0
}
