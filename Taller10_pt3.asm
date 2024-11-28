section .data
product db 1
section .text
global _start
_start:
mov ecx, 1
mov eax, 1
for_loop:
cmp ecx, 5
jg end_for
imul eax, ecx
inc ecx
jmp for_loop
end_for:
mov [product], eax
; Fin del programa