;;; NOT DONE YET
org		0x7c00
bits	16

jmp word 0x0000:start

start:

  mov ax, 0x2000
  mov es, ax
  xor bx, bx 
  
  mov ah, 2
  mov al, 3
  mov ch, 0
  mov cl, 2
  mov dh, 0

  int 0x13

  jmp word 0x2000:0x0000


times 510-($-$$) db 0     ; Count the file size and clear last 2 bytes for signature
 
dw 0xAA55     ; Boot signature
