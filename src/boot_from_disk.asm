[org 0x7c00]

    mov [BOOT_DRIVE], dl

    mov bp, 0x8000
    mov sp, bp

    mov bx, 0x9000
    mov dh, 3
    mov dl, [BOOT_DRIVE]
    call load_disk


    mov dx, [0x9000]
    call print_hex

    call print_nl

    mov dx, [0x9000 + 512]
    call print_hex

    call print_nl

    mov dx, [0x9000 + 1024]
    call print_hex

    jmp $

%include "./print_string.asm"
%include "./print_hex.asm"
%include "./load_disk.asm"

BOOT_DRIVE: db 0

times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface
times 256 dw 0xffff