mov bx, 4

cmp bx, 4
jle equal_or_less
cmp bx, 40
jl less
mov al, 'c'
jmp the_end

equal_or_less:
    mov al, 'A'
    jmp the_end

less:
    mov al, 'B'
    jmp the_end

the_end:
    mov ah, 0x0e
    int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55