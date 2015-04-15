; === [ Arithmetic instructions ] ===

;    ADD (Addition)
;       Syntax: add op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 + op2
	add	(t1, b4), (t2, b4), (t3, b8) ; t3 = t1 + t2

;    SUB (Subtraction)
;       Syntax: sub op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 - op2
	sub	(t1, b4), (42, b4), (t2, b8) ; t2 = t1 - 42

;    MUL (Unsigned multiplication)
;       Syntax: mul op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 * op2
	mul	(37, b4), (t1, b4), (t2, b8) ; t2 = 37 * t1

;    DIV (Unsigned division)
;       Syntax: div op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 / op2
	div	(4000, b4), (20, b4), (t1, b4) ; t1 = 4000 / 20

;    MOD (Unsigned modulo)
;       Syntax: mod op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 % op2
	mod	(t1, b4), (3, b4), (eax, b4) ; eax = t1 % 3

;    BSH (Logical shift)
;       Syntax: bsh op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 << op2   (right shifts if op2 < 0)
	bsh	(ebx, b4), (-4, b4), (t1, b8) ; t1 = ebx >> 4

; === [ Bitwise instructions ] ===

;    AND (Bitwise AND)
;       Syntax: and op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 & op2
	and	(t1, b4), (t2, b4), (t3, b4) ; t3 = t1 & t2

;    OR (Bitwise OR)
;       Syntax: or op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 | op2
	or	(t1, b4), (4, b4), (t2, b4) ; t2 = t1 | 4

;    XOR (Bitwise XOR)
;       Syntax: xor op1, op2, dst
;          op1: int or reg
;          op2: int or reg
;          dst: reg
;       Semantics: dst = op1 ^ op2
	xor	(0, b4), (eax, b4), (t1, b4) ; t1 = 0 ^ eax

; === [ Data transfer instructions ] ===

;    LDM (Load from memory)
;       Syntax: ldm op1, , dst
;          op1: int or reg
;          op2: empty
;          dst: reg
;       Semantics: dst = mem[op1]   (load a value the size of dst from memory)
	ldm	(16392, b4), , (t1, b2) ; t1 = *(uint16 *)mem[0x4008]

;    STM (Store to memory)
;       Syntax: stm op1, , dst
;          op1: int or reg
;          op2: empty
;          dst: int or reg
;       Semantics: mem[dst] = op1   (store a value the size of op1 to memory)
	stm	(t1, b8), , (16392, b4) ; *(uint64 *)mem[0x4008] = t1

;    STR (Store to register)
;       Syntax: str op1, , dst
;          op1: int or reg
;          op2: empty
;          dst: reg
;       Semantics: dst = op1
	str	(12, b4), , (t1, b4) ; t1 = 12

; === [ Conditional instructions ] ===

;    BISZ (Boolean is zero)
;       Syntax: bisz op1, , dst
;          op1: int or reg
;          op2: empty
;          dst: reg
;       Semantics: dst = (op1 == 0)
	bisz	(t1, b4), , (t2, b1) ; t2 = (t1 == 0)

;    JCC (Conditional jump)
;       Syntax: jcc op1, , dst
;          op1: int or reg
;          op2: empty
;          dst: subaddr
;       Semantics: if (op1 != 0) goto dst
	jcc	(t1, b4), , (11008, b1) ; if (t1 != 0) goto 0x2B00

; === [ Other instructions ] ===

;    UNDEF (Undefine a register)
;       Syntax: undef , , dst
;          op1: empty
;          op2: empty
;          dst: reg
;       Semantics: // Undefine dst, its value is now unknown
	undef	, , (t1, b4) ; Undefine t1, its value is now unknown

;    UNKN (Unknown instruction)
;       Syntax: unkn , ,
;          op1: empty
;          op2: empty
;          dst: empty
;       Semantics: // Unknown instruction from source architecture
	unkn	, , ; Unknown instruction from source architecture

;    NOP (No operation)
;       Syntax: nop , ,
;          op1: empty
;          op2: empty
;          dst: empty
;       Semantics: // No operation
	nop	, , ; No operation
