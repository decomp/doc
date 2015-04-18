global main

main:
	push    ebp
	mov     ebp, esp
	sub     esp, 20
	mov     eax, [ebp+12]
	mov     ecx, [ebp+8]
	mov     dword [ebp-4], 0
	mov     [ebp-8], ecx
	mov     [ebp-12], eax
	mov     dword [ebp-20], 0
	mov     dword [ebp-16], 0

  loc_loop_cond:
	cmp     dword [ebp-16], 10
	jge     loc_ret
	cmp     dword [ebp-20], 100
	jge     loc_skip_if_body
	imul    eax, [ebp-16], 3
	add     eax, [ebp-20]
	mov     [ebp-20], eax

  loc_skip_if_body:
	jmp     loc_loop_post

  loc_loop_post:
	mov     eax, [ebp-16]
	add     eax, 1
	mov     [ebp-16], eax
	jmp     loc_loop_cond

  loc_ret:
	mov     eax, [ebp-20]
	add     esp, 20
	pop     ebp
	ret
