; Produced by objdump and ndisasm
_start:
	mov  rdi, hello
	call printf
	mov  rdi, 0
	call exit
	mov  rax, 0
	ret
hello:
	push qword 0x6F6C6C65 ; "hello"
	and  [rdi+0x6F], dh   ; " wo"
	jc   short 0x6D       ; "rl"
	or   al, [fs:rax]     ; "d\n\0"
