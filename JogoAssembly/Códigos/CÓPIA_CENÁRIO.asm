.text

main:	
	#Cópia do cenário
	
copiace:	addi $8, $0, 131072
	
	lui $9, 0x1001


loopce:
	lw $10, 0($9)
	
	sw $10, 131072($9)
	
	addi $8, $8, -1
	bne $8, $0, loopce
	
	jr $31