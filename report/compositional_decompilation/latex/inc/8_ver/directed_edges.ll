define i32 @f(i1 %cond) {
foo:
	br i1 %cond, label %bar, label %baz
bar:
	ret i32 42
baz:
	ret i32 37
}
