_start:
	mov  rdi, hello
	call printf
	mov  rdi, 0
	call exit
	ret
hello:
	db "hello world",10,0
