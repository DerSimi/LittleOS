strprint:;bx ist Nachricht, erste Speicheradresse dessen. / bx is the message
pusha;Alle Register auf Stack schieben /push all registers to stack
mov ah, 0x0e;Bios OP Code

strprint_loop:
mov al, [bx];
cmp al, 0;Untersuchen ob bei al 0 ist, wenn ja, Ende, wenn nein Ausgabe. /if al 0, if so, end, if not print out
jne strprint_printchar;Zeichen ausgeben / print char
popa
ret

strprint_printchar:
int 0x10;Interrupt
inc bx;bx um eins erhöhen, um bei nächster Iteration nächstes Zeichen zu erhalten.
jmp strprint_loop;Untersuchung fortsetzen / continue
