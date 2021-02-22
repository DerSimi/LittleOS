[org 0x7c00]

mov ah, 0x0e

mov bp, 0x8000
mov sp, bp

mov bx, msg
call strprint

mov dx, 0x13
call hprint

jmp $

%include "strprint.asm"
%include "hprint.asm"
%include "bad_num_print.asm"

msg: db "My age is ", 0
times 510 - ($ - $$) db 0; Fill rest with 0
dw 0xaa55; Magic key