section .data
numbers db 5, 8, 12, -3, 7
sum db 0
section .text
global _start
_start:
mov ebx, numbers
mov eax, 0
do_while_loop:
mov al, [ebx]
add eax, al
inc ebx
cmp al, 0
js end_do_while

jmp do_while_loop
end_do_while:
mov [sum], eax
; Fin del programa