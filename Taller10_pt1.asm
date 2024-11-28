section .data
sum db 0
section .text
global _start
_start:
mov ecx, 1
mov eax, 0
while_loop:
cmp ecx, 10
jg end_while
add eax, ecx

inc ecx
jmp while_loop
end_while:
mov [sum], eax
; Fin del programa