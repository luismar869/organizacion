section .data
msg db '@', 0 ; Caracter @ para mostrar

section .text
global _start

_start:

; Imprimir el carácter '@' directamente
mov eax, 4 ; Llamada al sistema para escribir (sys_write)
mov ebx, 1 ; Descripción de archivo para salida estándar (stdout)
mov ecx, msg ; Dirección del mensaje que contiene '@'
mov edx, 1 ; Tamaño del mensaje (un carácter)
int 0x80 ; Interrupción para realizar la operación de escritura

; Terminar el programa
mov eax, 1 ; Llamada al sistema para terminar el programa (sys_exit)
xor ebx, ebx ; Código de salida 0
int 0x80 ; Interrupción para realizar la operación de salida

Direccionamiento Indirecto:

section .data
at_char db '@' ; Caracter @ a mostrar

section .text
global _start

_start:

mov esi, at_char ; Cargar la dirección de at_char en el registro ESI
mov eax, 4 ; Llamada al sistema para escribir (sys_write)

mov ebx, 1 ; Descripción de archivo para salida estándar (stdout)
mov ecx, [esi] ; Utilizamos direccionamiento indirecto mediante ESI
mov edx, 1 ; Tamaño del mensaje (un carácter)
int 0x80 ; Interrupción para realizar la operación de escritura

; Terminar el programa
mov eax, 1 ; Llamada al sistema para terminar el programa (sys_exit)
xor ebx, ebx ; Código de salida 0
int 0x80 ; Interrupción para realizar la operación de salida