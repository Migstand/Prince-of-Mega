.text

main:	
#	Vitoria

vitoria:
	lui $8, 0x1001
	
	add $9, $0, 0x22b14c
	addi $10, $0, 32768
	
vito:	sw $9, 0($8)
	
	addi $10, $10, -1
	addi $8, $8, 4
	bne $10, $0, vito

#================================
#	Texto de vitoria
vitext:	lui $15, 0x1001
	
	addi $15, $15, 40244
#	0xa8e61d = COR DO TEXTO
#============== VOCE

#-------------- V
		
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 6136
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2036
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1032
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -2048
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -6144
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
#-------------- O
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3076
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -40
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#-------------- C
	addi $15, $15, -10212
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#-------------- E
	addi $15, $15, -10220
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
		
	addi $15, $15, -5136
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, -8224
	
	jal sequencia
	add $15, $0, $2
	
#-------------- V ao contrario
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -3060
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	addi $15, $15, -4
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, -1028
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
#-------------- SUBLINHADO
	addi $15, $15, 18256
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 47
	addi $7, $0, 6152
	
	jal sequencia
	add $15, $0, $2
	
#============== GANHOU
	
#-------------- G
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 3056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, -23560
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 21
	addi $7, $0, 5
	
	jal verticais
	add $15, $0, $2
	
#-------------- A
	addi $15, $15, -992
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 7
	addi $7, $0, 992
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 9
	addi $7, $0, 984
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 10
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 10
	addi $7, $0, 5
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 4068
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 6120
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 12
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, -12268
	
	jal sequencia
	add $15, $0, $2
	
#-------------- N	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 11
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 9
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -7164
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 11
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
#-------------- H
	addi $15, $15, -1004
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 11
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, -1004
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 11
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5088
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal verticais
	
	addi $15, $15, -5072

#-------------- O
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3076
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -40
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#-------------- U
	addi $15, $15, -10220
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 6136
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2040
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -10240
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
#-------------- Sublinhado
	addi $15, $15, 13992
	
	add $4, $0, $15
	addi $5, $0, 0xa8e61d
	addi $6, $0, 88
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $15, $0, $2
	
	#jr $31
fim:	addi $2, $0, 10
	syscall
	
#================================================================
#	Colunas verticais
	# $4 = Vetor; Ponto de paartida da operaï¿½ï¿½a
	# $5 = Cor; A cor em hexadecimal
	# $6 = Quantidade; Quantas vezes ele serï¿½ colocado( Linhas de uma coluna)
	# $7 = Quantidade de colunas; Quantas colunas serï¿½o preenchidas com a mesma quantidade de cor
	

verticais:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
coluns:	sw $5, 0($9)
	
	addi $9, $9, 1024
	addi $8, $8, -1
	bne $8, $0, coluns
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, coluns	
	add $2, $0, $9 	# O retorno da funï¿½ï¿½o ï¿½ a coluna seguinte
	jr $31
	
#================================================================	
#	Coluna vertical
	# $4 = Vetor; Ponto de paartida da operaï¿½ï¿½a
	# $5 = Cor; A cor em hexadecimal
	# $6 = Quantidade; Quantas vezes ele serï¿½ colocado( Linhas de uma coluna)

vertical:	add $8, $0, $6
	add $9, $0, $4
	
lins:	sw $5, 0($9)
	
	addi $9, $9, 1024
	addi $8, $8, -1
	bne $8, $0, lins
	add $2, $4, 4 	# O retorno da funï¿½ï¿½o ï¿½ a coluna seguinte
	jr $31
	
#================================================================
#	Linha horizontal

	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia
	# $7 = Salto pï¿½s fim; em que espaï¿½o de memï¿½ria o programa deve retornar do original ($4)
	
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

	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagoup:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosu:	sw $5, 0($9)
	
	addi $9, $9, -1020
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
	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagodw:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosd:	sw $5, 0($9)
	
	addi $9, $9, 1028
	addi $8, $8, -1
	bne $8, $0, diagosd
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, diagosd
	add $2, $0, $9
	jr $31

#=================================================================	
#	Diagonal subindo para trï¿½s

	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagoupt:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosut:	sw $5, 0($9)
	
	addi $9, $9, -1028
	addi $8, $8, -1
	bne $8, $0, diagosut
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, diagosut
	add $2, $0, $9
	jr $31
	
#==============================================================	
#	Diagonal Decendo para trï¿½s
	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia
	# $7 = Quantidade de diagonais; Quantas diagonais em seguida
	
diagodwt:	add $8, $0, $6
	add $9, $0, $4
	add $10, $0, $7
	add $11, $0, $4
	
diagosdt:	sw $5, 0($9)
	
	addi $9, $9, 1020
	addi $8, $8, -1
	bne $8, $0, diagosdt
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, diagosdt
	add $2, $0, $9
	jr $31

#=================================================================
#	SEQUï¿½CIA DE PAR DE CORES DIFERENTES
	# $4 = Vetor; onde comeï¿½a as operaï¿½ï¿½o
	# $5 =  Primeira cor
	# $6 =  Segunda cor
	# $7 = Quantidade; pixels da cor serï¿½o colocados em sequï¿½ncia; se por um nï¿½mero ï¿½mpar, a ultima cor a ser colocada serï¿½ a primeira
	
	
par:	add $8, $0, $7
	add $9, $0, $4
	
subpar:	sw $5, 0($9)
	addi $9, $9, 4
	addi $8, $8, -1
	add $2, $0, $9
	beq $8, $0, acabou
	
	sw $6, 0($9)
	addi $9, $9, 4
	addi $8, $8, -1
	add $2, $0, $9
	bne $8, $0, subpar
	
acabou:	jr $31

	#Cópia do cenário
	
copiace:	
	addi $8, $0, 131072
	
	lui $9, 0x1001


loopce:
	lw $10, 0($9)
	
	sw $10, 131072($9)
	
	addi $8, $8, -1
	addi $9, $9, 4
	bne $8, $0, loopce
	
	jr $31