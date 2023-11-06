section .data
	vector dw 1,2,3,4
	versor dw 1,0,0,0
	valor dd 5

section .text
global ejer1
global ejer2
global ejer3
global ejer4
ejer1:
    mov ebp, esp; for correct debugging
    movq mm0, qword[vector] ;carga del vector en un registro MMX
	
    movd eax, mm0
	
    ;pmullw ;porque multipica?
    movq mm2, 10
    psrlq mm1, mm0, mm2;realiza el desplazamiento hacia la derecha en valores empaquetados de 64bits
	;mueve hacia la derecha en 16 bits
	
ejer2:
	paddw mm0,mm1
	
ejer3:
	pxor mm0,mm0
	
ejer4:
	movd mm0, dword [valor]
	movd mm1, dword [vector]
	pmulld mm1, mm0
	movd mm2, dword [vector + 4]
	pmulld mm2, mm0
	;sumar los resultados parciales
	paddd mm1, mm2
	paddd mm1, mm3
	paddd mm1, mm4
	
	
	
