#===================================================
#	FUNCAO DE COLISAO DE PAREDES DO TIRO
		
#	$4 = Posicao de verificacao
#	$5 = Cor que não pode passar
#	$6 = Quantas linhas
#	$7 = Quantas colunas

colishot:	

	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
shotloop:	
	
	lw $10, 0($9)
	
	beq $10, $5, stopshot
 	
 	addi $9, $9, 1024
 	addi $11, $11, -1
 	
	bne $11, $0, shotloop
	
	addi $12, $12, 4
	add $9, $0, $12
	add $11, $0, $6
	addi $13, $13, -1
	
	bne $13, $0, shotloop
	
	jr $31