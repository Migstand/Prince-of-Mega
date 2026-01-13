.text

main:	

#===================================================
#	FUNCAO DE COLISAO DE PAREDES
		
#	$4 = Posicao de verificacao
#	$
#	$6 = Quantas linhas
#	$7 = Quantas colunas

coliwall:	
	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
walloop:	
	lw $8, -4($9)
	lw $10, 0($9)
	
	bne $10, $8, nopeandar
 	
 	addi $9, $9, 1024
 	addi $11, $11, -1
 	
	bne $11, $0, walloop
	
	addi $12, $12, 4
	add $9, $0, $12
	add $11, $0, $6
	addi $13, $13, -1
	
	bne $13, $0, walloop
	
	jr $31
	
nopeandar:	add $9, $0, $0
	add $10, $0, $0
	add $12, $0, $0
	
	lw $8, 8($15)
	add $21, $21, $8
	add $24, $21, $0
	jal mega
	
	add $31, $0, $22
	jr $31