.text

main:	
#	Auxilio no c�digo ctrl c ctlc v
	
	#===================================================
#	MOVESET DO MEGAMAN		
moveset:
	add $22, $0, $31
	lw $12, 0($15)
	beq $14, 20, pulacol
	beq $14, 30, quedacol								
	add $24, $0, $21
	lw $9, 4($23)
	
	bne $9, $0, cod
	
	jal mega
	
cod:	addi $10, $0, 'd'
	beq $9, $10, frente
	
	addi $10, $0, 'e'
	beq $9, $10, frente
	
	addi $10, $0, 'a'
	beq $9, $10, tras
	
	addi $10, $0, 'q'
	beq $9, $10, tras
	
	addi $10, $0, 'w'
	beq $9, $10, pulomega
	
	addi $10, $0, 'j'
	beq $9, $10, tiromega
#============== DETECTOR DE DANO PARADO	
	addi $9, $21, 40
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	
	
	addi $17, $0, 0
	addi $14, $0, 0
	
	
	add $31, $0, $22
	jr $31
#================================================================
#================================================================
#	MOVIMENTAÇÃO PARA FRENTE
	
frente:	

	lw $16, 4($23)
	sw $0, 4($23)
	
	addi $21, $21, 4
	add $24, $0, $21
	
	add $10, $0, 'e' #POR ENQUANTO ASSIM
	beq $16, $10, pacoleve
	beq $17, $0, paco1
	beq $17, 1, paco2
	beq $17, 2, paco3
	
	
	add $31, $0, $22
	jr $31
	
nopefrente:	add $9, $0, $0
	add $10, $0, $0
	add $8, $0, $0
	
	addi $21, $21, -4
	add $24, $21, $0
	jal mega
	
	add $31, $0, $22
	jr $31
pacoleve:	
	addi $4, $24, 0
	add $12, $0, $4
	addi $5, $0, 10
	addi $6, $0, 21
	
	jal apagarp
#============== QUEDA LEVE
	addi $9, $21, 24536
	addi $8, $0, 0x0000
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO LEVE
	addi $9, $21, 40
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	
	jal megaleve
	
	
	addi $4, $0, 12000
	jal timer
	
	
	add $4, $0, $12
	addi $4, $4, -44
	addi $5, $0, 22
	addi $6, $0, 24
	
	
	jal apagarp
	addi $14, $0, 1
	
	
	add $31, $0, $22
	jr $31

#-------------------------------------------
#	PRIMEIRO PACO	
paco1:	
	addi $4, $24, -60
	add $12, $0, $4
	addi $5, $0, 30
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO1
	
	addi $9, $21, 24536
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO1
	addi $9, $21, 52
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
		
	jal megapaco1 #1
	
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp 
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco1 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco1 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 0
	addi $5, $0, 26
	addi $6, $0, 24
	
	lw $12, 0($15)	#CARREGA O VALOR DO TIRO EM MOVIMENTO
	bne $12, $0, fimpac1
	
	jal apagarp
	
	
fimpac1:	addi $17, $17, 1
	addi $14, $0, 1
	
	add $31, $0, $22
	jr $31
	

#-------------------------------------------
#	SEGUNDO PACO	
paco2:	
	addi $4, $24, -64
	add $12, $0, $4
	addi $5, $0, 30
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO2
	
	addi $9, $21, 24552
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO2
	addi $9, $21, 52
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
		
	jal megapaco2 #1
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco2 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco2 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 0
	addi $5, $0, 23
	addi $6, $0, 24
	
	lw $12, 0($15)
	bne $12, $0, fimpac2
	
	jal apagarp
	
fimpac2:	beq $14, 2, minus
	addi $17, $17, 1
	
	add $31, $0, $22
	jr $31
	
minus:	addi $17, $17, -1

	add $31, $0, $22
	jr $31

#-------------------------------------------
#	TEREIRO PACO
	
paco3:	
	
	addi $4, $24, -60
	add $12, $0, $4
	addi $5, $0, 28
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO3
	
	addi $9, $21, 24536
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO3
	addi $9, $21, 52
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
		
	jal megapaco3 #1
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco3 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	jal apagarp
	
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco3 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, -8
	addi $5, $0, 26
	addi $6, $0, 24
	
	lw $12, 0($15)
	bne $12, $0, fimpac3
	
	jal apagarp
	
fimpac3:	addi $17, $17, -1
	
	addi $14, $0, 2
	
	add $31, $0, $22
	jr $31	


#================================================================
#================================================================
#	MOVIMENTAÇÃO PARA TRAS

tras:	

	lw $16, 4($23)
	sw $0, 4($23)
	
	addi $21, $21, -4
	add $24, $0, $21
	
	add $10, $0, 'q' #POR ENQUANTO ASSIM
	beq $16, $10, pacolevet
	beq $17, $0, paco1t
	beq $17, 1, paco2t
	beq $17, 2, paco3t
	
	
	add $31, $0, $22
	jr $31
	
nopetras:	add $9, $0, $0
	add $10, $0, $0
	add $8, $0, $0
	
	addi $21, $21, 4
	add $24, $21, $0
	jal mega
	
	add $31, $0, $22
	jr $31	
pacolevet:	
	addi $4, $24, 0
	add $12, $0, $4
	addi $5, $0, 10
	addi $6, $0, 20
	
	jal apagarp
#============== QUEDA LEVET
	addi $9, $21, 24536
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO LEVET
	addi $9, $21, -40
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
		
	jal megaleve
	
	addi $4, $0, 12000
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 0
	addi $5, $0, 25
	addi $6, $0, 24
	
	jal apagarp
	addi $14, $0, 1
	add $31, $0, $22
	jr $31

#-------------------------------------------
#	PRIMEIRO PACO PARA TRAS
paco1t:	
	addi $4, $24, -40
	add $12, $0, $4
	addi $5, $0, 22
	addi $6, $0, 19
	
	jal apagarp
#============== COLISAO PACO1T
	
	addi $9, $21, 24552
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO1T
	addi $9, $21, -48
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
		
	jal megapaco1 #1
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp 
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco1 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco1 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, -16
	addi $5, $0, 27
	addi $6, $0, 24
	
	jal apagarp
	
	
	addi $17, $17, 1
	addi $14, $0, 1
	
	add $31, $0, $22
	jr $31
	

#-------------------------------------------
#	SEGUNDO PACO PARA TRAS
paco2t:	
	addi $4, $24, 0
	add $12, $0, $4
	addi $5, $0, 26
	addi $6, $0, 23
	
	jal apagarp
#============== COLISAO PACO2T
	
	addi $9, $21, 24552
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO2T
	addi $9, $21, -48
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
		
	jal megapaco2 #1
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco2 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco2 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 4
	addi $5, $0, 26
	addi $6, $0, 23
	
	jal apagarp
	
	beq $14, 2, minust
	addi $17, $17, 1
	
	add $31, $0, $22
	jr $31
	
minust:	addi $17, $17, -1
	add $31, $0, $22
	jr $31

#-------------------------------------------
#	TEREIRO PACO PARA TRAS	
paco3t:	
	
	addi $4, $24, -28
	add $12, $0, $4
	addi $5, $0, 28
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO3T
	
	addi $9, $21, 24552
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
#============== COLISAO PACO3T
	addi $9, $21, -48
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
		
	jal megapaco3 #1
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco3 #2
	
	lw $4, 4($15)
	jal timer
	
	addi $4, $24, 28
	addi $5, $0, 1
	addi $6, $0, 1
	jal apagarp
	
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco3 #3
	
	lw $4, 4($15)
	jal timer
	
	add $4, $0, $12
	addi $4, $4, -40
	addi $5, $0, 25
	addi $6, $0, 24
	
	jal apagarp
	
	addi $17, $17, 1
	
	addi $14, $0, 2
	
	add $31, $0, $22
	jr $31

#============== FIM DA FUNCAO PARA TRAS

#===============================================================
#===============================================================
#	MOVIMENTACAO VETICAL

pulomega:	sw $0, 4($23)
	addi $14, $0, 20
	

pulaco:	addi $16, $0, 50		
pulacol:	beq $16, $0, quedaco
	
	lw $12, 0($15)
	bne $12, $0, pulolvf
	
	addi $9, $0, 10
	slt $8, $17, $9
	beq $8, 1, pulolv1 	#CAMADA 1
	
	addi $9, $0, 20
	slt $8, $17, $9
	beq $8, 1, pulolv2	#CAMADA 2
	
	addi $9, $0, 30
	slt $8, $17, $9
	beq $8, 1, pulolv3	#CAMADA 3
	
	addi $9, $0, 40
	slt $8, $17, $9
	beq $8, 1, pulolv4	#CAMADA 4
	
	j pulolv5
	
pulolv1:	addi $4, $0, 0
	jal timer
	
	j pulolvf
	
pulolv2:	addi $4, $0, 20
	jal timer
	
	j pulolvf

pulolv3:	addi $4, $0, 50
	jal timer
	
	j pulolvf
	
pulolv4:	addi $4, $0, 100
	jal timer
	
	j pulolvf
		
	
pulolv5:	addi $4, $0, 500
	jal timer
		
		
pulolvf:
	
	addi $21, $21, -1024
	addi $24, $21, 0
	
	addi $4, $24, -1072
	addi $5, $0, 26
	addi $6, $0, 34
	
	jal apagarp
	
	addi $17, $17, 1
#============== COLISAO DO TETO
	
	addi $9, $21, -1024
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, quedaco	
	lw $9, 4($23)
	
	addi $10, $0, 'd'
	beq $9, $10, pulacod
	
	addi $10, $0, 'a'
	beq $9, $10, pulacoe
	
	jal megapulo
	
	addi $16, $16, -1
	
	add $31, $0, $22
	jr $31
	
pulacod:	
#============== COLISAO PULACOD
	addi $9, $21, 100
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	
	sw $0, 4($23)
	addi $21, $21, 8
	addi $24, $21, 0
	
	jal megapulo
	
	
	addi $16, $16, -1
	add $31, $0, $22
	jr $31
	
pulacoe:	
#============== COLISAO PULACOE
	addi $9, $21, -32
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	
	sw $0, 4($23)
	addi $21, $21, -8
	addi $24, $21, 0
	
	jal megapulo
	
	addi $16, $16, -1
	add $31, $0, $22
	jr $31
		
	
quedaco:	
	addi $17, $0, 0
	addi $4, $0, 30000
	jal timer
	
	addi $14, $0, 30
					
quedacol:	
	addi $9, $21, 18420
	addi $16, $9, 131072
	lw $10, 0($16)
	addi $8, $0, 0x485054
	beq $10, $8, jumperase
	
	lw $12, 0($15)
	bne $12, $0, quedalvf	#CAMADA 1
	
	addi $9, $0, 10
	slt $8, $17, $9
	beq $8, 1, quedalv5	#CAMADA 2
	
	addi $9, $0, 20
	slt $8, $17, $9
	beq $8, 1, quedalv4	#CAMADA 3
	
	addi $9, $0, 30
	slt $8, $17, $9
	beq $8, 1, quedalv3	#CAMADA 4
	
	addi $9, $0, 40
	slt $8, $17, $9
	beq $8, 1, quedalv2	#CAMADA 5
	

	
quedalv1:	addi $4, $0, 0
	jal timer
	
	j quedalvf
	
quedalv2:	addi $4, $0, 10
	jal timer
	
	j quedalvf

quedalv3:	addi $4, $0, 200
	jal timer
	
	j quedalvf
	
quedalv4:	addi $4, $0, 500
	jal timer
	
	j quedalvf
		
	
quedalv5:	addi $4, $0, 1500
	jal timer

	
quedalvf:	addi $21, $21, 1024
	addi $24, $21, 0
	
	addi $4, $24, -1076
	addi $5, $0, 31
	addi $6, $0, 31
	
	jal apagarp
	
	addi $17, $17, 1
	lw $9, 4($23)
	
	addi $10, $0, 'd'
	beq $9, $10, quedacod
	
	addi $10, $0, 'a'
	beq $9, $10, quedacoe
	
	jal megapulo
	addi $16, $16, -1
	add $31, $0, $22
	jr $31
	
quedacod:	
#============== COLISAO QUEDACOD
	addi $9, $21, 100
	addi $8, $0, 0x0000
	addi $11, $0, 0xffffff
	lw $10, 0($9)
	
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	beq $10, $11, derrotado 
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $11, derrotado
	bne $10, $8, nopefrente
	
	sw $0, 4($23)
	addi $21, $21, 8
	addi $24, $21, 0
	
	jal megapulo
	
	addi $16, $16, -1
	add $31, $0, $22
	jr $31
	
quedacoe:	

#============== COLISAO QUEDACOE
	addi $9, $21, -32
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	bne $10, $8, nopetras
	
	sw $0, 4($23)
	addi $21, $21, -8
	addi $24, $21, 0
	
	jal megapulo
	
	addi $16, $16, -1
	add $31, $0, $22
	jr $31
	
jumperase:	
	jal notamegaj
	addi $4, $21, -11312
	addi $5, $0, 31
	addi $6, $0, 42
	
	jal apagarp
	
	addi $14, $0, 0
	
	lw $12, 0($15)
	beq $12, $0, tiroxpulo
	
	add $24, $21, $0
	
	jal mega
	
	add $31, $0, $22
tiroxpulo:	jr $31


#=============================================
#	FUNCAO TIROMEGA. AQUI TEM PORRADARIA GRANDE

tiromega:	
	sw $0, 4($23)
	
	addi $4, $24, -52
	addi $5, $0, 30
	addi $6, $0, 30
	
	jal apagarp
	
	jal notamegat
	jal megatiro
	
	lw $12, 0($15)
	bne $12, $0, tirolo #Tiro durante o tiro
	
	add $12, $21, 10312 #Depois eu decido qual o melhor registrador para esse loop
	
	sw $12, 0($15)
tirolo:	
	lw $12, 0($15)
	
	add $24, $0, $12
	addi $12, $12, 4
	
	sw $12, 0($15)
	
	jal megabuster
	
	addi $9, $12, 48
	addi $8, $0, 0xffffff
	addi $11, $0, 0x0000
	lw $10, 0($9)
	
	beq $10, $8, damagehit
	bne $10, $11, stopshot
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $8, damagehit 	
	bne $10, $11, stopshot
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $8, damagehit 	
	bne $10, $11, stopshot
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $8, damagehit 	
	bne $10, $11, stopshot
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $8, damagehit 	
	bne $10, $11, stopshot
	addi $9, $9, 1024
	lw $10, 0($9)
	 
	beq $10, $8, damagehit 	
	bne $10, $11, stopshot
	 
	add $24, $9, $0
	
	addi $4, $24, -1076
	addi $5, $0, 20
	addi $6, $0, 20
	
	jal apagarp
	
	addi $4, $0, 100
	jal timer
	
	beq $14, 20, pulacol
	beq $14, 30, quedacol
	
	lw $9, 4($23)
	addi $10, $0, 'd'
	beq $9, $10, frente
	
	addi $10, $0, 'e'
	beq $9, $10, frente
	
	addi $10, $0, 'a'
	beq $9, $10, tras
	
	addi $10, $0, 'q'
	beq $9, $10, tras
	
	addi $10, $0, 'w'
	beq $9, $10, pulomega
	
	addi $10, $0, 'j'
	beq $9, $10, tiromega
	
	add $31, $0, $22
	jr $31
	

stopshot:	
	sw $0, 0($15)
	sw $0, 4($23)
	
	add $24, $9, $0
	
	addi $4, $24, -1100
	addi $5, $0, 20
	addi $6, $0, 20
	
	jal apagarp
	
	addi $4, $21, -56
	addi $5, $0, 30
	addi $6, $0, 30
	
	jal apagarp
	
	beq $14, 20, pulacol
	beq $14, 30, quedacol
	add $12, $0, $0
	
	
	add $31, $0, $22
	jr $31
	
damagehit:	
	sw $0, 4($23)
	add $24, $9, $0
	
	addi $4, $24, -1076
	addi $5, $0, 12
	addi $6, $0, 12
	
	jal apagarp
	
	addi $4, $21, -56
	addi $5, $0, 30
	addi $6, $0, 30
	
	jal apagarp
	
	
	j telavitoria