section .data
	vector dw 1,2,3,4
	versor dw 1,0,0,0


section .text

main:
	movq mm0, qword[vector] ;carga del vector en un registro MMX
	
	movd eax, mm0
	
	pmullw ;porque multipica?
	
	psrlq mm0, 16 ;realiza el desplazamiento hacia la derecha en valores empaquetados de 64bits
	;mueve hacia la derecha en 16 bits

