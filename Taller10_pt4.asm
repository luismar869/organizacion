section .data
num db 5
result_even db 'Par'
result_odd db 'Impar'
section .text
global _start
_start:
mov al, [num]
test al, 1
jz is_even
is_odd:
; Código para número impar
mov ebx, result_odd
jmp end_if_else
is_even:
; Código para número par
mov ebx, result_even
end_if_else:
; Fin del programa