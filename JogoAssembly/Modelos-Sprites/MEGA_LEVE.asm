.text

main:	
	lui $24, 0x1001
	
	addi $24, $24, 14396 
	
	add $25, $24, $0
#==========================================================================
#	MOVIMENTO LEVE DO MEGAMAN

	lui $12, 0xffff
	
	addi $14, $0, 'd'
	addi $18, $0, 'a'
	
megaleve:	
	lw $13, 4($12)
	
	
	beq $13, $18, tras
	bne $13, $14, para
	
	addi $4, $24, -40
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
	
	sw $0, 4($12)
	add $24, $24, 4
	add $25, $25, 4
	
	add $15, $15, 1
	j para
	
tras:	
	addi $4, $24, -12
	addi $5, $0, 25
	addi $6, $0, 25
	
	jal apagarp
	
	sw $0, 4($12)
	add $24, $24, -4
	add $25, $25, -4
para:	
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#============== NUCA PART2
	addi $24, $24, 1004
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== CARA PART3
	addi $24, $24, 2008
	
	add $4, $0, $24
	addi $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== CARA PART 5
	addi $24, $24, 960
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
#============== ESPAÇOES ENTRE MÃO E COSTAS
	addi $24, $24, 960
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 36
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	addi $7, $0, 44
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
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
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2

#============== COXA DIREIRTA
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, -1032
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

#============== CONTORNO DA COXA DIREITA
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3072
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== CONTORNO DA COXA ESQUERDA
	addi $24, $24, -76
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, -1028
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
#============== PÉ ESQUERDO
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
	add $5, $0, 0xff00ff
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -24
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 8
	addi $7, $0, -3060
	
	jal sequencia
	add $24, $0, $2
	
#============== PÉ DIREITO
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 1
	addi $7, $0, -1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 996
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xff00ff
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $24, $25, $0
	
	add $4, $0, 10000
	jal timer
	j megaleve
	
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

#=================================================================	
#	Diagonal subindo para trás

	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
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
#	Diagonal Decendo para trás
	# $4 = Vetor; onde começa as operação
	# $5 = Cor; a cor
	# $6 = Quantidade; pixels da cor serão colocados em sequência
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
	
#===============================================================
#	Temporizador

timer:	add $8, $0, $4
	
tempo:	beq $8, $0, vol
	nop
	addi $8, $8, -1
	j tempo
	
vol:	jr $31

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
	
apagatep:	
	lw $7, 131072($9)
	sw $7, 0($9)
	
	addi $9, $9, 1024
	addi $8, $8, -1
	bne $8, $0, apagatep
	
	addi $11, $11, 4
	add $9, $0, $11
	add $8, $0, $6
	addi $10, $10, -1
	
	bne $10, $0, apagatep	
	jr $31