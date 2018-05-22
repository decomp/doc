mov     [ebp-12], 42     ; int x = 42
lea     eax, unk_8000043 ;    "foo"
mov     [ebp-16], eax    ; char *s = "foo"
push    [ebp-12]         ;    arg3: x
push    [ebp-16]         ;    arg2: s
lea     eax, unk_8000047 ;    "%s, %d"
push    eax              ;    arg1: format
call    printf           ; printf("%s, %d", s, x)
