// Ejemplos de Codigo //

MOV AX, 5 ; Mueve el valor 5 al registro AX

ADD AX, BX ; Suma el valor de BX al de AX y almacena el resultado en AX

SUB AX, 1 ; Resta 1 al valor de AX

INC AX ; Incrementa el valor de AX en 1

DEC BX ; Decrementa el valor de BX en 1

CMP AX, BX ; Compara AX con BX

JMP etiqueta ; Salta a la dirección indicada por "etiqueta"

CMP AX, BX
JE igualdad ; Salta a "igualdad" si AX es igual a BX

CMP AX, BX
JNE no_igualdad ; Salta a "no_igualdad" si AX no es igual a BX

PUSH AX ; Guarda el valor de AX en la pila
POP BX ; Recupera el último valor de la pila y lo almacena en BX

CALL subrutina ; Llama a una subrutina
; Código de la subrutina
RET ; Retorna de la subrutina

AND AX, BX ; Realiza un AND entre AX y BX, resultado en AX
OR AX, BX ; Realiza un OR entre AX y BX
XOR AX, BX ; Realiza un XOR entre AX y BX
NOT AX ; Invierte todos los bits de AX

SHR AX, 1 ; Desplaza los bits de AX una posición a la derecha (divide entre 2)
SHL AX, 1 ; Desplaza los bits de AX una posición a la izquierda (multiplica por 2)