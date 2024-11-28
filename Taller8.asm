section .data
newline db 0xA ; Nueva línea para separaciones

section .bss
res resb 1 ; Espacio para un carácter

section .text
global _start
_start:

; Imprimir 'l' (ASCII 108)
mov al, 'l'
mov [res], al
mov eax, 4 ; Syscall para escribir
mov ebx, 1 ; Usar la salida estándar
mov ecx, res ; Dirección de 'res'
mov edx, 1 ; Longitud de 1 carácter
int 0x80 ; Interrupción para imprimir el carácter

; Imprimir 'D' (ASCII 68)
mov al, 'D'
mov [res], al

mov eax, 4
mov ebx, 1
mov ecx, res
mov edx, 1
int 0x80

; Imprimir 'B' (ASCII 66)
mov al, 'B'
mov [res], al
mov eax, 4
mov ebx, 1
mov ecx, res
mov edx, 1
int 0x80

; Imprimir '4' (ASCII 52)
mov al, '4'
mov [res], al
mov eax, 4
mov ebx, 1
mov ecx, res
mov edx, 1
int 0x80

; Imprimir '2' (ASCII 50)
mov al, '2'
mov [res], al
mov eax, 4
mov ebx, 1
mov ecx, res
mov edx, 1

int 0x80

; Imprimir nueva línea
mov eax, 4
mov ebx, 1
mov ecx, newline
mov edx, 1
int 0x80

; Terminar el programa
mov eax, 1
xor ebx, ebx
int 0x80