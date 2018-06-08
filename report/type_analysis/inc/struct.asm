; --- [ g ] -------------------------------------------------------

; void g(T ts[], int n)
;
;    esp+0:  stored ebx
;    esp+4:  stored esi
;    esp+8:  return address
;    esp+12: ts
;    esp+16: n
g:
	push    esi               ; store esi
	push    ebx               ; store ebx
	mov     eax, [esp+16]     ; eax = n
	test    eax, eax
	jle     .loc_ret          ; if (n <= 0) { return }
	mov     edx, [esp+12]     ; edx = ts
	lea     eax, [eax+eax*2]  ; eax = n*3
	lea     ebx, [edx+5]      ; edx = ts.name
	lea     esi, [ebx+eax*4]  ; end = ts.name + n*sizeof(T)
  .loc_loop:
	movsx   eax, BYTE [ebx-1] ; eax = ts->y
	push    eax               ;    arg4: eax
	push    DWORD [ebx-5]     ;    arg3: ts->x
	push    ebx               ;    arg2: ts->name
	add     ebx, 12           ; ts++
	push    format            ;    arg1: "%s (%d, %d)\n"
	call    printf            ; printf(
	                          ;    "%s (%d, %d)\n",
	                          ;    ts->name,
	                          ;    ts->x,
	                          ;    ts->y
	                          ; )
	add     esp, 16           ; caller cleanup
	cmp     esi, ebx
	jnz     .loc_loop         ; if (ts >= end) { break }
  .loc_ret:
	pop     ebx               ; restore ebx
	pop     esi               ; restore esi
	ret

; --- [ h ] -------------------------------------------------------

; void h(T *ts)
;
;    esp+4: ts
h:
	mov     eax, [esp+4]
	mov     DWORD [eax], 0
	mov     DWORD [eax+4], 0
	mov     DWORD [eax+8], 0 ; memset(ts, 0, sizeof(T))
	ret
