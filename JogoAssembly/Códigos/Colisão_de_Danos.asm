.text

main:	

#===================================================
#	FUNCAO DE COLISAO DE DANO
		
#	$4 = Posicao de verificacao
#	$5 = Cor do dano
#	$6 = Quantas linhas
#	$7 = Quantas colunas

colidamage:	


	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
damageloop:	
	
	lw $10, 0($9)
	
	beq $10, $5, selfdamage
 	
 	addi $9, $9, 1024
 	addi $11, $11, -1
 	
	bne $11, $0, damageloop
	
	addi $12, $12, 4
	add $9, $0, $12
	add $11, $0, $6
	addi $13, $13, -1
	
	bne $13, $0, damageloop
	
	jr $31
	
selfdamage:	add $9, $0, $0
	add $10, $0, $0
	add $12, $0, $0
	
	lw $8, 12($15)
	add $21, $21, $8
	add $24, $21, $0
	
	addi $4, $21, -40
	addi $5, $0, 36
	addi $6, $0, 26
	jal apagarp
	
	add $4, $0, $21
	jal dano
	
	addi $4, $0, 25000
	jal timer
	
	addi $4, $21, -6224
	addi $5, $0, 38
	addi $6, $0, 30
	jal apagarp
	
	lw $9, 16($15) # PERDE VIDA
	addi $9, $9, -1
	
	sw $9, 16($15)
	
	
	add $31, $0, $22
	jr $31
