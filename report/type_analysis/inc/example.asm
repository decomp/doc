; int f(int y)
;
;    ebp-8: s
;    ebp-4: x
;    ebp+0: old ebp
;    ebp+4: return address
;    ebp+8: y
f:
	push    ebp                ; store old stack frame
	mov     ebp, esp           ; create new stack frame
	sub     esp, 8             ; allocate local variables
	mov     DWORD [ebp-4], 42  ; int x = 42
	lea     eax, [unk_8000040] ;    "foo"
	mov     DWORD [ebp-8], eax ; char *s = "foo"
	push    DWORD [ebp-4]      ;    arg3: x
	push    DWORD [ebp-8]      ;    arg2: s
	lea     eax, [unk_8000044] ;    "%s, %d"
	push    eax                ;    arg1: format
	call    printf             ; printf("%s, %d", s, x)
	add     esp, 12            ; caller cleanup
	mov     eax, [ebp-4]       ;    x
	mov     ebx, [ebp+8]       ;    y
	add     eax, ebx           ; return x + y
	mov     esp, ebp           ; deallocate local variables
	pop     ebp                ; restore old stack frame
	ret     4                  ; callee cleanup
