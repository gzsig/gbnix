mov ah, 0x0e

; mov al, [my_secret]
; int 0x10

mov bx,0x7c0
mov ds, bx
mov al, [my_secret]
int 0x10

; mov al, [es:my_secret]
; int 0x10

mov bx, 0x7c0
mov es, bx
mov al, [es:my_secret]
int 0x10

jmp $

my_secret:
    db "X"

    times 510-($-$$) db 0
    dw 0xaa55