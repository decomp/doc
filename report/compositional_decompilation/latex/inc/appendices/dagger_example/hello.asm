main:
	push    rbp
	mov     rbp, rsp
	sub     rsp, 32
	lea     rax, hello
	mov     [rbp-4], 0
	mov     [rbp-8], edi
	mov     [rbp-16], rsi
	mov     rdi, rax
	mov     al, 0
	call    printf
	mov     ecx, 0
	mov     [rbp-20], eax
	mov     eax, ecx
	add     rsp, 32
	pop     rbp
	ret

hello:
	db 'hello world',10,0
