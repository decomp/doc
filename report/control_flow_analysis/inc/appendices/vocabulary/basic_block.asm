; Basic block with two non-branching instructions terminated by a
; branching instruction with the successors block_1 and block_2.
block_0:
	mov     eax, 0
	cmp     ecx, 42
	je      block_2

; Basic block with one non-branching instruction terminated by a
; fallthrough into block_2, as branches may only target the first
; instruction of basic blocks, and the je terminator instruction
; of block_0 targets block_2.
block_1:
	mov     eax, 1

; Basic block with zero non-branching instructions terminated by
; a branching instruction, returning control flow to the caller.
block_2:
	ret
