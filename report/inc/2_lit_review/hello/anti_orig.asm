_start:
	xor  al, al
	jz   fake+1 ; true-branch always taken
fake:
	db   0xE9   ; jmp instruction opcode
	mov  rdi, hello
	call printf
	mov  rdi, 0
	call exit
	ret
hello:
	db "hello world",10,0
