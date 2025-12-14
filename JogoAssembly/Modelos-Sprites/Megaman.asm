.text
#============ MEGA MAN PARADO; FEITO COM FUNÇÃO
main:

megaman:	lui $24, 0x1001
	
	# 1d61b5 = Armadura
	# 47a6e6 = Roupa
	# f0cd90 = PELE
	# ffffff = OLHO
	# 000000 = CONTORNO/PUPILA/ BOCA
	# ff00ff = CONTORNO DE DESENVOLVIMENTO

#============== NUCA	
	addi $24, $24, 14396
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#============== NUCA PART2
	addi $24, $24, 1004
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
#============== NUCA PART 3
	addi $24, $24, 1000
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24 # ARMADURA
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== NUCA PART4
	addi $24, $24, 1004
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

#============== NUCA PART5 / BOTÃO DA CABEÇA
	addi $24, $24, 1016
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

#============== CAPACETE 
	addi $24, $24, 980
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
#=============== CARA
	addi $24, $24, 992
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xffffff
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2

#============== CARA 2
	addi $24, $24, 992
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2

	add $4, $0, $24
	add $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2

	add $4, $0, $24 #======= OLHO ESQUEDO
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24 #======= OLHO DIREITO
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== CARA PART3
	addi $24, $24, 2008
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xffffff
	add $6, $0, 0xf0cd90
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
#============== CARA PART4
	
	addi $24, $24, 972
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	add $6, $0, 0x1d61b5
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== CARA PART 5
	addi $24, $24, 960
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2

#============== CARA 6 / QUEIXO E OMBRO
	addi $24, $24, 964
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== BRAÇO E BUXO
	addi $24, $24, 960
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 8
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 7
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 8
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
#============== ESPAÇOES ENTRE MÃO E COSTAS
	addi $24, $24, 960
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 36
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== DEDOS DA MÃO FECHADA
	addi $24, $24, 972
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 44
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== CUECA
	addi $24, $24, 984

	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal verticais
	add $24, $0, $2

	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
#=============== CONTORNO DO DEDO
	addi $24, $24, 976
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 44
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== COXAS

#============== COXA ESQUERDA
	addi $24, $24, 972
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2

#============== COXA DIREIRTA
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
#=============== CONTORNO DA PERNA DIREITA
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1032
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2

#============== CONTORNO DA PERNA ESQUERDA
	addi $24, $24, 944
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -1020
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -1020
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
#============== PÉ ESQUERDO
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -24
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, -996
	
	jal sequencia
	add $24, $0, $2
	
#============== PÉ DIREITO

	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 944
	
	jal sequencia
	add $24, $0, $2

#============== SOLA DOS PÉS
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 9
	addi $7, $0, 12
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2


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
	
	addi $9, $9, 1024
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
	
	addi $9, $9, 1024
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
	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
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

	# $4 = Vetor; onde começa as operação
	# $5 =  Primeira cor
	# $6 =  Segunda cor
	# $7 = Quantidade; pixels da cor serão colocados em sequência; se por um número ímpar, a ultima cor a ser colocada será a primeira
	
	
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
