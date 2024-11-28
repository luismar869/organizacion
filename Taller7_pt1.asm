section .data
num1 db 5 ; Definición de variable num1 con valor 5
num2 db 11 ; Definición de variable num2 con valor 11
result db 0 ; Definición de variable result con valor inicial 0
msg db 'Resultado: ', 0 ; Mensaje a imprimir antes del resultado, con terminador nulo

section .bss
buffer resb 4 ; Reservamos 4 bytes de memoria para almacenar el resultado en
formato ASCII

section .text
global _start ; Indicamos el punto de inicio del programa

_start:

mov al, [num1] ; Cargar el valor de num1 en el registro AL
add al, [num2] ; Sumar el valor de num2 al contenido de AL
mov [result], al ; Guardar el resultado de la suma en la variable result

; Convertir el resultado a ASCII
movzx eax, byte [result] ; Cargar el valor de result en EAX y expandir a 32 bits
add eax, 48 ; Convertir el valor numérico a su representación ASCII
mov [buffer], al ; Guardar el carácter ASCII resultante en el buffer

; Imprimir el mensaje "Resultado: "
mov eax, 4 ; Llamada al sistema para escribir (sys_write)
mov ebx, 1 ; Descripción de archivo para salida estándar (stdout)
mov ecx, msg ; Dirección del mensaje a imprimir
mov edx, 11 ; Tamaño del mensaje
int 0x80 ; Interrupción para realizar la operación de escritura

; Imprimir el valor en buffer
mov eax, 4 ; Llamada al sistema para escribir (sys_write)
mov ebx, 1 ; Descripción de archivo para salida estándar (stdout)
mov ecx, buffer ; Dirección del buffer a imprimir
mov edx, 1 ; Tamaño de un carácter a imprimir
int 0x80 ; Interrupción para realizar la operación de escritura

; Terminar el programa
mov eax, 1 ; Llamada al sistema para terminar el programa (sys_exit)
xor ebx, ebx ; Código de salida 0
int 0x80 ; Interrupción para realizar la operación de salida