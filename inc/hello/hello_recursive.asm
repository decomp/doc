; Produced by IDA Pro
_start:
	mov  rdi, hello
	call printf
	mov  rdi, 0
	call exit
	mov  rax, 0
	ret
hello:
	db "hello world",10,0
