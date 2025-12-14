.text

	#EMPATE
	
main:	lui $15, 0x1001
	
	addi $15, $15, 1084
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, -2032
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1028
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1016
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 16 # Espaço entre uma letra e outra
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
		
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
		
	addi $15, $15, 1016
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1008 # Espaço entre uma letra e outra
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -4
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -512
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
		
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 512
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1012
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, -2016
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, 1012
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	addi $7, $0, 500
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -488
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	
fim:	addi $2, $0, 10
	syscall
	
#================================================================
#	Colunas verticais
	# $4 = Vetor; Ponto de paartida da operaçõa
	# $5 = Cor; A cor em hexadecimal
	# $6 = Quantidade; Quantas vezes ele será colocado( Linhas de uma coluna)
	# $7 = Quantidade de colunas; Quantas colunas serão preenchidas com a mesma quantidade de cor
	

verticais:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
coluns:	sw $5, 0($9)
	
	addi $9, $9, 512
	addi $8, $8, -1
	bne $8, $0, coluns
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, coluns	
	add $2, $0, $9 	# O retorno da função é a coluna seguinte
	jr $31
	
#================================================================	
#	Coluna vertical
	# $4 = Vetor; Ponto de paartida da operaçõa
	# $5 = Cor; A cor em hexadecimal
	# $6 = Quantidade; Quantas vezes ele será colocado( Linhas de uma coluna)

vertical:	add $8, $0, $6
	add $9, $0, $4
	
lins:	sw $5, 0($9)
	
	addi $9, $9, 512
	addi $8, $8, -1
	bne $8, $0, lins
	add $2, $4, 4 	# O retorno da função é a coluna seguinte
	jr $31
	
#================================================================
#	Linha horizontal

	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
	# $7 = Salto pós fim; em que espaço de memória o programa deve retornar do original ($4)
	
sequencia:	add $8, $0, $6
	add $9, $0, $4

qtd:	sw $5, 0($9)
	addi $9, $9, 4
	addi $8, $8, -1
	bne $8, $0, qtd
	add $9, $9, $7
	add $2, $0, $9
	
	jr $31
	
#================================================================	
#	Diagonal subindo

	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagoup:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosu:	sw $5, 0($9)
	
	addi $9, $9, -508
	addi $8, $8, -1
	bne $8, $0, diagosu
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, diagosu
	add $2, $0, $9
	jr $31
#================================================================
#	Diagonal Decendo
	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagodw:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosd:	sw $5, 0($9)
	
	addi $9, $9, 516
	addi $8, $8, -1
	bne $8, $0, diagosd
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, diagosd
	add $2, $0, $9
	jr $31