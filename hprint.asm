hprint:;dx ist die Zahl / dx is the hex number
push bx
mov bx, HEX_PREFIX
call strprint
pop bx
pusha
mov cl, 16 - 4

hprint_loop:
mov bx, dx;Kopie der Originalzahl erstellen / Create a copy 
shr bx, cl;Shiften um cl nach rechts. 
and bx, 0x000f;Bitmasken, erste 3 Zahlen(12 bit) mit 0 überschreiben / bitmask first three(12 bit) digits
sub cl, 4;Um 4 dekrementieren / Decrement by 4

;print part
mov ah, 0x0e
mov al, [HEX_CHARS + bx]
int 0x10

cmp cl, 0;Vergleichen ob ,,Schiebewert" kleiner 0, wenn ja, abbrechen, wenn nein geht's weiter / if cl less than zero end, if not continue
jge hprint_loop
popa
ret

HEX_PREFIX: db "0x", 0
HEX_CHARS: db "0123456789ABCDEF"
