mov ah, 0x0e ;scrolling teletype BIOS routine

mov al, 'h'
int 0x10    ;bios interuption to print to screen (sreen-related IRS)
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

; mov al -> 

jmp $

times 510-($-$$) db 0
dw 0xaa55