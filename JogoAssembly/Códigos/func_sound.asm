.text
#	1.036.000 = 1000ms

	addi $9, $0, 10
main: #TESTE DA FUNCA
	addi $9, $9, -1
	addi $8, $0, 1036000
	
	add $4, $0, 61
	addi $5, $0, 1000
	addi $6, $0, 3
	addi $7, $0, 100
	
	addi $2, $0, 31
	syscall
	
	beq $9, $0, fim
loop:	
	addi $8, $8, -1
	
	bne $8, $0, loop
	
	j main
	
fim:	addi $2, $0, 10
	syscall