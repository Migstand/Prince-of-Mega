.text

main:	

#===================================================
#	FUNCAO DE COLISAO DE ATAQUE
		
#	$4 = Posicao de verificacao
#	$5 = Cor do dano
#	$6 = Quantas linhas
#	$7 = Quantas colunas

enedamage:	


	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
enemyloop:	
	
	lw $10, 0($9)
	
	beq $10, $5, hitdamage
 	
 	addi $9, $9, 1024
 	addi $11, $11, -1
 	
	bne $11, $0, enemyloop
	
	addi $12, $12, 4
	add $9, $0, $12
	add $11, $0, $6
	addi $13, $13, -1
	
	bne $13, $0, enemyloop
	
	jr $31
	
hitdamage:	add $9, $0, $0
	add $10, $0, $0
	add $12, $0, $0
	
	lw $8, 12($15)
	add $20, $20, $8
	add $25, $20, $0
	
	addi $4, $20, -40
	addi $5, $0, 36
	addi $6, $0, 26
	jal apagarp
	
	add $4, $0, $20
	jal dano
	
	addi $4, $0, 25000
	jal timer
	
	addi $4, $20, -6224
	addi $5, $0, 38
	addi $6, $0, 30
	jal apagarp
	
	lw $9, 40($15) # PERDE VIDA
	addi $9, $9, -1
	
	sw $9, 40($15)
	
	
	
	jr $31