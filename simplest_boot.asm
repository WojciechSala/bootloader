org		0x7c00
bits	16

Start:
	cli     ; Clear all interrupts
	hlt     ; halt the system
	
times 512-($-$$)-2 db 0     ; Count the file size and clear last 2 bytes for signature
 
dw 0xAA55     ; Boot signature
