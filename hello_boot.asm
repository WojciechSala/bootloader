org 0x7c00
bits 16

boot:
    mov si, hello     ; point si register to hello label memory location
    mov ah, 0x0e      ; 0x0e means 'Write Character in TTY mode'

.loop:
    lodsb
    or al, al     ; is al == 0 ?
    jz halt       ; if (al == 0) jump to halt label
    int 0x10      ; runs BIOS interrupt 0x10 - Video Services
    jmp .loop

halt:
    cli     ; clear interrupt flag
    hlt

hello: db "Hello world!", 0

times 510 - ($-$$) db 0
dw 0xaa55
