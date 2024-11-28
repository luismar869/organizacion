fecha:
db 0 ; Día (dd)
db 0 ; Mes (mm)
dw 0 ; Año (yyyy)
mov byte [fecha], 01 ; Día = 01
mov byte [fecha+1], 10 ; Mes = 10
mov word [fecha+2], 2005 ; Año = 2005
correo:
db 30 dup(0) ; Dirección de correo de hasta 30 caracteres
mov esi, correo
mov byte [esi], 'a' ; Primer carácter
mov byte [esi+1], 'b' ; Segundo carácter
mov byte [esi+2], 'c' ; Lo llena el usuario lo que falta
direccion:
calle db 30 dup(0) ; Nombre de la calle, hasta 30 caracteres
numero db 3 dup(0) ; Número de casa, hasta 3 caracteres
colonia db 30 dup(0) ; Nombre de la colonia, hasta 30 caracteres
mov esi, direccion
mov byte [direccion.calle], 'Reforma' ; Ingresar calle
mov byte [direccion.numero], '646' ; Ingresar número
mov byte [direccion.colonia], 'Centro' ; Ingresar colonia

curp:
db 18 dup(0) ; CURP de 18 caracteres
mov esi, curp
mov byte [esi], 'A' ; Primer carácter
mov byte [esi+1], 'B' ; Segundo carácter
mov byte [esi+2], 'C' ; Sigue hasta que se completa el curp