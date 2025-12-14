.text

main:	


#===========================================================
#	FUNÇÃO QUE APAGA O PERSONAGEM NA POSIÇÃO X
	
	# $4 = Vetor; onde começará a ser apagado
	# $5 = Largura; quantos pixels horizontais serão apagados
	# $6 = Altura; quantos pixels verticais serã apagados
	# $7 = Valor da posição 
	
apagarp:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $5
	add $11, $0, $4
	
apagatep:	lw $7, 131072($9)
	sw $7, 0($9)
	
	addi $9, $9, 1024
	addi $8, $8, -1
	bne $8, $0, apagatep
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, apagatep	
	add $2, $0, $9 	# O retorno da função é a coluna seguinte
	jr $31