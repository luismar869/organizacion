section .data
msg db 'A\$', 0 ; Mensaje que contiene los caracteres A, \, $ y &, con terminador nulo

section .bss
buffer resb 4 ; Reservamos espacio en el buffer, aunque aquí no se usa

section .text

global _start

_start:

; Imprimir el mensaje con los caracteres especiales
mov eax, 4 ; Llamada al sistema para escribir (sys_write)
mov ebx, 1 ; Descripción de archivo para salida estándar (stdout)
mov ecx, msg ; Dirección del mensaje a imprimir
mov edx, 4 ; Tamaño del mensaje (3 caracteres y el terminador nulo)
int 0x80 ; Interrupción para realizar la operación de escritura

; Terminar el programa
mov eax, 1 ; Llamada al sistema para terminar el programa (sys_exit)
xor ebx, ebx ; Código de salida 0
int 0x80 ; Interrupción para realizar la operación de salida