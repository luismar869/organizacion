section .data
num1 db '3'
num2 db '4'
mensaje_cero db 'Esto es un cero', 0
mensaje_resultado db 'Resultado: ', 0
salto_linea db 10, 0
section .bss
resultado resb 2
section .text
global _start
_start:
; Convertir num1 y num2 de ASCII a sus valores numéricos
mov al, [num1]

sub al, '0'
mov bl, [num2]
sub bl, '0'
; Sumar los dos números
add al, bl
mov ah, 0
; Verificar si el resultado es 0
cmp al, 0
je print_zero
; Convertir el resultado a ASCII para imprimir
add al, '0'
mov [resultado], al
; Imprimir mensaje "Resultado: "
mov eax, 4
mov ebx, 1
mov ecx, mensaje_resultado
mov edx, 11
int 0x80
; Imprimir el resultado de la suma
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80
; Imprimir salto de línea
mov eax, 4
mov ebx, 1
mov ecx, salto_linea
mov edx, 1
int 0x80
jmp exit
print_zero:
; Imprimir mensaje "Esto es un cero"
mov eax, 4
mov ebx, 1
mov ecx, mensaje_cero

mov edx, 15
int 0x80
; Imprimir salto de línea
mov eax, 4
mov ebx, 1
mov ecx, salto_linea
mov edx, 1
int 0x80
exit:
; Terminar el programa
mov eax, 1
xor ebx, ebx
int 0x80