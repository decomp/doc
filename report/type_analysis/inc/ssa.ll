define i32 @f(i32 %a) {
entry:
  switch i32 %a, label %default [
    i32 5, label %case1
  ]
case1:
  %x.1 = mul i32 %a, 2
  br label %exit
default:
  %x.2 = mul i32 %a, 3
  br label %exit
exit:
  %x.0 = phi i32 [ %x.2, %default ], [ %x.1, %case1 ]
  ret i32 %x.0
}
