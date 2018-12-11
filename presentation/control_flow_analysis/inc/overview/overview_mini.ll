define i32 @f(i32 %n) {
entry:
  br label %loop_cond
loop_cond:
  %sum = phi i32 [ 0, %entry ], [ %sum.2, %loop_post ]
  %i = phi i32 [ 0, %entry ], [ %i.1, %loop_post ]
  %cond1 = icmp slt i32 %i, %n
  br i1 %cond1, label %loop_body, label %exit
loop_body:
  %cond2 = icmp slt i32 %sum, 100
  br i1 %cond2, label %if_body, label %if_exit
if_body:
  %sum.1 = add i32 %sum, %i
  br label %if_exit
if_exit:
  %sum.2 = phi i32 [ %sum.1, %if_body ], [ %sum, %loop_body ]
  br label %loop_post
loop_post:
  %i.1 = add i32 %i, 1
  br label %loop_cond
exit:
  ret i32 %sum
}
