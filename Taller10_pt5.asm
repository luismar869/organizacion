section .data
salto_linea db 10, 0
section .bss
buffer resb 2
section .text
global _start
_start:
mov ecx, 10
for_loop:
; Convertir el valor de count en ASCII
mov eax, ecx
add eax, '0'
mov [buffer], al
; Imprimir el valor actual de count
mov eax, 4
mov ebx, 1
mov ecx, buffer
mov edx, 1
int 0x80
; Imprimir un salto de línea después del número
mov eax, 4
mov ebx, 1
mov ecx, salto_linea

mov edx, 1
int 0x80
; Decrementar count
dec ecx
; Verificar si count >= 1
cmp ecx, 1
jge for_loop
exit:
; Terminar el programa
mov eax, 1
xor ebx, ebx
int 0x80