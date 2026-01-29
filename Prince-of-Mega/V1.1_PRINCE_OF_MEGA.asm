.text

main:	#j  #ESSE E O PROGRAMA PARA CARREGAR O JOGO TODO
	lui $23, 0xffff
	lui $15, 0x1001
	addi $15, $15, 1310720

	addi $8, $0, 5
	sw $8, 192($15)
	
	addi $8, $0, 2
	sw $8, 200($15)
	
	addi $8, $0, 200
	sw $8, 268($15)
	
	addi $8, $0, 10000
	sw $8, 300($15)
		

titulo:	jal apagar		
	
	jal telaprince
	
	jal copiace
	
	jal presstart
	
	jal opt
	
title:	jal menusound
	
	
	lw $14, 0($23)
	beq $14, $0, title


	lw $13, 4($23)


	addi $10, $0, ' '
	beq $13, $10, jogo
	

	addi $10, $0, 'o'	
	beq $13, $10, options

	j title

		
options: 	jal apagar	
	
	jal telaops

opicoes:
	
	jal menusound

	lw $9, 0($23)
	beq $9, $0, opicoes

	lw $13, 4($23)

	addi $10, $0, 'b'	
	beq $13, $10, titulo
	
	addi $10, $0, 'd'	
	beq $13, $10, dificult

	
	j opicoes

dificult: 	jal apagar

	jal escodifi

dificuldade:	


	jal menusound

	lw $9, 0($23)
	beq $9, $0, dificuldade


	
	lw $13, 4($23)


	addi $10, $0, 'f'	
	beq $13, $10, facil
	
	addi $10, $0, 'm'	
	beq $13, $10, medio
	
	addi $10, $0, 'd'	
	beq $13, $10, dificil

	j dificuldade
	


facil:	
	addi $8, $0, 5
	sw $8, 192($15)
	
	addi $8, $0, 200
	sw $8, 268($15)
	
	j options



medio:	
	addi $8, $0, 3
	sw $8, 192($15)
	
	addi $8, $0, 120
	sw $8, 268($15)
	
	j options


dificil:	
	addi $8, $0, 50
	sw $8, 268($15)
	
	addi $8, $0, 1
	sw $8, 192($15)
	
	j options


jogo:	jal apagar	
	
	jal escoarm
	
	lui $4, 0x1001 # Carregar a espada na tela
	addi $4, $4, 61720
	jal megasword


	lui $4, 0x1001
	addi $4, $4, 62120 # Carregar a espada 
	jal megabusterfake


armas:	

	lw $9, 0($23)
	beq $9, $0, armas
	

	lw $13, 4($23)
	
	addi $10, $0, 'k'
	beq $13, $10, save1
	
	addi $10, $0, 't'
	beq $13, $10, save2
	
	
	j armas

save1:
	addi $8, $0, 1 # Nao vai ficar aqui
	sw $8, 172($15)
	j funx		
	
save2:	
	addi $8, $0, 2 # Nao vai ficar aqui
	sw $8, 172($15)	
	j funx
	
#=============================================
#=============================================
#=============================================
funx:	
	
	lui $15, 0x1001
	addi $15, $15, 1310720
	

	addi $8, $0, 8200
	sw $8, 4($15) # Tempo de duracao do frame do passo


	addi $8, $0, -60 # Repulsao do dano do megaman
	sw $8, 12($15)


	addi $8, $0, 3 # Vida do megaman
	sw $8, 16($15)


	addi $8, $0, 26 # Valor do pulo do skullman
	sw $8, 20($15)

	addi $8, $0, 3 #Frame de cada passo do megaman
	sw $8, 32($15)
	
	addi $8, $0, 10 # Vida do skullman
	sw $8, 40($15)
	
	addi $8, $0, 5 # Duracao at� o ataque do skull
	sw $8, 184($15)
cencod1:
#========================================================================================
#	Memoria para guardar os valores chave
	jal cenario1
copia:	jal copiace
	
#============== MEGAMAN CENARIO 1	
	lui $24, 0x1001
	addi $24, $24, 14396
	add $21, $0, $24
	jal mega
	lw $8, 164($15)
	beq $8, 5, comeco
#==============SKULLMAN CENARIO 1	
	lui $25, 0x1001
	addi $25, $25, 56132
	add $20, $0, $25
	jal skull
	
	addi $8, $0, 26
	sw $8, 20($15)
	
	
comeco:	#addi $4, $0, 500000
	#jal timer
	sw $0, 296($15)
	sw $0, 284($15)
	sw $0, 280($15)
	sw $0, 292($15)
	sw $0, 272($15)
	sw $0, 276($15)
	
	addi $8, $0, 0x00001e # Cor de fundo
	sw $8, 44($15)


	addi $8, $0, 0xfffffe # Cor do que leva dano do tiro
	sw $8, 48($15)


	addi $8, $0, 0x485054 # Cor do chao do cenario1
	sw $8, 52($15)


	addi $8, $0, 0x828282 # Cor do Pilar do cen�rio/ Colis�o de parede
	sw $8, 56($15)


	addi $8, $0, 0xb0b0b0 # Cor do cenario/ Colisao de parede
	sw $8, 60($15)


	addi $8, $0, 0x24224d #
	sw $8, 64($15)


	addi $8, $0, 0x485054 # Cor do teto
	sw $8, 68($15) #Teto do cen�rio 1


	addi $8, $0, 0x1d61b5 # Cor do megaman
	sw $8, 120($15)


	addi $8, $0, 0x47a6e6 # Cor do megaman
	sw $8, 124($15)


	addi $8, $0, 0xf0cd90 # Cor do megaman
	sw $8, 128($15)
	
	lw $8, 152($15)
	bne $8, 100, comeco1
	
	addi $8, $0, 128
	sw $8, 160($15) # Verificador da vida do megaman para troca de tela
	
comeco1:	addi $8, $0, 1 # Come�o da musica para poder tocar
	sw $8, 200($15)
	
	lw $8, 240($15) # Verificador da vida do enimigo para troca de tela
	bne $8, 100, fase1
	
	addi $8, $0, 128
	sw $8, 248($15)
	
fase1:	

	jal moveset
	
			
	add $25, $20, $0
	jal movesku
	
	
	jal mainsound
	
	
	jal trasicao1
	
	
	jal barravida
	
	
	jal barravidae
	
	
	jal tochas
	
	
	jal eliminado
	
	jal endgame
	
	j fase1
cencod2:
	jal cenario2
	jal copiace
#============== MEGAMAN CENARIO 2	
	lui $24, 0x1001
	addi $24, $24, 45916
	add $21, $0, $24
	jal megat
	
	sw $0, 284($15)
	sw $0, 280($15)
	sw $0, 292($15)
	sw $0, 272($15)
	sw $0, 276($15)
	
	addi $8, $0, 0x00001e # Cor de fundo
	sw $8, 44($15)


	addi $8, $0, 0xfffffe # Cor do que leva dano do tiro
	sw $8, 48($15)


	addi $8, $0, 0x8000f0 # Cor do Ch�o do cen�rio 2
	sw $8, 52($15)


	addi $8, $0, 0x44009c # Cor da rampinha do cen�rio 2
	sw $8, 56($15)


	addi $8, $0, 0x00000e # Cor de place holder para n�o dar problema :/
	sw $8, 60($15)


	addi $8, $0, 0xa8e4fc # Cor do tijolo. Imposs�vel colidir com ele kkkkkkkkkk (Talvez n�o)
	sw $8, 64($15)


	addi $8, $0, 0x0508ac # Cor do teto
	sw $8, 68($15) #Teto do cen�rio 1


	addi $8, $0, 0x1d61b5 # Cor do megaman
	sw $8, 120($15)


	addi $8, $0, 0x47a6e6 # Cor do megaman
	sw $8, 124($15)


	addi $8, $0, 0xf0cd90 # Cor do megaman
	sw $8, 128($15)
	
	lw $8, 152($15)
	bne $8, 100, fase2

	addi $8, $0, 128 #Parte do c�digo que seria usada para indicar a posi��o do lado em haver� a transi��o 
	sw $8, 160($15) #
	
fase2:	

	jal weaponselected
	
	jal trap
	
	jal rampinha
	
	jal trasicao2
	
	jal moveset
	
	jal mainsound
	
	
	
	jal fakewall
	
	jal barravida
	
	jal tochas2
		
	j fase2
	
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


#================================================================
#	Cï¿½DIGO DA CABEï¿½A DO SKULL MAN

skullhead:	
#================= NUCA DO SKULL
	# Por enquanto o registrador que vai guardar a cabeï¿½a vai ser o $19
	add $19, $0, $31
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
#================= TESTA
	addi $25, $25, 3040
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, -1024
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, -1032
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	addi $25, $25, -1028
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 4076
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -1020
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -4092
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2052
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
#=============== NUCA PART 2/ ORELHA DIREITA
	addi $25, $25, -1024
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 2044
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
#============== ORELHA ESQUERDA
	addi $25, $25, -2100
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2040
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
#============== QUEIXO
	addi $25, $25, 3072
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 3072
	
	add $4, $0, $25 # Dente 1
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 4
	
	add $4, $0, $25 #Dente 2
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 4
	
	add $4, $0, $25 # Dente 3
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2032
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
#============== BOCHECHA DIREITA
	addi $25, $25, -3072
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2040
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -12
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -12
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -1028
	
	jal sequencia
	add $25, $0, $2
	
#============== BOCA
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	addi $25, $25, -1028
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2

#============== CAMPO DE VISï¿½O/ OLHOS
	addi $25, $25, -6168
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 2048
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, -1032
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -3064
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 6108
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 4
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 1028
	
	add $4, $0, $25
	addi $5, $0, 0x00000
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $25, $0, $2

#============== PELE DA CARA
	addi $25, $25, -5120
	
	add $4, $0, $25
	addi $5, $0, 0xf0be89
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2012
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, -1024
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2044
	
	add $4, $0, $25
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, -1032
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, -2048
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	add $31, $0, $19
	jr $31
	
#================================================================
#	Cï¿½DIGO DA CABEï¿½A DO SKULL MAN

skullheadfake:	
#================= NUCA DO SKULL
	# Por enquanto o registrador que vai guardar a cabeï¿½a vai ser o $19
	add $19, $0, $31
	
	
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
#================= TESTA
	addi $4, $4, 3040
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -1032
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 4076
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -1020
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -4092
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
#=============== NUCA PART 2/ ORELHA DIREITA
	addi $4, $4, -1024
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 2044
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
#============== ORELHA ESQUERDA
	addi $4, $4, -2100
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
#============== QUEIXO
	addi $4, $4, 3072
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	add $4, $0, $4 # Dente 1
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	add $4, $0, $4 #Dente 2
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	add $4, $0, $4 # Dente 3
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2032
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== BOCHECHA DIREITA
	addi $4, $4, -3072
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 2040
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -12
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -12
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -1028
	
	jal sequencia
	add $4, $0, $2
	
#============== BOCA
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2

#============== CAMPO DE VISï¿½O/ OLHOS
	addi $4, $4, -6168
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, -1032
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -3064
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 6108
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 4
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 1028
	
	add $4, $0, $4
	addi $5, $0, 0x00000
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $4, $0, $2

#============== PELE DA CARA
	addi $4, $4, -5120
	
	add $4, $0, $4
	addi $5, $0, 0xf0be89
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2012
	
	add $4, $0, $4
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2044
	
	add $4, $0, $4
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, -1032
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, -2048
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	add $31, $0, $19
	jr $31
		
#============= OBS: COLOCAR JR $31 NESSE PONTO PARA QUE A CABEï¿½A SEJA UMA FUNï¿½ï¿½O

skull:	
	add $18, $0, $31
	add $20, $0, $25
	jal skullhead

#============== CORPO/ OMOBRO ESQUEDO
	addi $25, $25, 4056
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 7
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1008
	
	add $4, $0, $25 #Mais a esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1016
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Mais pra direita
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25 #Mais pro meio
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $25, $0, $2
	
#============ BRAï¿½O ESQUERDO
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 3056
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, -1024
	
	add $4, $0, $25 #Sombra do Braï¿½o
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25 #Cor do braï¿½o
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Cor do Braï¿½o
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2040
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Bico do canhï¿½o
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25 #Sombra debaixo do braï¿½o
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -1032
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2036
	
	add $4, $0, $25 #Fim do contorno do braï¿½o esquedo
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
#============== PEITORAL

#============== Comeï¿½o do peito esquerdo
	addi $25, $25, -7152
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Comeï¿½o a pintar o peito esquerdo
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 0xfffffe
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, -1024
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2

	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, -1020
	
	jal sequencia
	add $25, $0, $2
	
#============== Peito Direito
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 0xfffffe
	addi $7, $0, 3
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	addi $25, $25, 1000
	
	add $4, $0, $25 #Inicio da  costela direita
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1004
	
	add $4, $0, $25 #Meio da  costela direita
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Ligaï¿½ï¿½o da costela direita com a perna direita
	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1012
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
#============== Costela direita / fim da costela

	addi $25, $25, -1060
	
	add $4, $0, $25 #Contorno da costela
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Inï¿½cio da mescla com o botï¿½o
	addi $5, $0, 0x000000
	addi $6, $0, 0xed1c24
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, -1028
	
	add $4, $0, $25 
	addi $5, $0, 0xfffffe
	addi $6, $0, 0xed1c24
	addi $7, $0, 1
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25 # Resto do botï¿½o vermelho
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25 # Contorno do botï¿½o
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2036
	
	add $4, $0, $25 # Contorno do botï¿½o
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -20
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 # Sombra da costela esquerda
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
#============== OMBRO DIREITO !!!
	addi $25, $25, -5104
	
	add $4, $0, $25 #Inï¿½cio do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Sombra do ombro
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 4
	
	add $4, $0, $25 #Sombra do ombro
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Braï¿½o com o ombro
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, -3080
	
	add $4, $0, $25 #Inï¿½cio do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2036
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Inï¿½cio do ombro
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -1020
	
	add $4, $0, $25 #Inï¿½cio do ombro
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Fechar dobra do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal vertical
	add $25, $0, $2
	
#============== BRAï¿½O DIREITO DO SKULL
	addi $25, $25, 2048
	
	add $4, $0, $25 #Contorno do braï¿½o
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 2048
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 2048
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2028
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
		
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
#============== INTERIOR DO BRAï¿½O DIREITO
	addi $25, $25, -6152
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xfffffe
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, 1008
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $25, $0, $2
	
#============== CINTURA/ PERNAS
	addi $25, $25, -1084
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 7
	
	jal verticais
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 3040
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 4052
	
	jal sequencia
	add $25, $0, $2
	
#=============== PERNA ESQUERDA
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -1020
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, -2052
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25 
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Contorno debaixo da perna esquerda 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2

#============== SOLA DO Pï¿½ ESQUERDO	
	addi $25, $25, 2012
	 
	add $4, $0, $25 
	addi $5, $0, 0x000000
	addi $6, $0, 9
	addi $7, $0, -1056
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 7
	addi $7, $0, -5124
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Preenchendo a perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 3052
	
	add $4, $0, $25 #Fim do contorno da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
#=============== PERNA DIREITA
	addi $25, $25, 1060
	
	add $4, $0, $25 #Contorno debaixo da perna direita
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -2048
	
	add $4, $0, $25 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2040
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, 2024
	
	add $4, $0, $25 #Contorno da perna
	addi $5, $0, 0x000000
	addi $6, $0, 8
	addi $7, $0, -1028
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	addi $25, $25, -6168
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 5100
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xfffffe
	addi $6, $0, 5
	addi $7, $0, -12296
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $31, $0, $18
	jr $31
	
#===========================================================
#	FUNï¿½ï¿½O QUE APAGA O PERSONAGEM NA POSIï¿½ï¿½O X
	
	# $4 = Vetor; onde comeï¿½arï¿½ a ser apagado
	# $5 = Largura; quantos pixels horizontais serï¿½o apagados
	# $6 = Altura; quantos pixels verticais serï¿½ apagados
	# $7 = Valor da posiï¿½ï¿½o 
	
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

#===============================================================
#	Temporizador

timer:	add $8, $0, $4
	
tempo:	beq $8, $0, vol
	nop
	addi $8, $8, -1
	j tempo
	
vol:	jr $31

#===============================================================
#	Cï¿½pia do cenï¿½rio
	
copiace:	addi $8, $0, 131072
	
	lui $9, 0x1001


loopce:
	lw $10, 0($9)
	
	sw $10, 131072($9)
	
	addi $8, $8, -1
	addi $9, $9, 4
	
	bne $8, $0, loopce
	
	jr $31
#==============================================================
#	SPRITE DO SKULLMAN PULANDO	
	

jskull:	
	add $18, $0, $31
	jal skullhead
	
jumpskull:	

#============== BRAï¿½O ESQUERDO
	addi $25, $25, -1084
	
	add $4, $0, $25 #CONTORNO DO BRAï¿½O 
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
#-------------- Dobra para o contorno em baixo do braï¿½o esquerdo
	addi $25, $25, 1004
	
	add $4, $0, $25 
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 0xfffffe
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, 1012
	
	add $4, $0, $25
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
#-------------- Dobra do braï¿½o
	addi $25, $25, 2048
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 2044
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	
#============== BRAï¿½O DIREITO
	addi $25, $25, -8136
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #SOMBRA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #SOMBRA
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
#-------------- DENTRO DA Mï¿½O
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do Braï¿½o
	addi $6, $0, 0x000000
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
#-------------- SOMBRA DE BAIXO
	addi $25, $25, 1012
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braï¿½o
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2

#-------------- VOLTA A PARTE DE FORA
	addi $25, $25, -28
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Cor do Braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
#-------------- LIGAï¿½ï¿½O DO BRAï¿½O COM O CORPO
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braï¿½o
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Suvaco
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
#=============== PEITORAL
	addi $25, $25, 2036

#-------------- COSTELA DIREITA

	add $4, $0, $25
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 0xfffffe
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELAs
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 3
	addi $7, $0, 1000
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
#______________ PARTE COLORIDA DA COSTELA DIREITA
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0Xb4b4b4#COSTELA
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	addi $25, $25, 1008
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #BUNDA
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
#-------------- COSTELA ESQUERA
	addi $25, $25, -3100
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #COSTELA
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO DO BOTï¿½O VERMELHO
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 0x000000
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2

#______________ COMEï¿½O DA PINTURA DO BOTï¿½O VERMELHO

	add $4, $0, $25
	addi $5, $0, 0xfffffe #COSTELA
	addi $6, $0, 0xed1c24 #Botï¿½o
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, 1008
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xed1c24 #BOTï¿½O VERMELHO
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $25, $0, $2

#______________ CONTORNO DO BOTï¿½O

	add $4, $0, $25
	addi $5, $0, 0x000000 #COSTELA
	addi $6, $0, 0xfffffe
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, -2048
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
#============== PERNAS
	addi $25, $25, 3056
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Pernas
	addi $6, $0, 4
	addi $7, $0, 7
	
	jal verticais
	add $25, $0, $2
	
#-------------- PERNA ESQUERDA
	
	addi $25, $25, 992
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #PERNA
	addi $6, $0, 5
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1016
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #JOELHO
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 2052
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Pernas
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Perna
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $25, $0, $2
	
#______________ CONTORNO E A PINTURA DA PERNA ESQUERDA 
		
	add $4, $0, $25
	addi $5, $0, 0x000000 #Perna
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Perna
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Perna
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #SOMBRA
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Perna
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Sombra
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #PERNA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #PERNA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1012
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 1
	addi $7, $0, -8172
	
	jal sequencia
	add $25, $0, $2
	
#-------------- PERNA DIREITA
	add $4, $0, $25
	addi $5, $0, 0x000000 #Pernas
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 2028
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 5
	addi $7, $0, 1008

	jal sequencia
	add $25, $0, $2

#______________ ADENTRANDO A PERNA DIREITA
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
#______________ PULO DE LINHA
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 5
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #PERNA
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #PERNA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 3
	
	jal vertical
	add $25, $0, $2
	
#______________ PULO DE LINHA
	addi $25, $25, 2028
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #Contorno
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, 1016

	add $4, $0, $25
	addi $5, $0, 0xfffffe #Contorno
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 4
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1008
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1024
	
	add $4, $0, $25
	addi $5, $0, 0xfffffe #PERNA
	addi $6, $0, 1
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $25, $0, $2
	
	addi $25, $25, 1016
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $31, $0, $18
	jr $31
	
#=================================================================
#	FUNCAO QUE INVOCA O CORPO DO MEGA

mega:
	add $18, $0, $31
	
#============== NUCA	
	
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
	
	add $31, $0, $18
	
	jr $31
	
	
#=====================================================================================================
#	FUNÇÃO MEGAPACO1

megapaco1:	#QUANDO CHAMAR O MEGAHEAD TEM QUE PULAR 2 LINHAS PARA O MEGA FICAR ALINHADO NO CHÃO
	
	add $18, $0, $31
	
	addi $24, $24, 2048
	jal megahead

#============== BRAÇO DIREITO ESTICADO

	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #PELE
	addi $6, $0, 1
	addi $7, $0, -1028
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 1
	addi $7, $0, -3068
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
#_______________ Condtorno esquerdo
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
#-------------- DETRO DO BRAÇO
	addi $24, $24, 3052
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2

#-------------- Ultimo contorno em baixo
	addi $24, $24, 3048
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 1
	addi $7, $0, -9280
	
	jal sequencia
	add $24, $0, $2
	
#============== BRAÇO ESQUERDO
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -20
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, -7172
	
	jal sequencia
	add $24, $0, $2
	
#-------------- PINTAR O BRAÇO
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
#============== OMBRO ESQUERDO/ BARRIGA
	addi $24, $24, -4092
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #COR
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais #1
	add $24, $0, $2
	
	addi $24, $24, 2044
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais #2
	add $24, $0, $2
	
	addi $24, $24, 2044
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Roupa
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
#============== CUECA/ BARRIGA
	addi $24, $24, -1060
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #ARMADURA
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #ARMADURA
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #ARMADURA
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #ARMADURA
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
#============== PERNA DIREITA
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ARMADURA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2

#-------------- CONTORNO
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #ARMADURA
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#______________ CONTORNO DO OUTRO LADO
	addi $24, $24, -36
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#______________	SOLA DO PÉ DIREITO
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 7
	addi $7, $0, -4124
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
#______________ PINTANDO DENTRO
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2032
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 7
	addi $7, $0, -7224
	
	jal sequencia
	add $24, $0, $2
	
#============== PÉ ESQUERDO
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
		
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
		
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -3068
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
		
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 4092
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
		
	jal diagodw
	add $24, $0, $2
	
#-------------- CONTORNO EM BAIXO
	addi $24, $24, 3044
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
		
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1028
		
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
		
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1024
		
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
		
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
		
	jal diagoup
	add $24, $0, $2
	
#-------------- PINTAR POR DENTRO DO PÉ ESQUERDO
	addi $24, $24, -3100
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
		
	jal vertical #1
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
		
	jal vertical #2
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
		
	jal vertical #3
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
		
	jal vertical #4
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
		
	jal vertical #5
	add $24, $0, $2
	
#______________ COXA ESQUERDA
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #PELE
	addi $6, $0, 3
		
	jal vertical #1
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #PELE
	addi $6, $0, 2
		
	jal vertical #2
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #PELE
	addi $6, $0, 1
		
	jal vertical #F
	add $24, $0, $2
	
	add $31, $0, $18
	
	jr $31	

#============== FIM DO PRIMEIRO PASSO


#=====================================================
#=====================================================
#=====================================================


megapaco2:	
	
	add $18, $0, $31
	
	jal megahead

#============== MÃO DIREITA
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -8
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2

#============== PERNA DIREITA QUE T�? NO FUNDO
	
	add $4, $0, $24
	addi $5, $0, 0x000000 
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2

#============== BRAÇO DO MEGAMAN
#-------------- CONTORNO
	addi $24, $24, -28
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2

#______________ SUBO PARA O PUNHO
	addi $24, $24, -3080
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#______________ CONTORNO EM CIMA DO BRAÇO
	addi $24, $24, -1052
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2	
	
	addi $24, $24, -2056
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2

#============== PINTAR BRAÇO E BARRIGA
#-------------- OMBRO/BRAÇO
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, -2052
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2

#-------------- BARRIGA
	addi $24, $24, 3084
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2	
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
#-------------- BRAÇO PINTAR
	addi $24, $24, -3104
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
#============== PERNA
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 5
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	
	jr $31

#============== FIM DO SEGUNDO PASSO


#==============================================
#==============================================
#==============================================
	
megapaco3:	
	
	add $18, $0, $31
	
	addi $24, $24, 2048
	jal megahead
	
#============== BRAÇO DIREITO
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, -1032
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2

#-------------- COTOVELO DIREITO
	addi $24, $24, 980
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR 
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
#______________ FIM BRAÇO DIREITO
	addi $24, $24 2032
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 7
	addi $7, $0, -6184
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 5
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2

#============== BRAÇO ESQUERDO
	addi $24, $24, -6160
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 992
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2040
	
	jal sequencia
	add $24, $0, $2
	
	
#============== PERNA ESQUERDA
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, -1044
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1012

	jal sequencia
	add $24, $0, $2

#______________ PINTAR/CONTORNAR	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2028
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
#______________ COXA ESQUERDA DO MEGA
	addi $24, $24, -4100
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
#============== CUECA DO MEGA
	addi $24, $24, -3076
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24 $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== PERNA DIREITA
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 992
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	
	jr $31
		
#============== FIM DA FUNÇÃO MEGAPACO3
	

megahead:	
	add $19, $0, $31
	
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
	addi $6, $0, 3
	
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
	addi $24, $24, 988
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#============== CARA PART4
	addi $24, $24, 4
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 0xffffff
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
#============== QUEIXO/ FINAL DA CABEÇA
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $19
	
	jr $31
	
#============== A FUNÇÃO TERMINA NO CONTORNO DO QUEIXO EM BAIXO DO MEGAMAN
megaheadfake:	
	add $19, $0, $31
	
	
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
#============== NUCA PART2
	addi $4, $4, 1004
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $4, $0, $2
	
#============== NUCA PART 3
	addi $4, $4, 1000
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4 # ARMADURA
	add $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============== NUCA PART4
	addi $4, $4, 1004
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

#============== NUCA PART5 / BOTÃO DA CABEÇA
	addi $4, $4, 1016
	
	add $4, $0, $4
	add $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

#============== CAPACETE 
	addi $4, $4, 980
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
#=============== CARA
	addi $4, $4, 992
	
	add $4, $0, $4
	add $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0xffffff
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2

#============== CARA 2
	addi $4, $4, 992
	
	add $4, $0, $4
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2

	add $4, $0, $4
	add $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $4, $0, $2

	add $4, $0, $4 #======= OLHO ESQUEDO
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4 #======= OLHO DIREITO
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
#============== CARA PART3
	addi $4, $4, 988
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $4, $0, $4
	add $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
#============== CARA PART4
	addi $4, $4, 4
	
	add $4, $0, $4
	add $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xf0cd90
	addi $6, $0, 0xffffff
	addi $7, $0, 2
	
	jal par
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
#============== QUEIXO/ FINAL DA CABEÇA
	addi $4, $4, 996
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $31, $0, $19
	
	jr $31

#==========================================================================
#	MOVIMENTO LEVE DO MEGAMAN
megaleve:
	add $18, $0, $31
	
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
	add $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3072
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============== CONTORNO DA COXA ESQUERDA
	addi $24, $24, -76
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	
	add $4, $0, $24
	add $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, -1028
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000
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
	add $5, $0, 0x000000
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
	add $5, $0, 0x000000
	addi $6, $0, 8
	addi $7, $0, -3060
	
	jal sequencia
	add $24, $0, $2
	
#============== PÉ DIREITO
	add $4, $0, $24
	add $5, $0, 0x000000
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
	add $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	
	jr $31
	
#============== FIM DA FUNÇÃO MEGALEVE

#===================================================
#	MOVESET DO MEGAMAN		
moveset:	add $22, $0, $31
	
	sw $0, 8($15)	
	lw $12, 0($15)
	bne $12, $0, tiropo
	beq $14, 20, pulacol
	beq $14, 30, quedacol
	add $24, $0, $21
	
	lw $9, 4($23)
	
	bne $9, $0, cod
	lw $8, 80($15)								
	bne $8, $0, megin
	jal mega
	j cod
	
megin:	addi $24, $24, -4	
	jal megat
	
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
	
	addi $10, $0, 's'
	beq $9, $10, pegada
	
#============== DETECTOR DE DANO PARADO		
	addi $4, $21, -32
	addi $6, $0, 10
	addi $7, $0, 20
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
#============== COLISAO PACO1
	
	addi $9, $21, 24536
	lw $8, 44($15)
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco
	
	
	
	
	add $31, $0, $22
	jr $31
#================================================================
#================================================================
#	MOVIMENTAÇÃO PARA FRENTE
	
frente:	
	lw $10, 88($15)
	
	#beq $10, 1, spt1
	#beq $10, 2, spt2
	#beq $10, 3, spt3
	#beq $10, 4, spt4
	
	
	sw $0, 80($15)
	addi $8, $0, -12
	sw $8, 8($15)
	
	addi $8, $0, -60
	sw $8, 12($15)
	
	lw $16, 4($23)
	sw $0, 4($23)
	
	jal contshot
	
	
	
	

	
	
frentnor:	addi $21, $21, 4
	add $24, $0, $21
	
	add $10, $0, 'e' #POR ENQUANTO ASSIM
	beq $16, $10, pacoleve
	
	lw $14, 136($15)
	
	beq $14, 1, paco1l
	beq $14, 2, paco2l
	beq $14, 3, paco3l
	
	lw $14, 36($15)
	
	beq $14, $0, paco1
	beq $14, 1, paco2
	beq $14, 2, paco3
	
	add $31, $0, $22
	jr $31
	
pacoleve:		
#============== COLISAO LEVE
	addi $4, $21, 20
	addi $6, $0, 10
	addi $7, $0, 5
	lw $5, 48($15)
	jal colidamage
	lw $5, 64($15)
	add $4, $21, 32
	addi $7, $0, 1
	jal coliwall
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $24, 0
	
	addi $5, $0, 10
	addi $6, $0, 21
	
	jal apagarp
#============== QUEDA LEVE
	addi $9, $21, 24536
	lw $8, 52($15)
	
	lw $10, 0($9)
	
	bne $10, $8, quedaco

	
	jal megaleve
	
spt4:	
	addi $4, $0, 12000
	jal timer
	
	
	
	addi $4, $21, -44
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
	
	
	add $31, $0, $22
	jr $31
	
#-------------------------------------------	
#	PRIMEIRO PACO	
paco1:	lw $13, 32($15)
	sw $13, 132($15)

paco1l:	lw $13, 132($15)
		

	
	
	
	addi $4, $21, -52
	
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO1
	
	addi $9, $21, 24536
	lw $8, 44($15)
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco

#============== COLISAO PACO1
	add $4, $21, $0
	addi $6, $0, 10
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $21, 48
	addi $7, $0, 1
	lw $5, 64($15)
	jal coliwall	
	
	jal megapaco1 #1
	
spt1:	lw $4, 4($15)
	jal timer

	
			
	addi $21, $21, 4
	addi $24, $21, 0
	
	
	addi $4, $21, -60 
	addi $5, $0, 31
	addi $6, $0, 25
	
	
	
	
	jal apagarp
	
	
	
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac1	
	sw $13, 132($15)
	
	addi $8, $0, 1
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31
fimpac1:	
	addi $14, $0, 1
	sw $14, 36($15)
	sw $0, 136($15)
	
	add $31, $0, $22
	jr $31
	
	
	
	
	
#-------------------------------------------	
#	SEGUNDO PACO
paco2:	lw $13, 32($15)
	sw $13, 132($15)
	
paco2l:	lw $13, 132($15)	
	

		
	addi $4, $21, -56
	
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO2
	
	addi $9, $21, 24552
	lw $8, 44($15)
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
		
#============== COLISAO PACO2
	add $4, $21, $0
	addi $6, $0, 10	
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	lw $5, 64($15)
	addi $4, $21, 48
	addi $7, $0, 1
	jal coliwall
		
	jal megapaco2 #1
	
#	addi $8, $0, 2
#	sw $8, 88($15)
	lw $4, 4($15)
#	sw $4, 84($15)
	
#spt2:	lw $4, 84($15)
	#addi $4, $4, -1
	#sw $4, 84($15)
	#bne $4, $0, voidg
	
	jal timer
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	addi $4, $21, -64
	addi $5, $0, 25
	addi $6, $0, 24
	

	
	
	jal apagarp
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac2
	sw $13, 132($15)
	addi $8, $0, 2
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31
	
	
	
fimpac2:	
	lw $14, 140($15)
	
	beq $14, 2, minus
	
	addi $14, $0, 2
	sw $14, 36($15)
	sw $0, 136($15)
	
	add $31, $0, $22
	jr $31

minus:	lw $14, 36($15)
	addi $14, $14, -1	
	sw $14, 36($15)
	sw $0, 136($15)
	sw $0, 140($15)
	
	add $31, $0, $22
	jr $31
	
#-------------------------------------------	
#	TEREIRO PACO
paco3:	lw $13, 32($15)
	sw $13, 132($15)
	
paco3l:	lw $13, 132($15)	

	addi $4, $21, -52

	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO3
	
	addi $9, $21, 24536
	lw $8, 44($15)
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
			
#============== COLISAO PACO3
	add $4, $21, $0
	addi $6, $0, 10
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	lw $5, 64($15)
	addi $4, $21, 48
	addi $7, $0, 1
	jal coliwall	
	
	jal megapaco3 #1
	
spt3:	lw $4, 4($15)
	jal timer
	
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	
	addi $4, $21, -60
	addi $5, $0, 26
	addi $6, $0, 24
	
	
	
	
	jal apagarp	
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac3
	sw $13, 132($15)
	
	addi $8, $0, 3
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31

	
fimpac3:	addi $14, $0, 1
	sw $14, 36($15)
	sw $0, 136($15)
	
	addi $8, $0, 2
	sw $8, 140($15)
	
	add $31, $0, $22
	jr $31

contshot:	add $18, $0, $31
	lw $12, 0($15)
	beq $12, $0, nueshot
	addi $4, $21, -56
	addi $5, $0, 30
	addi $6, $0, 30
	jal apagarp
	lw $8, 80($15)
	bne $8, $0, contnor
	addi $2, $0, 40
	j nueshot
contnor:	addi $2, $0, 50
nueshot:	sw $2, 144($15)
	add $31, $0, $18
	jr $31
#================================================================
#================================================================ 
#	MOVIMENTACAO PARA TRAS	
tras:	
	addi $8, $0, 1	
	sw $8, 80($15)
	
	addi $8, $0, 12
	sw $8, 8($15)
	
	addi $8, $0, 60
	sw $8, 12($15)
	
	lw $16, 4($23)
	sw $0, 4($23)
	
	jal contshot
	
	
	
	

	
	
trasnor:	addi $21, $21, -4
	add $24, $0, $21
	
	add $10, $0, 'q' #POR ENQUANTO ASSIM
	beq $16, $10, pacolevet
	
	lw $14, 136($15)
	
	beq $14, 1, paco1lt
	beq $14, 2, paco2lt
	beq $14, 3, paco3lt
	
	lw $14, 36($15)
	
	beq $14, $0, paco1t
	beq $14, 1, paco2t
	beq $14, 2, paco3t
	
	add $31, $0, $22
	jr $31
	
pacolevet:	
#============== COLISAO LEVE
	addi $4, $21, -20
	addi $6, $0, 10
	addi $7, $0, 5
	lw $5, 48($15)
	jal colidamage
	
	add $4, $21, -32
	addi $7, $0, 1
	lw $5, 56($15)
	jal coliwall	
	
	lw $5, 60($15)
	jal coliwall
	
	lw $5, 64($15)
	jal coliwall
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $24, -20
	
	addi $5, $0, 13
	addi $6, $0, 21
	
	jal apagarp
#============== QUEDA LEVE
	addi $9, $21, 24536
	lw $8, 44($15)
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco

	
	jal megalevet
	
	
	addi $4, $0, 12000
	jal timer
	
	
	
	addi $4, $21, -52
	addi $5, $0, 28
	addi $6, $0, 26
	
	jal apagarp
	
	
	add $31, $0, $22
	jr $31
	
#-------------------------------------------	
#	PRIMEIRO PACO	
paco1t:	lw $13, 32($15)
	sw $13, 132($15)

paco1lt:	lw $13, 132($15)
	
	
	
	
	addi $4, $21, -44
	
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO1
	
	addi $9, $21, 24536
	lw $8, 44($15)
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco

#============== COLISAO PACO1
	addi $4, $21, -44
	addi $6, $0, 15
	addi $7, $0, 5
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $21, -24
	addi $7, $0, 1
	lw $5, 56($15)
	jal coliwall	
	
	lw $5, 60($15)
	jal coliwall
	
	lw $5, 64($15)
	jal coliwall
	
			
	
	jal megapaco1t #1
	
	lw $4, 4($15)
	jal timer
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	addi $4, $21, -24
	addi $5, $0, 26
	addi $6, $0, 24
	
	jal apagarp
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac1t
	sw $13, 132($15)
	
	addi $8, $0, 1
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31
fimpac1t:
	addi $14, $0, 1
	sw $14, 36($15)
	sw $0, 136($15)
	
	add $31, $0, $22
	jr $31
	
	
#-------------------------------------------	
#	SEGUNDO PACO
paco2t: lw $13, 32($15)
	sw $13, 132($15)
	
paco2lt: lw $13, 132($15)
	

		
	addi $4, $21, -44
	
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO2
	
	addi $9, $21, 24564
	lw $8, 44($15)
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
		
#============== COLISAO PACO2
	addi $4, $21, -44
	addi $6, $0, 15	
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado

	addi $4, $21, -32
	addi $7, $0, 1
	lw $5, 56($15)
	jal coliwall	
	
	lw $5, 60($15)
	jal coliwall
	
	lw $5, 64($15)
	jal coliwall
	
			
	
	jal megapaco2t #1
	
	lw $4, 4($15)
	jal timer
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	addi $4, $21, 0
	addi $5, $0, 24
	addi $6, $0, 24
	

	
	
	jal apagarp
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac2t
	sw $13, 132($15)
	addi $8, $0, 2
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31
	
	
	
fimpac2t:
	lw $14, 140($15)
	
	beq $14, 2, minust
	
	addi $14, $0, 2
	sw $14, 36($15)
	sw $0, 136($15)
	
	add $31, $0, $22
	jr $31

minust: lw $14, 36($15)
	addi $14, $14, -1	
	sw $14, 36($15)
	sw $0, 136($15)
	sw $0, 140($15)
	
	add $31, $0, $22
	jr $31
	
#-------------------------------------------	
#	TEREIRO PACO
paco3t:	lw $13, 32($15)
	sw $13, 132($15)
	
paco3lt: lw $13, 132($15)

	addi $4, $21, -44

	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
#============== COLISAO PACO3
	
	addi $9, $21, 24536
	lw $8, 44($15)
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	beq $10, $8, quedaco
			
#============== COLISAO PACO3
	add $4, $21, -44
	addi $6, $0, 15
	addi $7, $0, 5
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $21, -24
	addi $7, $0, 1
	lw $5, 56($15)
	jal coliwall	
	
	lw $5, 60($15)
	jal coliwall
	
	lw $5, 64($15)
	jal coliwall
	
			
	
	jal megapaco3t 
	
	lw $4, 4($15)
	jal timer
	
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	
	addi $4, $21, 0
	addi $5, $0, 26
	addi $6, $0, 24
	
	
	
	
	jal apagarp	
	
	lw $13, 132($15)
	addi $13, $13, -1
	beq $13, $0, fimpac3t
	sw $13, 132($15)
	
	addi $8, $0, 3
	sw $8, 136($15)
	
	add $31, $0, $22
	jr $31

	
fimpac3t:	addi $14, $0, 1
	sw $14, 36($15)
	sw $0, 136($15)
	
	addi $8, $0, 2
	sw $8, 140($15)
	
	add $31, $0, $22
	jr $31

#============== FIM DA FUNCAO PARA TRAS

#===============================================================
#===============================================================
#	MOVIMENTACAO VETICAL

pulomega:	sw $0, 4($23)
	addi $14, $0, 20
	jal contshot
	
pulaco:	addi $8, $0, 50
	sw $8, 28($15)
	
pulacol:	lw $13, 28($15)
	beq $13, $0, quedaco
	
	lw $12, 0($15)
	bne $12, $0, pulolvf
	
	addi $9, $0, 40
	slt $8, $9, $13
	beq $8, 1, pulolv1 	#CAMADA 1
	
	addi $9, $0, 30
	slt $8, $9, $13
	beq $8, 1, pulolv2	#CAMADA 2
	
	addi $9, $0, 20
	slt $8, $9, $13
	beq $8, 1, pulolv3	#CAMADA 3
	
	addi $9, $0, 10
	slt $8, $9, $13
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
		
		
pulolvf:	addi $4, $21, -40
	addi $6, $0, 20
	addi $7, $0, 20
	
	lw $5, 48($15)
	
	jal colidamage
	
	addi $21, $21, -1024
	addi $24, $21, 0
	
	addi $4, $24, -1072
	addi $5, $0, 27
	addi $6, $0, 34
	
	jal apagarp
	addi $8, $0, 1024
	sw $8, 8($15)
	
#============== COLISAO DO TETO

	sw $0, 8($15)
	
	addi $4, $21, -1040
	lw $5, 68($15)
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal coliwall
	
	beq $2, 20, quedaco	
	lw $9, 4($23)
	
	addi $10, $0, 'd'
	beq $9, $10, pulacod
	
	addi $10, $0, 'a'
	
	beq $9, $10, pulacoe
	
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $8, 80($15)								
	bne $8, $0, meginp
	jal megapulo
	j pulonor
	
meginp:	jal megapulot
pulonor:	lw $13, 28($15)
	addi $13, $13, -1
	sw $13, 28($15)
	
	add $31, $0, $22
	jr $31
	
pulacod:	sw $0, 80($15)
#============== COLISAO PULACOD
	addi $8, $0, -24
	sw $8, 8($15)
	
	addi $4, $21, 20
	addi $6, $0, 15
	addi $7, $0, 4
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 64($15)
	add $4, $4, 8
	jal coliwall
	
	
	sw $0, 4($23)
	addi $21, $21, 8
	addi $24, $21, 0
	
	jal megapulo
	
	lw $13, 28($15)
	addi $13, $13, -1
	sw $13, 28($15)
	
	add $31, $0, $22
	jr $31
	
pulacoe:	
	
#============== COLISAO PULACOE
	addi $8, $0, 24
	sw $8, 8($15)
	
	
	addi $4, $21, -32
	addi $6, $0, 20
	addi $7, $0, 1
	lw $5, 64($15)
	jal coliwall
	
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	
	sw $0, 4($23)
	addi $21, $21, -8
	addi $24, $21, 0
	
	jal megapulot
	
			
	lw $13, 28($15)
	addi $13, $13, -1
	sw $13, 28($15)
	
	
	addi $8, $0, 1
	sw $8, 80($15)
	
	
	add $31, $0, $22
	jr $31
		
	
quedaco:	
	
	addi $4, $0, 30000
	jal timer
	
	addi $14, $0, 30
					
quedacol:	lw $13, 28($15)

	addi $9, $21, 149492
	
	
	lw $10, 0($9)
	lw $8, 52($15)
	beq $10, $8, jumperase
	
	
	lw $12, 0($15)
	bne $12, $0, quedalvf	#CAMADA 1
	
	
	addi $9, $0, 10
	slt $8, $13, $9
	beq $8, 1, quedalv5	#CAMADA 2
	
	addi $9, $0, 20
	slt $8, $13, $9
	beq $8, 1, quedalv4	#CAMADA 3
	
	addi $9, $0, 30
	slt $8, $13, $9
	beq $8, 1, quedalv3	#CAMADA 4
	
	addi $9, $0, 40
	slt $8, $13, $9
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

	
quedalvf:	addi $4, $21, -40
	addi $6, $0, 20
	addi $7, $0, 20
	
	lw $5, 48($15)
	
	jal colidamage
	
	addi $21, $21, 1024
	addi $24, $21, 0
	
	addi $4, $24, -1076
	addi $5, $0, 28
	addi $6, $0, 31
	
	jal apagarp
	
	
	lw $9, 4($23)
	
	addi $10, $0, 'd'
	beq $9, $10, quedacod
	
	addi $10, $0, 'a'
	beq $9, $10, quedacoe
	
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	lw $8, 80($15)								
	bne $8, $0, meginq
	jal megapulo
	j quedanor
	
meginq:	jal megapulot
		
quedanor:	
	lw $13, 28($15)
	addi $13, $13, 1
	sw $13, 28($15)
	

	add $31, $0, $22
	jr $31
	
quedacod:	sw $0, 80($15)
#============== COLISAO QUEDACOD
	addi $8, $0, -24
	sw $8, 8($15)
	
	addi $4, $21, 20
	addi $6, $0, 15
	addi $7, $0, 4
	
	lw $5, 48($15)
	jal colidamage
	
	
	lw $5, 64($15)
	add $4, $4, 8
	jal coliwall
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	sw $0, 4($23)
	addi $21, $21, 8
	addi $24, $21, 0
	
	jal megapulo
		
	lw $13, 28($15)
	addi $13, $13, 1
	sw $13, 28($15)
	

	add $31, $0, $22
	jr $31
	
quedacoe:	
	
#============== COLISAO QUEDACOE
	addi $8, $0, 24
	sw $8, 8($15)
	
	
	addi $4, $21, -32
	addi $6, $0, 20
	addi $7, $0, 1
	lw $5, 64($15)
	jal coliwall
	
	
	lw $5, 48($15)
	jal colidamage
	
	sw $0, 4($23)
	addi $21, $21, -8
	addi $24, $21, 0
	
	jal megapulot
		
	lw $13, 28($15)
	addi $13, $13, 1
	sw $13, 28($15)
	addi $8, $0, 1
	sw $8, 80($15)
 
	add $31, $0, $22
	jr $31
	
jumperase:	
	jal notamegaj
	
	addi $4, $21, -11312
	addi $5, $0, 30
	addi $6, $0, 42
	
	jal apagarp
	
	addi $14, $0, 0
	
	lw $12, 0($15)
	beq $12, $0, tiroxpulo
	
	add $24, $21, $0
	
	jal mega
	
tiroxpulo:	add $31, $0, $22
	jr $31



#============================================================
#	FUNCAO TIROMEGA. AQUI TEM PORRADARIA GRANDE

tiromega:
	
	lw $8, 168($15)
	beq $8, $0, voidm
	
	sw $0, 4($23)
	add $24, $21, $0

	addi $4, $24, -52
	addi $5, $0, 30
	addi $6, $0, 25
	
	jal apagarp
	
	jal notamegat

	lw $8, 80($15)								
	bne $8, $0, megint

	jal megatiro

	lw $8, 168($15)
	
	beq $8, 1, espadada

	add $12, $21, 10312 #Depois eu decido qual o melhor registrador para esse loop
	
	sw $12, 0($15)
	j tirolo
	
megint:	jal megatirot
	lw $8, 168($15)
	beq $8, 1, espadadat

	add $12, $21, 10140 #Depois eu decido qual o melhor registrador para esse loop
	sw $12, 0($15)
tirolot:	
	lw $12, 0($15)
	
	add $24, $0, $12
	addi $12, $12, -4
	
	sw $12, 0($15)
	
	jal megabuster
	
	addi $4, $12, 0
	lw $5, 48($15)
	addi $6, $0, 10
	addi $7, $0, 5
	
	jal enedamage
	beq $2, 10, stopshot
	
	lw $5, 56($15)
	jal colishot
	
	lw $5, 60($15)
	jal colishot
	
	lw $5, 64($15)		
	jal colishot
gnoret:	
	addi $4, $4, -2020
	addi $5, $0, 4
	addi $6, $0, 6
	
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
	
	lw $2, 144($15)
	beq $2, 40, newmega
	beq $2, 50, newmegat
	
	
	j tironuet
	
newmegat:	add $24, $21, $0	
	jal megat
	sw $0, 144($15)
		
tironuet:	add $31, $0, $22
	jr $31	
tirolo:	
	lw $12, 0($15)
	
	add $24, $0, $12
	addi $12, $12, 4
	
	sw $12, 0($15)
	
	jal megabuster
	
	addi $4, $12, 0
	lw $5, 48($15)
	addi $6, $0, 10
	addi $7, $0, 5
	
	jal enedamage
	beq $2, 10, stopshot
	
	lw $5, 56($15)
	jal colishot
	
	lw $5, 60($15)
	jal colishot
	
	lw $5, 64($15)		
	jal colishot
gnore:	
	addi $4, $4, -2060
	addi $5, $0, 4
	addi $6, $0, 6
	
	jal apagarp
	
	addi $4, $0, 100
	jal timer
	
	addi $8, $0, 1
	sw $8, 148($15)
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
	
	lw $2, 144($15)
	beq $2, 40, newmega
	beq $2, 50, newmegat
	j tironue
	
newmega:	add $24, $21, $0	
	jal mega
	sw $0, 144($15)
		
tironue:	add $31, $0, $22
	jr $31
	
stopshot:	
	lw $4, 0($15)
	
	sw $0, 0($15)
	sw $0, 4($23)
	
	
	lw $9, 164($15)
	beq $9, 5, stopcont
	
	lw $8, 40($15)
	beq $8, $0, viteni
	
	
stopcont:	
	sw $0, 148($15)
	addi $4, $4, -2056
	addi $5, $0, 11
	addi $6, $0, 7
	
	jal apagarp
	
	addi $4, $21, -56
	addi $5, $0, 31
	addi $6, $0, 30
	
	jal apagarp
	
	beq $14, 20, pulacol
	beq $14, 30, quedacol
	add $12, $0, $0
	
	add $31, $0, $22
	jr $31
	
tiropo:	lw $8, 148($15)	
	bne $8, $0, tirolo
	j tirolot
	
# ========== Espadada

espadada:	addi $4, $21, 10308
	jal megasword
	add $13, $0, $4
	
	addi $4, $0, 80000
	jal timer
	
	addi $4, $13, -40
	lw $5, 48($15)
	addi $6, $0, 10
	addi $7, $0, 10
	
	jal enedamage
	
	addi $4, $21, -56
	addi $5, $0, 56
	addi $6, $0, 30
	
	jal apagarp
	
	lw $8, 40($15)
	beq $8, $0, viteni
	
	add $31, $0, $22
	jr $31
	
# ========== Espadadat

espadadat:	addi $4, $21, 3952
	jal megaswordt
	add $13, $0, $4
	
	addi $4, $0, 80000
	jal timer
	
	addi $4, $13, -3112
	lw $5, 48($15)
	addi $6, $0, 10
	addi $7, $0, 10
	
	jal enedamage
	
	addi $4, $21, -152
	addi $5, $0, 56
	addi $6, $0, 30
	
	jal apagarp
	
	lw $8, 40($15)
	beq $8, $0, viteni
	
	add $31, $0, $22
	jr $31

telavitoria:	
	jal vitoria
	jal jinglevi
	j fim
	
derrotado:	
	jal derrota
	jal jinglede
	j fim
#=================================================
#	MOVIMENTOS DO SKULLMAN
movesku:	lw $10, 164($15)
	beq $10, 5, voidm
	
	add $22, $0, $31
	lw $13, 20($15)
	lw $9, 24($15)
	
	beq $9, 13, quedaskul
	beq $13, 26, chaoskul
	j puloskull
chaoskul:	
	sw $0, 24($15)
	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 36
	
	jal apagarp
	
	jal notaskuj

	lw $8, 184($15)
	addi $8, $8, -1
	sw $8, 184($15)
	
	bne $8, $0, normsku
	
	jal notamegat

	add $4, $20, $0
	jal skullatak
	
	add $4, $20, 6000
	jal skullsword
	
	addi $4, $0, 100000
	jal timer
	
	addi $8, $0, 35
	sw $8, 188($15)
	addi $4, $20, 3956
	lw $5, 120($15)
	addi $6, $0, 24
	addi $7, $0, 20
	
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 124($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 128($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	
	
	
	
	jal atakverif
	
	sw $0, 188($15)
	
	

normsku:	
		
	jal skull
	
	addi $4, $0, 10000
	jal timer

puloskull:
	add $25, $20, $0
	lw $13, 20($15)
	
	beq $13, $0, quedasku
	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 36
	
	jal apagarp
	
	add $4, $20, -20
	lw $5, 120($15)
	addi $6, $0, 15
	addi $7, $0, 15

	jal colidamage
	lw $8, 16($15)
	beq $8, $0, derrotado

	#lw $5, 124($15)
	#jal colidamage
	
	#lw $8, 16($15)
	#beq $8, $0, derrotado
	
	#lw $5, 128($15)
	#jal colidamage
		
	#lw $8, 16($15)
	#beq $8, $0, derrotado
	
	#lw $5, 52($15)
	#jal enedamage
	
	lw $8, 40($15)
	beq $8, $0, telavitoria
	
	jal jskull
	
	addi $25, $20, -1024
	addi $20, $20, -1024
	lw $13, 20($15)
	addi $9, $0, 20 #CAMADA 1
	slt $8, $9, $13
	beq $8, 1, jskul1
	
	addi $9, $0, 10 # CAMADA 2
	slt $8, $9, $13
	beq $8, 1, jskul2
	
	j jskul3
		
jskul1:	add $4, $0, 20
	
	jal timer
	
	j skut
	
jskul2:	add $4, $0, 200
	
	jal timer
	
	j skut

jskul3:	add $4, $0, 600
	
	jal timer
	
skut:	
	addi $13, $13, -1
	sw $13, 20($15)
	
	add $31, $0, $22
	jr $31

quedasku:	addi $9, $0, 13
	sw $9, 24($15)

quedaskul:	beq $13, 26, chaoskul
	
	add $25, $20, $0
	lw $13, 20($15)
	
	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 30
	
	jal apagarp
	
	add $4, $20, -20
	lw $5, 120($15)
	addi $6, $0, 15
	addi $7, $0, 10

	jal colidamage
	lw $8, 16($15)
	beq $8, $0, derrotado

	#lw $5, 124($15)
	#jal colidamage
	
	#lw $8, 16($15)
	#beq $8, $0, derrotado
	
	#lw $5, 128($15)
	#jal colidamage
		
	#lw $8, 16($15)
	#beq $8, $0, derrotado
	
	#lw $5, 52($15)
	#jal enedamage
	
	lw $8, 40($15)
	beq $8, $0, telavitoria
	
	jal jskull
	
	addi $25, $20, 1024
	addi $20, $20, 1024
	
	lw $13, 20($15)
	addi $9, $0, 10 #CAMADA 1
	slt $8, $13, $9
	beq $8, 1, qskul1
	
	addi $9, $0, 20 # CAMADA 2
	slt $8, $13, $9
	beq $8, 1, qskul2
	
	j qskul3
		
qskul1:	add $4, $0, 400
	
	jal timer
	
	j skutq
	
qskul2:	add $4, $0, 100
	
	jal timer
	
	j skutq

qskul3:	add $4, $0, 10
	
	jal timer
	
skutq:	
	addi $13, $13, 1
	sw $13, 20($15)
	
	add $31, $0, $22
	jr $31		
#=======================================
#	FUNCAO MEGATIRO
megatiro:	
	add $18, $0, $31
	jal megahead
	
#============== BRACO DIREITO

	addi $4, $24, 4
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -2048
	
	add $4, $24, $0 
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2

#-------------- CONTORNO DO BRACO DIREITO		
	addi $24, $24, -12
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
		
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 4
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 3
	addi $7, $0, 4072
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 4
	addi $7, $0, -1028
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 3
	addi $7, $0, -2056
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 4
		
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3020
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 5
	addi $7, $0, -4092
	
	jal sequencia
	add $24, $0, $2
	
#-------------- BUSTER
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA 
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA 
	addi $6, $0, 1
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, -64
	
	jal sequencia
	add $24, $0, $2
	
#============== BRACO ESQUERDO
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoupt
	add $24, $0, $2
	
	
	
	addi $24, $24, -5144
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
#-------------- CONTORNO DO BRACO ESQUERDO
	addi $24, $24, -2060
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -1016
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 3076
	
	add $4, $0, $24
	addi $5, $0, 0x000000#Contorno
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
#-------------- PINTANDO O BRACO ESQUERDO
	addi $24, $24, -4124
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1028
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
#============== BARRIGA
	addi $24, $24, 12
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 7
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24 1020
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
#============== CUECA
	addi $24, $24, -32
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodwt
	add $24, $0, $2
	
#============== COXA DIREITA
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodwt
	add $24, $0, $2

#-------------- CONTORNO	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -36
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 7
	addi $7, $0, -4132
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#-------------- CANELA DIREITA
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, -1028
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 3052
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============== PERNA ESQUERDA 
	addi $24, $24, -80
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 2
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, 3080
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000#CONTORNO
	addi $6, $0, 8
	addi $7, $0, -6148
	
	jal sequencia
	add $24, $0, $2
	
#-------------- COXA ESQUERDA
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
#-------------- CANELA ESQUERDA
	addi $24, $24, -20
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 6
	addi $7, $0, 992
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5 #COR
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	
	add $31, $0, $18
	
	jr $31
#============== FIM MEGATIRO
	
#===========================================
#============== MEGABUSTER
megabuster:	
	add $18, $0, $31
	
#============== CONTORNO
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24 2056
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -5132
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#============ COR DO TIRO
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0xe5aa7a #TIRO
	addi $6, $0, 4
	addi $7, $0, 4
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0xe5aa7a #TIRO
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $24, $0, $2

#=============== CHARME/BRILHO	
	addi $24, $24, -12
	
	add $4, $0, $24
	addi $5, $0, 0xfffff7 #CHARME
	addi $6, $0, 2
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xfffff7 #CHARME
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
#============== FIM MEGABUSTER
				
#===============================================================	
#	FUNCAO MEGA PULO

megapulo:	
	
	add $18, $0, $31
	
	jal megahead
	
#=============	BOCA ABERTA
	addi $24, $24, -2060
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90 #PELE
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 # BOCA
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0xf0cd90 #PELE
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 # BOCA
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#==============	BRACO DIREITO
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 1
	addi $7, $0, -5116
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#-------------- ANTEBRACO
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, -1028
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -4100
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
#-------------- CONTORNO
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24 -3072
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 3076
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 8160
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2

#============== BRACO ESQUERDO
	addi $24, $24, -1072
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagoupt
	add $24, $0, $2
	
#______________ Pixelzinho
	addi $24, $24, -4112
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 1
	addi $7, $0, -3084
	
	jal sequencia
	add $24, $0, $2
	
#-------------- ANTEBRACO	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -12
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, -5132
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2

#-------------- CONTORNO DO BRACO ESQUERDO
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -24
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -3068
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 11276
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2

#============== BARRIGA
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 11
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 3
	addi $7, $0, 8
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
#============== CUECA
	addi $24, $24, 3036
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 8
	addi $7, $0, 992
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 7
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

#============== PERNA DIREITA

	add $4, $0, $24
	add $5, $0, 0x47a6e6 #Roupa
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal diagoup
	add $24, $0, $2

#-------------- CANELA DIREITA	
	addi $24, $24, -1020
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 3076
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $24, $0, $2

	addi $24, $24, -1032
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, -1032
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#-------------- CONTORNO DA PERNA DIREITA
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -5144
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2028
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1028
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2

#============== LIGACAO ENTRE PERNAS/CONTORNO
	addi $24, $24, -4136
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3072
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 7
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 6
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 6144
	
	add $4, $0, $24
	add $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, -12304
	
	jal sequencia
	add $24, $0, $2

#============== PERNA ESQUERDA
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24,, $24, 1024
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 1
	addi $7, $0, 2040
	
	jal sequencia
	add $24, $0, $2
	
#-------------- CANELA ESQUERDA
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 1
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	add $5, $0, 0x1d61b5 #COR
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31	

#============== FIM DA FUNCAO MEGA PULO
#=================================================
#	Vitoria
vitoria:	
	add $18, $0, $31
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
	add $31, $0, $18
	jr $31
	
#============== FIM VITORIA

#==========================================================	
#	Derrota
	
derrota:	add $18, $0, $31
	lui $8, 0x1001
	
	add $9, $0, 0x610005
	addi $10, $0, 32768
	
derrot:	sw $9, 0($8)
	
	addi $10, $10, -1
	addi $8, $8, 4
	bne $10, $0, derrot
	
	# jr $31	
dertext:	lui $15, 0x1001
	
	addi $15, $15, 40244
#	0xed1c24 = COR DO TEXTO
#============== VOCE

#-------------- V
		
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 6136
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2036
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1032
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -2048
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -6144
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
#-------------- O
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3076
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -40
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#-------------- C
	addi $15, $15, -10212
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#-------------- E
	addi $15, $15, -10220
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
		
	addi $15, $15, -5136
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, -8224
	
	jal sequencia
	add $15, $0, $2
	
#-------------- V ao contrario
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -3060
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	addi $15, $15, -4
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, -1028
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
#-------------- SUBLINHADO
	addi $15, $15, 18256
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 47
	addi $7, $0, 6152
	
	jal sequencia
	add $15, $0, $2
	
#============== PERDEU
#-------------- P
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3076
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -40
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 15
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#-------------- E
	addi $15, $15, -3048
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
		
	addi $15, $15, -5136
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, -11240
	
	jal sequencia
	add $15, $0, $2
	
#-------------- R
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3076
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -40
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 15
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1008
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 7
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
#-------------- D
	addi $15, $15, -9180
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	addi $15, $15, -4
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 1008
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 1008
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 12
	addi $7, $0, 5
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 12248
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 988
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 7
	addi $7, $0, -13284
	
	jal sequencia
	add $15, $0, $2
	
#-------------- E
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 5
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 5104
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 5
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2056
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
		
	addi $15, $15, -5136
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 4
	addi $7, $0, -5096
	
	jal sequencia
	add $15, $0, $2
	
#-------------- U
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 6136
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2040
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -10240
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
#-------------- Sublinhado
	addi $15, $15, 14020
	
	add $4, $0, $15
	addi $5, $0, 0xed1c24
	addi $6, $0, 80
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	add $31, $0, $18
	jr $31
#=================================================
#	SOUND EFFECTS
#	pulo skull
notaskuj:	
	addi $6, $0, 117
	addi $7, $0, 127
	
	addi $4, $0, 58
	addi $5, $0, 400
	addi $2, $0, 31
	syscall
	jr $31
#	Pulo mega
notamegaj:	
	addi $6, $0, 7
	addi $7, $0, 127
	
	addi $4, $0, 76
	addi $5, $0, 400
	addi $2, $0, 31
	syscall
	jr $31
#========================================================
#	Tiro do mega
notamegat:	addi $6, $0, 7 #efeito
	addi $7,$0, 80 #volume
	addi $4, $0, 74 #re
	addi $5, $0, 75
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 62 #re
	addi $5, $0, 75
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 86 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 98 #re
	addi $5, $0, 300
	addi $2, $0, 31
	syscall
	
	jr $31
	
#	Vitoria

jinglevi:	addi $6, $0, 55 #conjunto / piano 7
	addi $7, $0, 100 #volume
	
	addi $4, $0, 71 #do#
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 71 #do#
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	#=================================	
	addi $4, $0, 73 #re#
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 73 #re#
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	#===============================
	addi $4, $0, 74 #mi
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 74 #m
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	#=======================
	addi $6, $0, 55 #conjunto / efeito 100
	addi $7,$0, 100 #volume
	
	addi $4, $0, 76 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	
	addi $4, $0, 74 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	
	addi $4, $0, 76 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	
	addi $4, $0, 78 #re
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 750 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31
	
#	Derrota

jinglede:	addi $6, $0, 5 #conjunto / piano 5, 7, 86, 97,  
	addi $7, $0, 100 #volume
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1200 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 1200
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 2000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
#====================

	addi $4, $0, 64 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 3250
	addi $2, $0, 31
	syscall

	addi $4, $0, 400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	jr $31
# som do dano skullman
#	$4, #TIPO DE NOTA ou pausa
#	$5 #O TEMPO PARA DURAR SOM OU PAUSA
#	$2, $0, 31 #FUNCIONA UM SOM
#	$2, $0, 32 #FUNCIONA UMA PAUSA
#	$6, $0, 0 #INSTRUMENTO TOCADO

	
skudamage:	addi $6, $0, 104 #cordas
	addi $7,$0, 60 #volume
	
	addi $4, $0, 60 #re
	addi $5, $0, 200
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 200 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $7,$0, 100 #volume
	addi $4, $0, 86 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 89 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 92 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 95 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 95 #re
	addi $5, $0, 100
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 200 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	jr $31	
#===========================================
#	Tema principal

menusound:		
	lw $8, 200($15)

	addi $8, $8, -1
	
	sw $8, 200($15)

	lw $8, 200($15)
	bne $8, $0, voidm
	
menutheme:	beq $3, $0, menu1
	beq $3, 1, menu2
	beq $3, 2, menu3
	beq $3, 3, menu4
	beq $3, 4, menu5
	beq $3, 5, menu6
	beq $3, 6, menu7
	beq $3, 7, menu8
	beq $3, 8, menu9
	beq $3, 9, menu10
	beq $3, 10, menu11
	beq $3, 11, menu12
	beq $3, 12, menu13
	beq $3, 13, menu14
	beq $3, 14, menu15
	beq $3, 15, menu16
	beq $3, 16, menu17
	beq $3, 17, menu18
	beq $3, 18, menu19
	beq $3, 19, menu20
	beq $3, 20, menu21
	beq $3, 21, menu22
	beq $3, 22, menu23
	beq $3, 23, menu24
	beq $3, 24, menu25
	beq $3, 25, menu26
	beq $3, 26, menu27
	beq $3, 27, menu28
	beq $3, 28, menu29
	beq $3, 29, menu30
	beq $3, 30, menu31
	beq $3, 31, menu32
	beq $3, 32, menu33
	beq $3, 33, menu34
	beq $3, 34, menu35
	beq $3, 35, menu36
	beq $3, 36, menu37
	beq $3, 37, menu38
	beq $3, 38, menu39
	beq $3, 39, menu40
	beq $3, 40, menu41
	beq $3, 41, menu42
	beq $3, 42, menu43
	beq $3, 43, menu44
	beq $3, 44, menu45
	beq $3, 45, menu46
	beq $3, 46, menu47
	beq $3, 47, menu48
	beq $3, 48, menu49
	beq $3, 49, menu50
	beq $3, 50, menu51
	beq $3, 51, menu52
	beq $3, 52, menu53
	beq $3, 53, menu54
	beq $3, 54, menu55
	beq $3, 55, menu56
	beq $3, 56, menu57
	beq $3, 57, menu58
	beq $3, 58, menu59
	beq $3, 59, menu60
	beq $3, 60, menu61
	beq $3, 61, menu62
	beq $3, 62, menu63
	beq $3, 63, menu64
	beq $3, 64, menu65
	beq $3, 65, menu66
	beq $3, 66, menu67
	beq $3, 67, menu68
	beq $3, 68, menu69
	beq $3, 69, menu70
	beq $3, 70, menu71
	beq $3, 71, menu72
	beq $3, 72, menu73
	beq $3, 73, menu74
	beq $3, 74, menu75
	beq $3, 75, menu76
	beq $3, 76, menu77
	beq $3, 77, menu78
	beq $3, 78, menu79
	beq $3, 79, menu80
	beq $3, 80, menu81
	beq $3, 81, menu82
	beq $3, 82, menu83
	beq $3, 83, menu84
	beq $3, 84, menu85
	beq $3, 85, menu86
	beq $3, 86, menu87
	beq $3, 87, menu88
	beq $3, 88, menu89
	beq $3, 89, menu90
	beq $3, 90, menu91
	beq $3, 91, menu92
	beq $3, 92, menu93
	beq $3, 93, menu94
	beq $3, 94, menu95
	beq $3, 95, menu96
	beq $3, 96, menu97
	beq $3, 97, menu98
	beq $3, 98, menu99
	beq $3, 99, menu100
	beq $3, 100, menu101
	beq $3, 101, menu102
	beq $3, 102, menu103
	beq $3, 103, menu104
	beq $3, 104, menu105
	beq $3, 105, menu106
	beq $3, 106, menu107
	beq $3, 107, menu108
	beq $3, 108, menu109
	beq $3, 109, menu110
	beq $3, 110, menu111
	beq $3, 111, menu112
	beq $3, 112, menu113
	beq $3, 113, menu114
	beq $3, 114, menu115
	beq $3, 115, menu116
	beq $3, 116, menu117
	beq $3, 117, menu118
	beq $3, 118, menu119
	beq $3, 119, menu120
	beq $3, 120, menu121
	beq $3, 121, menu122
	beq $3, 122, menu123
	beq $3, 123, menu124
	beq $3, 124, menu125

menu1:	addi $6, $0, 69 #conjunto / piano 2, 3, 5, 7, 86, 97,  
	addi $7, $0, 100 #volume
	addi $4, $0, 55#43 #g2#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31 #1
	syscall
	
	addi $3, $0, 1
	
	addi $4, $0, 113620 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)	#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
		#syscall
	jr $31
	
menu2:	addi $4, $0, 60#48 #c3
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31 #2
	syscall
	
	addi $3, $0, 2
	addi $4, $0, 284052 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)	#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
		#syscall
	
	jr $31
menu3:	addi $4, $0, 55#43 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31 #3
	syscall
	
	addi $3, $0, 3
	addi $4, $0, 113620 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)	#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
			#syscall

	
	jr $31
menu4:	addi $4, $0, 56#44 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31 #4
	syscall
	
	addi $3, $0, 4
	addi $4, $0, 85214 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
		#syscall
	
	jr $31

menu5:	addi $4, $0, 59#47 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31 #5
	syscall
	
	addi $3, $0, 5
	addi $4, $0, 42606 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)	#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
		#syscall
	
	jr $31
menu6:	addi $4, $0, 60#48 #c3#
	addi $5, $0, 2500		#0:54
	addi $2, $0, 31 #6
	syscall
	
	addi $3, $0, 0
	addi $4, $0, 355065 #coloca o tempo da pausa no reg 4
	sw $4, 200($15)#addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	#syscall
	
	jr $31
	#==== 13s
menu7:	addi $4, $0, 55#43 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 7

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu8:	addi $4, $0, 56#44 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 8

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31
	
menu9:	addi $4, $0, 59#47 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 9

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	jr $31
	
menu10:	addi $4, $0, 63#51 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 10

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31
menu11:	addi $4, $0, 60#48 #do#
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 11

	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31

	#==== 19s
menu12:	addi $4, $0, 58#46 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 12

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu13:	addi $4, $0, 54#42 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 13

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu14:	addi $4, $0, 58#46 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 14

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu15:	addi $4, $0, 55#43 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 15

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu16:	addi $4, $0, 55#43 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 16

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu17:	addi $4, $0, 60#48 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 17

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu18:	addi $4, $0, 55#43 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 18

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu19:	addi $4, $0, 56#44 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 19

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu20:	addi $4, $0, 59#47 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 20

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu21:	addi $4, $0, 60#48 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 21

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#====29s	

menu22:	addi $4, $0, 55#43 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 22

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu23:	addi $4, $0, 56#44 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 23

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu24:	addi $4, $0, 59#47 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 24

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu25:	addi $4, $0, 67#55 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 25

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#======= 31s
	
menu26:	addi $4, $0, 62#50 #do#
	addi $5, $0, 1500		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 26

	addi $4, $0, 1500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu27:	addi $4, $0, 62#50 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 27

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu28:	addi $4, $0, 65#53 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 28

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu29:	addi $4, $0, 67#55 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 29

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu30:	addi $4, $0, 62#50 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 30

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu31:	addi $4, $0, 67#55 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 31

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu32:	addi $4, $0, 72#60 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 32

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu33:	addi $4, $0, 67#55 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 33

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu34:	addi $4, $0, 68#56 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 34

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31

	#======== 40s

menu35:	addi $4, $0, 71#59 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 35

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu36:	addi $4, $0, 72#60 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 36

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu37:	addi $4, $0, 67#55 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 37

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu38:	addi $4, $0, 68#56 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 38
	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu39:	addi $4, $0, 71#59 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 39	

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#======= 47s

menu40:	addi $4, $0, 75#63 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 40

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu41:	addi $4, $0, 72#60 #do#
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 41

	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu42:	addi $4, $0, 70#58 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 42

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu43:	addi $4, $0, 66#54 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 43

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu44:	addi $4, $0, 70#58 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 44

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu45:	addi $4, $0, 67#55 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 45

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu46:	addi $4, $0, 67#55 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 46

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#======== 50s

menu47:	addi $4, $0, 72#60 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 47

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu48:	addi $4, $0, 67#55 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 48

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu49:	addi $4, $0, 68#56 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 49

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu50:	addi $4, $0, 71#59 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 50

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu51:	addi $4, $0, 72#60 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 51

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#==== 57s
	
menu52:	addi $4, $0, 67#55 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 52

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu53:	addi $4, $0, 68#56 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 53

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu54:	addi $4, $0, 71#59 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 54

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu55:	addi $4, $0, 79#67 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 55

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu56:	addi $4, $0, 74#62 #do#
	addi $5, $0, 1700		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 56

	addi $4, $0, 1700 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu57:	addi $4, $0, 74#62 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 57

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

	#1:00

menu58:	addi $4, $0, 77#65 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 58

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu59:	addi $4, $0, 79#67 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 59

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu60:	addi $4, $0, 74#62 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 60

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu61:	addi $4, $0, 62#50 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 61

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu62:	addi $4, $0, 65#53 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 62

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu63:	addi $4, $0, 63#51 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 63

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu64:	addi $4, $0, 60#48 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 64

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu65:	addi $4, $0, 62#50 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 65

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu66:	addi $4, $0, 62#50 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 66

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu67:	addi $4, $0, 63#51 #do#
	addi $5, $0, 2800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 67

	addi $4, $0, 2800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu68:	addi $4, $0, 63#51 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 68

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu69:	addi $4, $0, 67#55 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 69

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu70:	addi $4, $0, 67#55 #do#
	addi $5, $0, 1500		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 70

	addi $4, $0, 1500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu71:	addi $4, $0, 70#58 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 71

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu72:	addi $4, $0, 69#57 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 72

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu73:	addi $4, $0, 65#53 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 73

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu74:	addi $4, $0, 62#50 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 74

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu75:	addi $4, $0, 67#55 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 75

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu76:	addi $4, $0, 70#58 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 76

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu77:	addi $4, $0, 70#58 #do#
	addi $5, $0, 1500		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 77

	addi $4, $0, 1500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu78:	addi $4, $0, 69#57 #do#
	addi $5, $0, 700		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 78

	addi $4, $0, 700 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31
	
menu79:	addi $4, $0, 65#53 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 79

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu80:	addi $4, $0, 67#55 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 80

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu81:	addi $4, $0, 69#57 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 81

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu82:	addi $4, $0, 70#58 #do#
	addi $5, $0, 2800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 82

	addi $4, $0, 2800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu83:	addi $4, $0, 70#58 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 83

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu84:	addi $4, $0, 69#57 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 84

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu85:	addi $4, $0, 69#57 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 85

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu86:	addi $4, $0, 62#50 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 86

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu87:	addi $4, $0, 69#57 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 87

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu88:	addi $4, $0, 69#57 #do#
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 88

	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu89:	addi $4, $0, 62#50 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 89

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu90:	addi $4, $0, 67#55 #do#
	addi $5, $0, 2800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 90

	addi $4, $0, 2800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu91:	addi $4, $0, 62#50 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 91

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu92:	addi $4, $0, 63#51 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 92

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu93:	addi $4, $0, 66#54 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 93

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu94:	addi $4, $0, 67#55 #do#
	addi $5, $0, 2800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 94

	addi $4, $0, 2800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu95:	addi $4, $0, 62#50 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 95

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu96:	addi $4, $0, 63#51 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 96

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu97:	addi $4, $0, 66#54 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 97

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu98:	addi $4, $0, 70#58 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 98

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu99:	addi $4, $0, 67#55 #do#
	addi $5, $0, 1200		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 99

	addi $4, $0, 1200 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu100:	addi $4, $0, 65#53 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 100

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu101:	addi $4, $0, 61#49 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 101

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu102:	addi $4, $0, 65#53 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 102

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu103:	addi $4, $0, 62#50 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 103

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu104:	addi $4, $0, 65#53 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 104

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu105:	addi $4, $0, 70#58 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 105

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu106:	addi $4, $0, 65#53 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 106

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu107:	addi $4, $0, 66#54 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 107

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu108:	addi $4, $0, 69#57 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 108

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu109:	addi $4, $0, 70#58 #do#
	addi $5, $0, 2800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 109

	addi $4, $0, 2800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu110:	addi $4, $0, 65#53 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 110

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu111:	addi $4, $0, 66#54 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 111

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu112:	addi $4, $0, 69#57 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 112

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu113:	addi $4, $0, 77#65 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 113

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu114:	addi $4, $0, 72#60 #do#
	addi $5, $0, 1800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 114

	addi $4, $0, 1800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu115:	addi $4, $0, 72#60 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 115

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu116:	addi $4, $0, 75#63 #do#
	addi $5, $0, 1000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 116

	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu117:	addi $4, $0, 77#65 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 117

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu118:	addi $4, $0, 72#60 #do#
	addi $5, $0, 3000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 118

	addi $4, $0, 3000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu119:	addi $4, $0, 72#60 #do#
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 119

	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu120:	addi $4, $0, 70#58 #do#
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 120

	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

#=== 2:07
	
menu121:	addi $4, $0, 53#41 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 121

	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu122:	addi $4, $0, 54#42 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 122

	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu123:	addi $4, $0, 57#45 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 123

	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu124:	addi $4, $0, 58#46 #do#
	addi $5, $0, 4400		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 124

	addi $4, $0, 4400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31

menu125:	addi $4, $0, 53#41 #do#
	addi $5, $0, 4000		#0:54
	addi $2, $0, 31
	syscall

	addi $3, $0, 0

	addi $4, $0, 4000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31

#===================================================
#	Tela Principal de prince of mega
telaprince:	
	add $18, $0, $31
	lui $4, 0x1001
		
	addi $4, $4, 0
	addi $5, $0, 0x2f3699 #AZUL DO FUNDO	
	addi $6, $0, 128
	addi $7, $0, 256
	
	jal verticais
	add $4, $2, $0
	
	lui $4, 0x1001

	addi $4, $4, 15700
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #preto	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000 #AZUL DO FUNDO	
	addi $6, $0, 25
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 25
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 25
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 25
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 8
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 8188
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0

	addi $4, $4, 3068
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 13
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -12288
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 9
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 8160
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 11244
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	lui $4, 0x1001
	addi $4, $4, 15764
	 
	addi $4, $4, 0
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1012
	addi $5, $0, 0x000000 #Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 10
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 10
	addi $7, $0, 1
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 9180
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1028
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 13
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2044
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2032
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2032
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 948
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1036
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 2004
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -3040
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	lui $4, 0x1001
	addi $4, $4, 15844
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 32
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 31
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 1016
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 30
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1028
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2044
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 26
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2056
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 27648
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1032
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra I
	
	lui $4, 0x1001
	addi $4, $4, 15884
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	addi $4, $4, 980
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 12
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 964
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2044
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 23
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1028
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 25540
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -36
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -3060
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra N
	lui $4, 0x1001
	addi $4, $4, 18024
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 960
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x4000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 16
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 948
	addi $5, $0, 0x4000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 24
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1088
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 17
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 17
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 17
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 17388
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -5120
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, -2048
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2040
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1012
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra C
	
	lui $4, 0x1001
	addi $4, $4, 18104
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 960
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x4000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 16
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 948
	addi $5, $0, 0x4000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 24
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1088
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 17
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 17
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 7
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 6144
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 11
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 10
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 9
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 8
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 8
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 6
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 6124
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 11
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 9
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -5128
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1048
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0,0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, -1040
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, -1032
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0,0
	
	jal vertical
	add $4, $2, $0
	#fim E
	
	lui $4, 0x1001
	addi $4, $4, 60892
	
	addi $4, $4, 0
	addi $5, $0, 0x000000f#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000f#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1012
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000f#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000f#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2032
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra o
	#come�a letra f
	lui $4, 0x1001
	addi $4, $4, 54792
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -32
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 7
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -8
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 996
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Amarelo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 7136
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xd1ab41#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0x00000#Amarelo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra f
	#letra M megaman
	lui $4, 0x1001
	addi $4, $4, 80228
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#vermelho escuro	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 40
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#vermelho escuro	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 928
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#vermelho escuro	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#vermelho escuro	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#vermelho escuro	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#branco	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0xa34966#branco	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xa34966#branco	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#branco	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 972
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 14
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 964
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 2
	addi $7, $0, 13
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 31 #largura at� o branco
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 900
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#sombraM	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 896
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#branco	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 928
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#sombra verde	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#sombra verde	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 7 #pe direito M
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 892
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2 
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 2 
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#sombraverde
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#verde mais claro	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#verde mais claro	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 900
	addi $5, $0, 0x94a68d#branco	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#verde sombra	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x94a68d#verde mais claro	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#verde mais claro	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#verde sombra	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x94a68d#verde mais claro	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 892
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#branco	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 16
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 892
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 24
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 9
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 888
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#branco	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 28
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 924
	addi $5, $0, 0xe6e6e6#branco	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 32
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 928
	addi $5, $0, 0x000000#branco	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -964
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -13376
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 13
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -2100
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 13
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1072
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1072
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1068
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, -1068
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1064
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1064
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1060
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1060
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1052
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 2056
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 21
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 21
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	#fim letra M 
	lui $4, 0x1001
	addi $4, $4, 80372
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 976
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 10
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1992
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xa80035#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1988
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 15
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -64
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 14
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 1984
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 16
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 960
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 952
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x94a68d#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 20
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2992
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 20
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 944
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 21
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, -3076
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	#fim letra E megaman
	lui $4, 0x1001
	addi $4, $4, 80440
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 976
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 13
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 960
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2016
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 8
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2016
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2008
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x94a68d#Verde mais claro baixo	
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	
	
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	
	add $4, $2, $0
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 944
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 18
	addi $7, $0, 0
	
	jal sequencia
	
	addi $4, $4, 1020
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 17
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 952
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 16
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 15
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 964
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 14
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -16412
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 1000
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 996
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2028
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2024
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x94a68d#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim G megaman
	lui $4, 0x1001
	addi $4, $4, 80516
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 972
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 964
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 14
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 14
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 960
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x990030#Verde mais claro baixo	
	addi $6, $0, 15
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 952
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal verticais
	add $4, $2, $0
	
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $5, $0, 0xa34966#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 964
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 4
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x700024#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 948
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 12
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 956
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 16
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 940
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 952
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 12
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 12
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x194d08#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 936
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 944
	addi $5, $0, 0x94a68d#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1032
	addi $5, $0, 0x578546#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 8
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x94a68d#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 980
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 988
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 8
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, -2088
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1028
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -6236
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb6b8b6#Verde mais claro baixo	
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2020
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 7
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, 2020
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 8
	
	jal verticais
	add $4, $2, $0
	
	addi $4, $4, -1028
	addi $5, $0, 0xe6e6e6#Verde mais claro baixo	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2044
	addi $5, $0, 0x000000#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 992
	addi $5, $0, 0x081f00#Verde mais claro baixo	
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	#fim letra A MEGAMAN
	#FIM TELA DE INICIO
	
	add $31, $0, $18
	jr $31	
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
	addi $5, $0, 40
	addi $6, $0, 34
	jal apagarp
	
	add $4, $0, $21
	jal dano
	
	addi $4, $0, 25000
	jal timer
	
	addi $4, $21, -6252
	addi $5, $0, 45
	addi $6, $0, 30
	jal apagarp
	
	lw $9, 16($15) # PERDE VIDA
	addi $9, $9, -1
	
	sw $9, 16($15)
	jal atakverif
	
	add $31, $0, $22
	jr $31
#===================================================
#	FUNCAO DE COLISAO DE PAREDES
		
#	$4 = Posicao de verificacao
#	$5 = Cor da parede que NAO pode andar
#	$6 = Quantas linhas
#	$7 = Quantas colunas

coliwall:	
	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
walloop:	
	
	lw $10, 0($9)
	
	beq $10, $5, nopeandar
 	
 	addi $9, $9, 1024
 	addi $11, $11, -1
 	
	bne $11, $0, walloop
	
	addi $12, $12, 4
	add $9, $0, $12
	add $11, $0, $6
	addi $13, $13, -1
	
	bne $13, $0, walloop
	
	jr $31
	
nopeandar:	add $9, $0, $0
	add $10, $0, $0
	add $12, $0, $0
	
	lw $8, 8($15)
	add $21, $21, $8
	add $24, $21, $0
	
	lw $2, 28($15)
	bne $2, $0, guardp
	j fnopeandar	
guardp:	addi $2, $0, 20	
	jr $31
fnopeandar:	add $31, $0, $22
	jr $31
#==============================================================
#	Flicker do dano

#	PARA USAR A FUNCAO, COLOQUE NO $4 O VALOR DA MEM�RIA DE ONDE ELE DEVE COME�AR

dano:	
	add $18, $0, $31
	
	addi $5, $0, 0xffffff
	
	addi $6, $0, 11
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -2052
	
#============	Triangulo superior direito

	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, -64
	
	jal sequencia
	add $4, $0, $2
	
#============	Triangulo superior esquerdo

	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -8
	
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -8
	
	addi $6, $0, 1
	addi $7, $0, -4080
	
	jal sequencia
	add $4, $0, $2

#============ Copo virado superior esquerdo

	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
#============ Escadinha superior direita

	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, -2048
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 3016
	
#------------ Fim da coroinha
	
	addi $6, $0, 21
	addi $7, $0, 924
	
	jal sequencia
	add $4, $0, $2
	
#============ Triangulo da lateral esquerda
		
	addi $6, $0, 7
	addi $7, $0, 1000
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 6
	addi $7, $0, 1004
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
#------------ Seccao de preenchimento da lateral esquerdas	
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	addi $7, $0, 996
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 7
	addi $7, $0, 1004
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	addi $7, $0, 1012
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $4, $0, $2
	
#============ PERNINHA ESQUERDA DO CANTO INFERIOR
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagodwt
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2

#============ PERNA ESQUERDA
	
	addi $4, $4, 1020
	
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
#============ PERNA DIREITA

	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 6
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2

#============ PERNINHA DIREITA
	
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, -2052
	
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2

#============ LATERAL DIREITA
	
	addi $4, $4, -2056
	
	addi $6, $0, 3
	addi $7, $0, -1036
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -1040
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 6
	addi $7, $0, -1048
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -1040
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, -1036
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -1040
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, -1036
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -1040
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	addi $7, $0, -1044
	
	jal sequencia
	add $4, $0, $2
	
	add $31, $0, $18
	jr $31
		
#===================================================
#	FUNCAO DE COLISAO DE ATAQUE
		
#	$4 = Posicao de verificacao
#	$5 = Cor do dano
#	$6 = Quantas linhas
#	$7 = Quantas colunas

enedamage:	
	add $19, $0, $31

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
	
	
	add $20, $20, $0
	add $25, $20, $0
	
	addi $4, $20, -40
	addi $5, $0, 36
	addi $6, $0, 26
	jal apagarp
	
	add $4, $0, $20
	jal dano
	
	jal skudamage
	
	addi $4, $0, 25000
	jal timer
	
	addi $4, $20, -6224
	addi $5, $0, 38
	addi $6, $0, 30
	jal apagarp
	
	lw $9, 40($15) # PERDE VIDA
	addi $9, $9, -1
	
	sw $9, 40($15)
	addi $2, $0, 10
	
	add $31, $0, $19
	jr $31
#===================================================
#	FUNCAO DE COLISAO DE PAREDES DO TIRO
		
#	$4 = Posicao de verificacao
#	$5 = Cor que n�o pode passar
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
#================================================
#	Sprites invertidos do megaman
	
	
megaheadt:	
	add $19, $0, $31
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6 #ROUPA
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, -4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2052
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3064
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -6184
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 6
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 6144
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2052
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 4
	addi $7, $0, -8216
	
	jal sequencia
	add $24, $0, $2

#============ CAPACETE		
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2016
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Contorno
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 6
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 984
	
#------------ OLHOS
	
	add $4, $0, $24
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 0x1d61b5
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Olho
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000 #Olho
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2016
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xfffffff
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xfffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 3
	addi $7, $0, 1028
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $19
	jr $31
	
#============ A FUNCAO ACABA DEBAIXO DO QUEIXO MEGA

#===================================================
#	MEGA PRA ESQUERDA

megat:	
	add $18, $0, $31
	jal megaheadt
#============ BRACO DIREITO
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -3076
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2044
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -4116
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -3120
	
#============ BRACO ESQUERDO
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2036
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2036
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -4088
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 7
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 3044
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 7
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2028
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, -5180
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2044
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -28
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 0x1d61b5
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -32
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 996
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31	
		
#=================================================
#	MEGAPLEVE PRA ESQUERDA

megalevet:	
	add $18, $0, $31
	
	jal megaheadt

#============ BRACO DIREITO
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -3076
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2044
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -4116
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -3120
	
#============ BRACO ESQUERDO
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2036
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2036
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -4088
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 7
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 3044
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 7
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2028
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, -5180
	
	jal sequencia
	add $24, $0, $2
	
#============ PERNA ESQUERDA
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1028
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -20
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
#============ FIM MEGALEVET	

#===================================================
#	MEGAPACO1tT PRA ESQUERDA

megapaco1t:	
	add $18, $0, $31
	
	addi $24, $24, 2048
	jal megaheadt

#============ BARRIGA/BRACO DIREITO
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -4096
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -3080
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -2072
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2

#============ BRACO ESQUERDO
		
	addi $24, $24, -2116
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3056
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2	
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3056
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -2044
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============ PERNA ESQUERDA
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 12
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, -4096
	
	jal sequencia
	add $24, $0, $2

#============ PERNA DIREITA	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24 -1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24 -1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24 -1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2

	addi $24, $24 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2012
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
#============ FIM MEGAPACO1T

#===================================================
#	MEGAPACO2T PRA ESQUERDA

megapaco2t:	
	add $18, $0, $31
	jal megaheadt
	

#============ BARRIGA/BRACO DIREITO
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -4096
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, -1028
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2028
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
#============ BRACO ESQUERDO
	addi $24, $24, -5140
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
#============ PERNA DIREITA
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2

	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 2024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
		
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 5
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
	
#============ FIM MEGAPACO2T

#===================================================
#	MEGAPACO3T PRA ESQUERDA

megapaco3t:	
	
	add $18, $0, $31
	addi $24, $24, 2048
	jal megaheadt

#============ BARRIGA/BRACO ESQUERDO
	addi $24, $24, -1032
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2036
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -4
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1032
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1072
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 8
	addi $7, $0, -8176
	
	jal sequencia
	add $24, $0, $2

#============ BRACO DIREITO		
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 2048
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
#============ CUECA/PERNA DIREITA

	addi $24, $24, 984
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 980
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -32
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -3120
	
	jal sequencia
	add $24, $0, $2
	
#============ PERNA ESQUERDA
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
		
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1028
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -36
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 996
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
	
#============ FIM MEGAPACO3T

#===================================================
#	MEGAPULOT PRA ESQUERDA

megapulot:	
	add $18, $0, $31
	
	jal megaheadt
#============ BOCA
	addi $24, $24, -8
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, -2052
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xf0cd90
	addi $6, $0, 1
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1028
	
	jal sequencia
	add $24, $0, $2
	
#============ BRACO DIREITO
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
		
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -2056
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -2056
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, -2052
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, -1044
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, -1040
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, -88
	
	jal sequencia
	add $24, $0, $2
	
#============ BRACO ESQUERDO
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
		
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 2
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 3068
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	addi $24, $24, 1020
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
#============ BARRIGA

	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 8
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 11
	
	jal vertical
	add $24, $0, $2
	
#============ CUECA/PERNA ESQUERDA
	addi $24, $24, 2000
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2	
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 4
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, -52
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1000
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 5
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, -4084
	
	jal sequencia
	add $24, $0, $2

#============ PERNA DIREITA	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, -1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1004
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 6128
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
	
#============ FIM MEGAPULOT
	
#==============================================
#	MEGATIROT PRA ESQUERDA

megatirot:	
	add $18, $0, $31
	jal megaheadt
	
	
#============ BRACO DIREITO
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
	addi $24, $24, -6140
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1004
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1008
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1012
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, -8
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1016
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 1024
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $24, $0, $2
	
	addi $24, $24, 2040
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $24, $0, $2
	
#============ BRACO ESQUERDO
	addi $24, $24, -7252
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1000
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
		
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 984
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 0x47a6e6
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 980
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 0x1d61b5
	addi $7, $0, 2
	
	jal par
	add $24, $0, $2
	
	addi $24, $24, 4
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 8
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 980
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 8
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 5
	addi $7, $0, 984
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 4
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
#============= BARRIGA
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 7
	addi $7, $0, 996
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 7
	addi $7, $0, 996
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $24, $0, $2
		
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 5
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 996

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1

	jal diagodw
	add $24, $0, $2
	
	addi $24, $24, 992
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 6
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 1
	addi $7, $0, 984

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 976

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 2
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 3
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2	
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 4
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 1
	addi $7, $0, 976

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 4
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 8
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1

	jal diagodw
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x47a6e6
	addi $6, $0, 2
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 956

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 3
	addi $7, $0, 20

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 6
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 944

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 12
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x1d61b5
	addi $6, $0, 7
	addi $7, $0, 0

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 2

	jal vertical
	add $24, $0, $2
	
	addi $24, $24, 944
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 20

	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 20

	jal sequencia
	add $24, $0, $2
	
	add $31, $0, $18
	jr $31
	
#============= FIM MEGATIROT
apagar:	
	lui $8, 0x1001
	
	addi $10, $0, 32768
	addi $9, $0, 0x000000
	
apagte:	
	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -1
	
	bne $10, $0, apagte
	jr $31
voidm:	jr $31

#===============================
#	CENARIO 2

cenario2:	add $18, $0, $31
		
	lui $8, 0x1001
	addi $9, $0, 0x00001e
	addi $10, $0, 32768
fundo2:	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -1
	bne $10, $0, fundo2
	
	lui $4, 0x1001
	
	
#============ TETO	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 256
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x0508ac
	addi $6, $0, 256
	addi $7, $0, 55296
	
	jal sequencia
	add $4, $0, $2

#============ TOPO DO PISO DO MEIO		
	addi $5, $0, 0x6200b8
	addi $6, $0, 89
	addi $7, $0, 668
	
	jal sequencia
	add $4, $0, $2
	
#=========== PISO DO MEIO
	addi $13, $0, 13
	addi $5, $0, 0x8000f0
loopismid:	
	add $6, $0, $13
	
	jal vertical
	add $4, $0, $2
	
	addi $13, $13, -1
	bne $13, $0, loopismid
	
	addi $6, $0, 13
	addi $7, $0, 42
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x8000f0
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x8000f0
	addi $6, $0, 13
	addi $7, $0, 27
	
	jal diagodwt
	add $4, $0, $2
	
#============ RAMPINHA
	addi $5, $0, 0x6200b8
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2	
	
	addi $5, $0, 0x44009c
	addi $6, $0, 13
	addi $7, $0, 2
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
#------------ Meiuca	

	addi $4, $4, 1016
	
	addi $5, $0, 0x44009c
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x44009c
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, 1016
	
	addi $5, $0, 0x44009c
	addi $6, $0, 12
	addi $7, $0, 2
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x44009c
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x44009c
	addi $6, $0, 13
	addi $7, $0, 2
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x44009c
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 1016
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x44009c
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x44009c
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
#============ PISO EMBAIXO
	addi $6, $0, 163
	addi $7, $0, 368
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x8000f0
	addi $6, $0, 13
	addi $7, $0, 163
	
	jal diagodwt
	add $4, $0, $2
	
	addi $13, $0, 13
	addi $5, $0, 0x8000f0
loopismid2:	
	add $6, $0, $13
	addi $7, $0, 1
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, 1020
	addi $13, $13, -1
	bne $13, $0, loopismid2
	
#============ CONTORNO DOS PISOS
	addi $4, $4, -7164
#------------ Finge que e um loop	
	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 17
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
		
	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 17
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 17
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 10
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
#____________	Finge que foi um loop

	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 5
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 1016
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 5
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2

#------------ Decendo para baixo		
	addi $4, $4, 3088

	addi $13, $0, 7
			
fing2:	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 20
	
	jal verticais
	add $4, $0, $2
	
#------------ Finge que e um loop parte 2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2

	addi $13, $13, -1	
	bne $13, $0, fing2
	
#============ FINGE QUE FOI UM LOOP DENOVO KEKEKE	
	addi $5, $0, 0xcdbef7
	addi $6, $0, 2
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
#============ Contorno/sombra dos tijolos
	
	addi $4, $4, -3072
	addi $5, $0, 0x1810ac
	addi $6, $0, 40
	add $7, $0, 75
	
	jal verticais
	add $4, $0, $2
	
	
	addi $4, $4, 1024
	addi $6, $0, 79
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	addi $6, $0, 78
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	addi $6, $0, 77
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	addi $6, $0, 76
	addi $7, $0, 178
	
	jal verticais
	add $4, $0, $2
	
#============ Tijolos
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 10
	add $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
		
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2

#----------- Interior do tijolo		
	addi $4, $4, 976
	
#____________ TIJOLO INCOMPLETO	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	add $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 22
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 984	
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 11
	addi $7, $0, -24560
	
	jal sequencia	
	add $4, $0, $2

#____________ FIM INCOMPLETO
		
#____________ TIJOLO COMPLETO
	
	addi $4, $4, 2048
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 23	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 26
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 916
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 29
	addi $7, $0, -24564
	
	jal sequencia	
	add $4, $0, $2
	
#___________ Tij 2
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 24
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 932
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 24
	addi $7, $0, -24560
	
	jal sequencia	
	add $4, $0, $2
		
#============ Sequencia de tijolos
	addi $13, $0, 5
		
looptij:	
	addi $4, $4, 2048
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 23	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 26
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 916
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 29
	addi $7, $0, -24564
	
	jal sequencia	
	add $4, $0, $2
	
	addi $13, $13, -1
	bne $13, $0, looptij

#____________	Tijolinho
		
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 22
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -4
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	addi $7, $0, 1
	
	jal diagoupt			
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 21	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 21496
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 1000
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 7
	addi $7, $0, -24556
	
	jal sequencia	
	add $4, $0, $2
	
	addi $4, $4, 2048
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 23	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, 25600
#============ SEGUNDA LINHA DE TIJOLOS
	addi $13, $0, 7
		
looptij2:	
	addi $4, $4, 2048
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 22	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xa8e4fc# Sombra do tijolo	
	addi $6, $0, 23	
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1028
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 26
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 916
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 29
	addi $7, $0, -24564
	
	jal sequencia	
	add $4, $0, $2
	
	addi $13, $13, -1
	bne $13, $0, looptij2
	
#------------ Tijolo incompletpo

	
#____________ TIJOLO INCOMPLETO	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 24
	add $7, $0, 22
	
	jal verticais
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodw			
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 23
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 20	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 20476
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 3	
	addi $7, $0, 1
	
	jal diagodwt			
	add $4, $0, $2
	
	addi $4, $4, -1040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 2	
	
	jal vertical	
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 1
	addi $7, $0, 940
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo	
	addi $6, $0, 22
	addi $7, $0, -56300
	
	jal sequencia	
	add $4, $0, $2
	
#============= TIJOLINHOZINHOS
	addi $13, $0, 4
	
tijinloop:
	addi $6, $0, 10
	addi $7, $0, 980
	
	jal sequencia	
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo
	addi $6, $0, 1
	addi $7, $0, 980
	
	jal sequencia	
	add $4, $0, $2
	
	addi $5, $0, 0x76b0fc# Sombra do tijolo
	addi $6, $0, 10
	addi $7, $0, -2004
	
	jal sequencia	
	add $4, $0, $2
	
	addi $13, $13, -1
	bne $13, $0, tijinloop
	
	
#==================
#	FUNDO DO MAPA	
	addi $4, $4, -66760
	addi $13, $0, 4
#------------ LINHA 1
muroc2:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -16200
	
	addi $13, $13, -1
	
	bne $13, $0, muroc2
#============= De novo
	addi $4, $4, 17388
	
	addi $13, $0, 5
#------------ LINHA 1
muroc22:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -16200
	
	addi $13, $13, -1
	
	bne $13, $0, muroc22
	
	
	lui $4, 0x1001
	addi $5, $0, 0xa8e4fc
	addi $6, $0, 70
	addi $7, $0, 5
	
	jal verticais
	
	add $31, $0, $18
	jr $31
	
cenario1: 	add $18, $0, $31
	lui $8, 0x1001
	addi $9, $0, 0x00001e
	addi $10, $0, 32768
fundo:	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -1
	bne $10, $0, fundo
	# 485054 Piso 3d
	# 242424 Tijolo do fundo
	# 828282 Pilar
	# 212121 Entre pilares
	# 2e2e2e Sombra do pilar
	# b0b0b0 Piso do pilar
	
	
	
	lui $4, 0x1001

	add $5, $0, 0x4850
	sll $5, $5, 8
	ori $5, $5, 0x54
	addi $6, $0, 512	
	addi $7, $0, 972

	jal sequencia	
	add $4, $0, $2

#==============TETO CINZA 
	
#============== PRIMEIRO PILAR	
	add $5, $0, 0x8282
	sll $5, $5, 8
	ori $5, $5, 0x82
	addi $6, $0, 21
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 20
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 19
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 18
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 17
	
	jal vertical
	add $4, $0, $2
	
#============== PULA PARA UMA SEQUï¿½NCIA DE DIAGONAIS PARA O PISO DO PRIMEIRO PILAR
	addi $4, $4, 22432
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== SOMBRA NA FRENTE DO PISO DO PRIMEIRO PILAR
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO PRIMEIRO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2

#============== SEGUNDO PILAR ABAIXO DO PRIMEIRO
	
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= SEGUNDO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== SEGUNDO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== SEGUNDO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO SEGUNDO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2

#=============== TERCEIRO PILAR
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= TERCEIRO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== TERCEIRO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== TERCEIRO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO TERCEIRO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2
	
#============== QUARTO PILAR
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= QUARTO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== QUARTO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== QUARTO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO QUARTO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2
	
#============== ULTIMO PILAR QUE Nï¿½O PODE ENTRAR NO VETOR DE CLONAGEM/ESPELHADO
	 
	add $5, $0, 0x828282
	addi $6, $0, 5
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= QUARTO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2

#============== PISO CENï¿½RIO
	
	lui $4, 0x1001
	addi $4, $4, 32768
	
#=============== Borda superior DO PISO SUPERIOR
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 90
	addi $7, $0, 664
	
	jal sequencia
	add $4, $0, $2
	
#============== LAGE DO PISO SUPERIOR
	 
	add $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 43
	
	jal verticais
	add $4, $0, $2
#============== DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 10
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 6
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
#============== LINHA DE CORTE DA LAGE DO PISO SUPERIOR
	addi $4, $4, 12236
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#=============	DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	addi $4, $4, -1020
	 
	addi $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 27
	
	jal diagoup
	add $4, $0, $2
	
#============= FINAL DAS DIAGONAIS DO PISO SUPERIOR
	
	addi $4, $4, 1020
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xfffff7
	addi $6, $0, 13
	addi $7, $0, 5
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== BRILHO DO CHï¿½O DO PISO SUPERIOR 
	addi $4, $4, -312
	 
	addi $5, $0, 0x828282
	addi $6, $0, 41
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	 
	addi $5, $0, 0x828282
	addi $6, $0, 27
	addi $7, $0, 732
	
	jal sequencia
	add $4, $0, $2
	
#=============== FIM DO PISO SUPERIOR COM A BORDA INFERIOR DELE
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 79
	addi $7, $0, 716
	
	jal sequencia
	add $4, $0, $2
	
#============	MURO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x242424
	addi $6, $0, 81
	addi $7, $0, 25
	
	jal verticais
	add $4, $0, $2

#============== lINHAS DIAGONAIS DO MURO DEBAIXO DO PISO SUPERIOR
	addi $4, $4, 27548
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 24
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 32
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== lINHAS VERTICAIS DO MURO DEBAIXO DO PISO SUPERIOR	
	addi $4, $4, -81936
	
	  #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 40
	
	  #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $4, $0, $2
	
#============== CONTORDO AO REDOR DO PILAR DEBAIXO DO PISO SUPERIOR
	addi $4, $4, 96
	
	  
	add $5, $0, 0x212121
	addi $6, $0, 39
	
	jal vertical
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR	
	
	 
	addi $5, $0, 0x212121
	addi $6, $0, 16
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x141414
	addi $6, $0, 23
	addi $7, $0, 6
	
	jal verticais
	add $4, $0, $2
	
	 
	addi $5, $0, 0x141414
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $4, $0, $2
	
#============== PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x3d3d3d
	addi $6, $0, 22
	addi $7, $0, 4
	
	jal verticais
	add $4, $0, $2

#============== PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $4, $4, -104
	 
	add $5, $0, 0x828282
	addi $6, $0, 38
	addi $7, $0, 7
	
	jal verticais
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR

	  #Linha decendo
	add $5, $0, 0x212121
	addi $6, $0, 38
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 38
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 37
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 36
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 35
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 34
	
	jal vertical
	add $4, $0, $2

#============== CHï¿½O DA QUEDA DO PISO PRINCIPAL
	addi $4, $4, 26624
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 9
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== APOIO DO PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $4, $4, 6084
	 
	addi $5, $0, 0x212121
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

#============== APOIO DO CHï¿½O DA QUEDA DO PISO PRINCIPAL
	 
	addi $5, $0, 0x1f1f1f
	addi $6, $0, 15
	addi $7, $0, 2
	
	jal diagoup
	add $4, $0, $2
#============== APOIO DO PISO PRINCIPAL NA PARTE SUPERIOR	
	addi $4, $4, -15348
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -3064
	
	  # A LINHA RETA DO PONTO SUPERIOR DO SUPORTE
	add $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 183
	
	jal verticais
	add $4, $0, $2
	
#============== PEQUENA CONEXï¿½O COM O CHï¿½O DA QUEDA
	addi $4, $4, 16596
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== PISO PRINCIPAL
	 
	addi $5, $0, 0x485054
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

	 
	addi $5, $0, 0x485054
	addi $6, $0, 16
	addi $7, $0, 175
	
	jal diagoup
	add $4, $0, $2
	
#============== SUPORTE INFERIOR DO PISO PRINCIPAL
	addi $4, $4, 272 
	
	 
	addi $5, $0, 0x828282
	addi $6, $0, 188
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============= COLUNA DO PISO PRINCIPAL
	addi $4, $4, -756
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 40
	addi $7, $0, 189
	
	jal verticais
	add $4, $0, $2

#============== DIAGONAIS Nï¿½O Tï¿½O LEGAIS FORA DO RANGE
	addi $4, $4, -1024
	 
	addi $5, $0, 0x242424
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 14
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 11
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== MALDITO TRIANGULO FORA DO RANGE DIAGONAL
	addi $4, $4, -7140
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA
	addi $4, $4, 7108
		
	  
	add $5, $0, 0x242424
	addi $6, $0, 41
	addi $7, $0, 4
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 24
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2

#============== TRIANGULO INVERTIDO MALTIDO FORA DO RANGE DIAGONAL
	addi $4, $4, 24532
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 6
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA DE NOVO  >:  (	!!!!!!!!!!!!!!!
	addi $4, $4, 9188
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 6
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2

#============== TIJOLOS DA COLUNA
	addi $4, $4, -33576
	
	addi $12, $0, 13
	addi $13, $0, 4
	
loopmain:	beq $13, $0, muro

loop:	beq $12, $0, loopm
	  
	add $5, $0, 0x828282
	addi $6, $0, 7
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 12
	addi $12, $12, -1
	j loop
	
loopm:	addi $13, $13, -1
	addi $12, $0, 13
	addi $4, $4, 9512
	j loopmain
muro:	lui $4, 0x1001

	addi $4, $4, 10300
	
	addi $13, $0, 4
#------------ LINHA 1
muroc1:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -16200
	
	addi $13, $13, -1
	bne $13, $0, muroc1
	addi $4, $4 32188
	addi $13, $0, 3
#------------ LINHA 1
muroc12:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	addi $4, $4, -16200
	addi $13, $13, -1
	bne $13, $0, muroc12
	
	add $31, $0, $18
	jr $31
	
#=============================================	
#	Cenario1 quando o inimigo morre
	
cenario1g: 	add $18, $0, $31
	lui $8, 0x1001
	addi $9, $0, 0x00001e
	addi $10, $0, 32768
fundog:	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -1
	bne $10, $0, fundog
	# 485054 Piso 3d
	# 242424 Tijolo do fundo
	# 828282 Pilar
	# 212121 Entre pilares
	# 2e2e2e Sombra do pilar
	# b0b0b0 Piso do pilar
	
	
	
	lui $4, 0x1001

	add $5, $0, 0x4850
	sll $5, $5, 8
	ori $5, $5, 0x54
	addi $6, $0, 512	
	addi $7, $0, 972

	jal sequencia	
	add $4, $0, $2

#==============TETO CINZA 
	
#============== PRIMEIRO PILAR	
	add $5, $0, 0x8282
	sll $5, $5, 8
	ori $5, $5, 0x82
	addi $6, $0, 21
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 21
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 20
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 19
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 18
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 17
	
	jal vertical
	add $4, $0, $2
	
#============== PULA PARA UMA SEQUï¿½NCIA DE DIAGONAIS PARA O PISO DO PRIMEIRO PILAR
	addi $4, $4, 22432
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== SOMBRA NA FRENTE DO PISO DO PRIMEIRO PILAR
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO PRIMEIRO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2

#============== SEGUNDO PILAR ABAIXO DO PRIMEIRO
	
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= SEGUNDO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== SEGUNDO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== SEGUNDO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO SEGUNDO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2

#=============== TERCEIRO PILAR
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= TERCEIRO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== TERCEIRO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== TERCEIRO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO TERCEIRO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2
	
#============== QUARTO PILAR
	 
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= QUARTO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $4, $0, $2

#============== QUARTO PILAR PISO
	addi $4, $4, 29600
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== QUARTO PILAR SOBRA DO PISO
	addi $4, $4, 928
	 
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#=============== SOMBRA DO PISO DO QUARTO PILAR 
	addi $4, $4, 972
	 
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2
	
#============== ULTIMO PILAR QUE Nï¿½O PODE ENTRAR NO VETOR DE CLONAGEM/ESPELHADO
	 
	add $5, $0, 0x828282
	addi $6, $0, 5
	addi $7, $0, 8
	
	jal verticais
	add $4, $0, $2
	
#============= QUARTO PILAR SOMBRA
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2

#============== PISO CENï¿½RIO
	
	lui $4, 0x1001
	addi $4, $4, 32768
	
#=============== Borda superior DO PISO SUPERIOR
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 90
	addi $7, $0, 664
	
	jal sequencia
	add $4, $0, $2
	
#============== LAGE DO PISO SUPERIOR
	 
	add $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 43
	
	jal verticais
	add $4, $0, $2
#============== DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 10
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 6
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	  #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
#============== LINHA DE CORTE DA LAGE DO PISO SUPERIOR
	addi $4, $4, 12236
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#=============	DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	addi $4, $4, -1020
	 
	addi $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 27
	
	jal diagoup
	add $4, $0, $2
	
#============= FINAL DAS DIAGONAIS DO PISO SUPERIOR
	
	addi $4, $4, 1020
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0xfffff7
	addi $6, $0, 13
	addi $7, $0, 5
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== BRILHO DO CHï¿½O DO PISO SUPERIOR 
	addi $4, $4, -312
	 
	addi $5, $0, 0x828282
	addi $6, $0, 41
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	 
	addi $5, $0, 0x828282
	addi $6, $0, 27
	addi $7, $0, 732
	
	jal sequencia
	add $4, $0, $2
	
#=============== FIM DO PISO SUPERIOR COM A BORDA INFERIOR DELE
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 79
	addi $7, $0, 716
	
	jal sequencia
	add $4, $0, $2
	
#============	MURO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x242424
	addi $6, $0, 81
	addi $7, $0, 25
	
	jal verticais
	add $4, $0, $2

#============== lINHAS DIAGONAIS DO MURO DEBAIXO DO PISO SUPERIOR
	addi $4, $4, 27548
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 9212
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 24
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 32
	
	 
	addi $5, $0, 0x3b3b47
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== lINHAS VERTICAIS DO MURO DEBAIXO DO PISO SUPERIOR	
	addi $4, $4, -81936
	
	  #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 40
	
	  #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $4, $0, $2
	
#============== CONTORDO AO REDOR DO PILAR DEBAIXO DO PISO SUPERIOR
	addi $4, $4, 96
	
	  
	add $5, $0, 0x00001e
	addi $6, $0, 20
	
	jal vertical
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR	
	
	 
	addi $5, $0, 0x00001e
	addi $6, $0, 16
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x00001e
	addi $6, $0, 23
	addi $7, $0, 6
	
	jal verticais
	add $4, $0, $2
	
	 
	addi $5, $0, 0x00001e
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $4, $0, $2
	
#============== PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	 
	add $5, $0, 0x00001e
	addi $6, $0, 22
	addi $7, $0, 4
	
	jal verticais
	add $4, $0, $2

#============== PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $4, $4, -104
	 
	add $5, $0, 0x00001e
	addi $6, $0, 38
	addi $7, $0, 7
	
	jal verticais
	add $4, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR

	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 38
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 38
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 37
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 36
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 35
	
	jal vertical
	add $4, $0, $2
	
	  #Linha decendo
	add $5, $0, 0x00001e
	addi $6, $0, 34
	
	jal vertical
	add $4, $0, $2

#============== CHï¿½O DA QUEDA DO PISO PRINCIPAL
	addi $4, $4, 26624
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 9
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2

#============== APOIO DO PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $4, $4, 6084
	 
	addi $5, $0, 0x212121
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

#============== APOIO DO CHï¿½O DA QUEDA DO PISO PRINCIPAL
	 
	addi $5, $0, 0x1f1f1f
	addi $6, $0, 15
	addi $7, $0, 2
	
	jal diagoup
	add $4, $0, $2
#============== APOIO DO PISO PRINCIPAL NA PARTE SUPERIOR	
	addi $4, $4, -15348
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -1032

##============================================
##============================================
##	 CUNIFORMES FECAIS	REGIAO ONDE ALTEREI NO CENARIO1 AlEM DE OUTRAS CORES
	addi $5, $0, 0x474747
	addi $6, $0, 18
	addi $7, $0, 2
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, 1024
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -8
############# CUNIFORMES FECAIS
	addi $5, $0, 0x3d3d3d # CUNIFORMES FECAIS
	addi $6, $0, 14
	addi $7, $0, 10
	
	jal diagodwt
	add $4, $0, $2
	addi $4, $4, -32
	
	addi $4, $4, 1020
	
	 
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
############ 	CUNIFORMES FECAIS	
	addi $4, $4 -2044
	

	addi $5, $0, 0x474747
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 2040
	
	addi $4, $4, -3064
	
	  # A LINHA RETA DO PONTO SUPERIOR DO SUPORTE
	add $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 183
	
	jal verticais
	add $4, $0, $2
	
#============== PEQUENA CONEXï¿½O COM O CHï¿½O DA QUEDA
	addi $4, $4, 16596
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== PISO PRINCIPAL
	 
	addi $5, $0, 0x485054
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2

	 
	addi $5, $0, 0x485054
	addi $6, $0, 16
	addi $7, $0, 175
	
	jal diagoup
	add $4, $0, $2
	
#============== SUPORTE INFERIOR DO PISO PRINCIPAL
	addi $4, $4, 272 
	
	 
	addi $5, $0, 0x828282
	addi $6, $0, 188
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============= COLUNA DO PISO PRINCIPAL
	addi $4, $4, -756
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 40
	addi $7, $0, 189
	
	jal verticais
	add $4, $0, $2

#============== DIAGONAIS Nï¿½O Tï¿½O LEGAIS FORA DO RANGE
	addi $4, $4, -1024
	 
	addi $5, $0, 0x242424
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 14
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 11
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== MALDITO TRIANGULO FORA DO RANGE DIAGONAL
	addi $4, $4, -7140
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	 
	addi $5, $0, 0x242424
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA
	addi $4, $4, 7108
		
	  
	add $5, $0, 0x242424
	addi $6, $0, 41
	addi $7, $0, 4
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 24
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2

#============== TRIANGULO INVERTIDO MALTIDO FORA DO RANGE DIAGONAL
	addi $4, $4, 24532
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 6
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 2
	
	jal vertical
	add $4, $0, $2
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA DE NOVO  >:  (	!!!!!!!!!!!!!!!
	addi $4, $4, 9188
	
	  
	add $5, $0, 0x242424
	addi $6, $0, 6
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2

#============== TIJOLOS DA COLUNA
	addi $4, $4, -33576
	
	addi $12, $0, 13
	addi $13, $0, 4
	
loopmaing:	beq $13, $0, murog

loopg:	beq $12, $0, loopmg
	  
	add $5, $0, 0x828282
	addi $6, $0, 7
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 12
	addi $12, $12, -1
	j loopg
	
loopmg:	addi $13, $13, -1
	addi $12, $0, 13
	addi $4, $4, 9512
	j loopmaing
murog:	lui $4, 0x1001

	addi $4, $4, 10300
	
	addi $13, $0, 4
#------------ LINHA 1
muroc1g:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -16200
	
	addi $13, $13, -1
	bne $13, $0, muroc1g
	addi $4, $4 32188
	addi $13, $0, 3
#------------ LINHA 1
muroc12g:	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8100
	
	jal sequencia
	add $4, $0, $2

#------------ LINHA 2		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, -2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2052
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 8
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 12
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8
	
	jal sequencia
	add $4, $0, $2
		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 8104
	
	jal sequencia
	add $4, $0, $2

#------------- LINHA 3		
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 16
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 4
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 4
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 2
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	
	addi $5, $0, 0x6200b8
	addi $6, $0, 1
	addi $7, $0, 4
	
	jal sequencia
	add $4, $0, $2
	addi $4, $4, -16200
	addi $13, $13, -1
	bne $13, $0, muroc12g
	
	add $31, $0, $18
	jr $31
	
#	Fim de cenario da vitoria	
#==========================================	
			
#==================================================
#	Cenario um depois que ganha	
#==================================================
#	Identificador da nota da musica tema
mainsound:	lw $9, 164($15)
	beq $9, 5, voidm
	lw $8, 200($15)
	addi $8, $8, -1
	sw $8, 200($15)
	lw $8, 200($15)
	bne $8, $0, voidm
	addi $6, $0, 105 #conjunto / piano 2, 3, 5, 7, 86, 97,
	addi $7, $0, 100 #volume
maintheme:	lw $10, 204($15)
	beq $10, $0, persia2
	beq $10, 2, persia3
	beq $10, 3, persia4
	beq $10, 4, persia5
	beq $10, 5, persia6
	beq $10, 6, persia7
	beq $10, 7, persia8
	beq $10, 8, persia9
	beq $10, 9, persia10
	beq $10, 10, persia11
	beq $10, 11, persia12
	beq $10, 12, persia13
	beq $10, 13, persia14
	beq $10, 14, persia15
	beq $10, 15, persia16
	beq $10, 16, persia17
	beq $10, 17, persia18
	beq $10, 18, persia19
	beq $10, 19, persia20
	beq $10, 20, persia21
	beq $10, 21, persia22
	beq $10, 22, persia23
	beq $10, 23, persia24
	beq $10, 24, persia25
	beq $10, 25, persia26
	beq $10, 26, persia27
	beq $10, 27, persia28
	beq $10, 28, persia29
	beq $10, 29, persia30
	beq $10, 30, persia31
	beq $10, 31, persia32
	beq $10, 32, persia33
	beq $10, 33, persia34
	beq $10, 34, persia35
	beq $10, 35, persia36
	beq $10, 36, persia37
	beq $10, 37, persia38
	beq $10, 38, persia39
	beq $10, 39, persia40
	beq $10, 40, persia41
	beq $10, 41, persia42
	beq $10, 42, persia43
	beq $10, 43, persia44
	beq $10, 44, persia45
	beq $10, 45, persia46
	beq $10, 46, persia47
	beq $10, 47, persia48
	beq $10, 48, persia49
	beq $10, 49, persia50
	beq $10, 50, persia51
	beq $10, 51, persia52
	beq $10, 52, persia53
	beq $10, 53, persia54
	beq $10, 54, persia55
	beq $10, 55, persia56
	beq $10, 56, persia57
	beq $10, 57, persia58
	beq $10, 58, persia59
	beq $10, 59, persia60
	beq $10, 60, persia61
	beq $10, 61, persia62
	beq $10, 62, persia63
	beq $10, 63, persia64
	beq $10, 64, persia65
	beq $10, 65, persia66
	beq $10, 66, persia67
	beq $10, 67, persia68
	beq $10, 68, persia69
	beq $10, 69, persia70
	beq $10, 70, persia71
	beq $10, 71, persia72
	beq $10, 72, persia73
	beq $10, 73, persia74
	beq $10, 74, persia75
	beq $10, 75, persia76
	beq $10, 76, persia77
	beq $10, 77, persia78
	beq $10, 78, persia79
	beq $10, 79, persia80
	beq $10, 80, persia81
	beq $10, 81, persia82
	beq $10, 82, persia83
	beq $10, 83, persia84
	beq $10, 84, persia85
	beq $10, 85, persia86
	beq $10, 86, persia87
	beq $10, 87, persia88
	beq $10, 88, persia89
	beq $10, 89, persia90
	beq $10, 90, persia91
	beq $10, 91, persia92
	beq $10, 92, persia93
	beq $10, 93, persia94
	beq $10, 94, persia95
	beq $10, 95, persia96
	beq $10, 96, persia97
	beq $10, 97, persia98
	beq $10, 98, persia99
	beq $10, 99, persia100
	beq $10, 100, persia101
	beq $10, 101, persia102
	beq $10, 102, persia103
	beq $10, 103, persia104
	beq $10, 104, persia105
	beq $10, 105, persia106
	beq $10, 106, persia107
	beq $10, 107, persia108
	beq $10, 108, persia109
	beq $10, 109, persia110
	beq $10, 110, persia111
	beq $10, 111, persia112
	beq $10, 112, persia113
	beq $10, 113, persia114
	beq $10, 114, persia115
	beq $10, 115, persia116
	beq $10, 116, persia117
	beq $10, 117, persia118
	beq $10, 118, persia119
	beq $10, 119, persia120
	beq $10, 120, persia121
	beq $10, 121, persia122
	beq $10, 122, persia123
	beq $10, 123, persia124
	beq $10, 124, persia125
	beq $10, 125, persia126
	beq $10, 126, persia127
	beq $10, 127, persia128
	beq $10, 128, persia129
	beq $10, 129, persia130
	beq $10, 130, persia131
	beq $10, 131, persia132
	beq $10, 132, persia133
	beq $10, 133, persia134
	beq $10, 134, persia135
	beq $10, 135, persia136
	beq $10, 136, persia137
	beq $10, 137, persia138
	beq $10, 138, persia139
	beq $10, 139, persia140
	beq $10, 140, persia141
	beq $10, 141, persia142
	beq $10, 142, persia143
	beq $10, 143, persia144
	beq $10, 144, persia145
	beq $10, 145, persia146
	beq $10, 146, persia147
	beq $10, 147, persia148
	beq $10, 148, persia149
	beq $10, 149, persia150
	beq $10, 150, persia151
	beq $10, 151, persia152
	beq $10, 152, persia153
	beq $10, 153, persia154
	beq $10, 154, persia155
	beq $10, 155, persia156
	beq $10, 156, persia157
	beq $10, 157, persia158
	beq $10, 158, persia159
	beq $10, 159, persia160


	jr $31
 
#	musica TEMA2	
persia2:	addi $6, $0, 2 #conjunto / piano 2, 3, 5, 7, 86, 97,  
	addi $7, $0, 100 #volume
	addi $4, $0, 30 #F#1
	addi $5, $0, 800		#0:54
	addi $2, $0, 31
	syscall
	
	addi $10, $0, 2
 	sw $10, 204($15)
 	
	addi $4, $0, 80 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia3:	
	addi $4, $0, 37 #C#2
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall 
	
	addi $10, $0, 3
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia4:	addi $4, $0, 37 #C#2
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 4
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia5:	addi $4, $0, 37 #C#2
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 5
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia6:	addi $4, $0, 38 #D2
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 6
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia7:	addi $4, $0, 37 #C#2
	addi $5, $0, 600
	addi $2, $0, 31		#0:57
	syscall 
	
	addi $10, $0, 7
	sw $10, 204($15)
 	
	addi $4, $0, 60 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia8:	addi $4, $0, 37 #C#2
	addi $5, $0, 600
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 8
	sw $10, 204($15)
 	
	addi $4, $0, 60 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
	#tentar colocar 2 notas ao mesmo tempo
persia9:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 55#G3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 9
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia10:	addi $4, $0, 49 #C#3
	addi $5, $0, 1000
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 54 #F#3
	addi $5, $0, 1000
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 10
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia11:	addi $4, $0, 55 #F#3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 11
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia12:	addi $4, $0, 58 #F#3
	addi $5, $0, 100
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 12
	sw $10, 204($15)
 	
	addi $4, $0, 10 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia13:	addi $4, $0, 55 #F#3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 13
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia14:	addi $4, $0, 54 #F#3
	addi $5, $0, 1500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 14
	sw $10, 204($15)
 	
	addi $4, $0, 49 #F#3
	addi $5, $0, 1500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia15:	addi $4, $0, 61 #C#4
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 55 #F#3
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 15
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia16:	addi $4, $0, 59 #B3
	addi $5, $0, 900
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 54 #B3
	addi $5, $0, 900
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 16
	sw $10, 204($15)
 	
	addi $4, $0, 90 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia17:	addi $4, $0, 60 #C4
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 17
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia18:	addi $4, $0, 63 #C4
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 18
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia19:	addi $4, $0, 60 #C4
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 19
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia20:	addi $4, $0, 59 #B3
	addi $5, $0, 1500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 54 #B3
	addi $5, $0, 1500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 20
	sw $10, 204($15)
 	
	addi $4, $0, 157 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia21:	addi $4, $0, 54 #B3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 47 #B3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:15s
	syscall
	
	addi $10, $0, 21
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia22:	addi $4, $0, 55 #B3
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 22
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia23:	addi $4, $0, 58 #B3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 23
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia24:	addi $4, $0, 55 #B3
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 24
	sw $10, 204($15)
 		
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia25:	addi $4, $0, 54 #B3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 50 #B3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 25
	sw $10, 204($15)
 		
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia26:	addi $4, $0, 58 #A#3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 26
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia27:	addi $4, $0, 62 #A#3
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 27
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia28:	addi $4, $0, 58 #A#3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 28
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia29:	addi $4, $0, 54 #D3
	addi $5, $0, 500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 29
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia30:	addi $4, $0, 54 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 30
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia31:	addi $4, $0, 58 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 31
	sw $10, 204($15)
 		
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia32:	addi $4, $0, 54 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 32
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia33:	addi $4, $0, 50 #D3
	addi $5, $0, 500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 33
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia34:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 34
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia35:	addi $4, $0, 54 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 35
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia36:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 36
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia37:	addi $4, $0, 47 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:21s
	syscall
	
	addi $4, $0, 23 #B0
	addi $5, $0, 800
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 37
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia38:	addi $4, $0, 46 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 38
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia39:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 39
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia40:	addi $4, $0, 46 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 40
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia41:	addi $4, $0, 42 #D3
	addi $5, $0, 500
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 23 #B0
	addi $5, $0, 500
	addi $2, $0, 31		#0:23s
	syscall
	
	addi $10, $0, 41
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia42:	addi $4, $0, 42 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 42
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia43:	addi $4, $0, 46 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 43
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia44:	addi $4, $0, 42 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 44
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia45:	addi $4, $0, 38 #D3
	addi $5, $0, 400
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 45
	sw $10, 204($15)
 	
	addi $4, $0, 40 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia46:	addi $4, $0, 42 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 46
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia47:	addi $4, $0, 38 #D3
	addi $5, $0, 200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 47
	sw $10, 204($15)
 	
	addi $4, $0, 20 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia48:	addi $4, $0, 35 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 23 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 48
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia49:	addi $4, $0, 61 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $4, $0, 55 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 49
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia50:	addi $4, $0, 58 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 50
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia51:	addi $4, $0, 61 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 51
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia52:	addi $4, $0, 58 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:57
	syscall
	
	addi $10, $0, 52
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia53:	addi $4, $0, 59 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:57
	syscall
	
	
	addi $4, $0, 54 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 53
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia54:	addi $4, $0, 42 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 54
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia55:	addi $4, $0, 47 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 55
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia56:	addi $4, $0, 52 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 56
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia57:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 57
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia58:	addi $4, $0, 47 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 58
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia59:	addi $4, $0, 42 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 59
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia60:	addi $4, $0, 47 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 60
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia61:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 61
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia62:	addi $4, $0, 55 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 62
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia63:	addi $4, $0, 54 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 63
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia64:	addi $4, $0, 50 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 64
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia65:	addi $4, $0, 47 #D3
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 65
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia66:	addi $4, $0, 49 #C#3
	addi $5, $0, 120
	addi $2, $0, 31		#0:32s
	syscall
	
	addi $10, $0, 66
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia67:	addi $4, $0, 54 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 67
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia68:	addi $4, $0, 58 #D3
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 68
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia69:	addi $4, $0, 59 #D3
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 47 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 69
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia70:	addi $4, $0, 53 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 48 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 70
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia71:	addi $4, $0, 52 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 47 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 71
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia72:	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 72
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia73:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 73
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia74:	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 74
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia75:	addi $4, $0, 52 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 47 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 75
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia76:	addi $4, $0, 52 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 58 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $10, $0, 76
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia77:	addi $4, $0, 57 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:30s
	syscall
	
	addi $4, $0, 52 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 77
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia78:	addi $4, $0, 58 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 78
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia79:	addi $4, $0, 61 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 79
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia80:	addi $4, $0, 58 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 80
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia81:	addi $4, $0, 57 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 52 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 81
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia82:	addi $4, $0, 52 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 45 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 82
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia83:	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 83
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia84:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 84
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia85:	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 85
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia86:	addi $4, $0, 52 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 48 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 86
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia87:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 87
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia88:	addi $4, $0, 60 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 88
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia89:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 89
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia90:	addi $4, $0, 52 #B2
	addi $5, $0, 600
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 90
	sw $10, 204($15)
 	
	addi $4, $0, 60 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia91:	addi $4, $0, 52 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 91
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia92:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 92
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia93:	addi $4, $0, 52 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 93
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia94:	addi $4, $0, 48 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 28 #E1
	addi $5, $0, 500
	addi $2, $0, 31		#0:48s
	syscall
	
	addi $10, $0, 94
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia95:	addi $4, $0, 48 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 95
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia96:	addi $4, $0, 52 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 96
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia97:	addi $4, $0, 48 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 97
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia98:	addi $4, $0, 45 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 21 #B2
	addi $5, $0, 400
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 28 #B2
	addi $5, $0, 400
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 98
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia99:	addi $4, $0, 44 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 99
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia100:	addi $4, $0, 48 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 100
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia101:	addi $4, $0, 44 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 101
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia102:	addi $4, $0, 40 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 21 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 102
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia103:	addi $4, $0, 40 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 103
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia104:	addi $4, $0, 44 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 104
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia105:	addi $4, $0, 40 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 105
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia106:	addi $4, $0, 36 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 27 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 106
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia107:	addi $4, $0, 36 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 107
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia108:	addi $4, $0, 40 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 108
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia109:	addi $4, $0, 36 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $10, $0, 109
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia110:	addi $4, $0, 33 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 21 #B2
	addi $5, $0, 200
	addi $2, $0, 31		#0:40s
	syscall
	
	addi $4, $0, 28 #B2
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 110
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia111:	addi $4, $0, 59 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 53 #B2
	addi $5, $0, 1200
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 111
	sw $10, 204($15)
 	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia112:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 112
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia113:	addi $4, $0, 59 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 113
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia114:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 114
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
	
persia115:	addi $4, $0, 57 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 52 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 115
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia116:	addi $4, $0, 40 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 116
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia117:	addi $4, $0, 45 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 117
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia118:	addi $4, $0, 50 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 118
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia119:	addi $4, $0, 48 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 119
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia120:	addi $4, $0, 45 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 120
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia121:	addi $4, $0, 40 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 121
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia122:	addi $4, $0, 45 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 122
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia123:	addi $4, $0, 48 #C3
	addi $5, $0, 150
	addi $2, $0, 31		#1 min
	syscall
	
	addi $10, $0, 123
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia124:	addi $4, $0, 53 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 124
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia125:	addi $4, $0, 52 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 125
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia126:	addi $4, $0, 48 #C3
	addi $5, $0, 150
	addi $2, $0, 31		#1min
	syscall
	
	addi $10, $0, 126
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia127:	addi $4, $0, 45 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 127
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia128:	addi $4, $0, 47 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 128
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia129:	addi $4, $0, 52 #B2
	addi $5, $0, 150
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 129
	sw $10, 204($15)
 	
	addi $4, $0, 15 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia130:	addi $4, $0, 56 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 130
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia131:	addi $4, $0, 57 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 45 #B2
	addi $5, $0, 1100
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 132
	sw $10, 204($15)
 	
	addi $4, $0, 110 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia132:	addi $4, $0, 49 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 132
	sw $10, 204($15)
 	
	addi $4, $0, 90 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia133:	addi $4, $0, 61 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 41 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 133
	sw $10, 204($15)
 	
	addi $4, $0, 90 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia134:	addi $4, $0, 54 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 49 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 42 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 30 #B2
	addi $5, $0, 900
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 134
	sw $10, 204($15)
 	
	addi $4, $0, 90 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia135:	addi $4, $0, 43 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 135
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia136:	addi $4, $0, 50 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 136
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia137:	addi $4, $0, 54 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 137
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia138:	addi $4, $0, 55 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 138
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia139:	addi $4, $0, 59 #B2
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 139
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia140:	addi $4, $0, 47 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#1:09s
	syscall
	
	addi $10, $0, 140
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia141:	addi $4, $0, 51 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 141
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia142:	addi $4, $0, 54 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 142
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia143:	addi $4, $0, 59 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 143
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia144:	addi $4, $0, 60 #B2
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 144
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia145:	addi $4, $0, 59 #B2
	addi $5, $0, 700
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 145
	sw $10, 204($15)
 	
	addi $4, $0, 70 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	#==========FINALLL
persia146:	addi $4, $0, 79 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 74 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 71 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 67 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 43 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 31 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 146
	sw $10, 204($15)
 	
	addi $4, $0, 180 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	#==============================
persia147:	addi $4, $0, 30 #G5
	addi $5, $0, 140
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 147
	sw $10, 204($15)
 	
	addi $4, $0, 14 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia148:	addi $4, $0, 31 #G5
	addi $5, $0, 300
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 148
	sw $10, 204($15)
 	
	addi $4, $0, 30 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia149:	addi $4, $0, 32 #G5
	addi $5, $0, 140
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 149
	sw $10, 204($15)
 	
	addi $4, $0, 14 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia150:	addi $4, $0, 31 #G5
	addi $5, $0, 1000
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 150
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia151:	addi $4, $0, 45 #G5
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 151
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia152:	addi $4, $0, 46 #G5
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 152
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia153:	addi $4, $0, 47 #G5
	addi $5, $0, 700
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 153
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia154:	addi $4, $0, 50 #G5
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 154
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia155:	addi $4, $0, 51 #G5
	addi $5, $0, 120
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 155
	sw $10, 204($15)
 	
	addi $4, $0, 12 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia156:	addi $4, $0, 52 #G5
	addi $5, $0, 700
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 156
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia157:	addi $4, $0, 38 #G5
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 157
	sw $10, 204($15)
 	
	addi $4, $0, 50 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia158:	addi $4, $0, 43 #G5
	addi $5, $0, 600
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 158
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
persia159:	addi $4, $0, 35 #G5
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 47 #G5
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 159
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
	
	
persia160:	addi $4, $0, 35 #G5
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $4, $0, 47 #G5
	addi $5, $0, 500
	addi $2, $0, 31		#0:53s
	syscall
	
	addi $10, $0, 0
	sw $10, 204($15)
 	
	addi $4, $0, 100 #coloca o tempo da pausa no reg 4
	sw $4, 200($15) #quando usa o 32 no reg2 usa o jr $31 da pausa
	jr $31
		
#FUNCAO QUE COLOCA O VALOR DE QUE O ENIMIGO ESTA DERROTADO

viteni:	
	addi $8, $0, 5
	sw $8, 164($15)
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 36
	jal apagarp
	
	j stopcont
#	TRASICAO DE TELA: TELA1 => TELA2

trasicao1:
	lui $8, 0x1001
	
	addi $8, $8, 2048
	
	addi $9, $0, 40
trasi1lop:		
	lw $10, 131072($8)
	lw $11, 0($8)
	
	bne $11, $10, cencod2 #Teste
	
	addi $8, $8, 1024
	addi $9, $9, -1
	
	bne $9, $0, trasi1lop
	jr $31
#	TRASICAO DE TELA: TELA2 => TELA1

trasicao2:
	lui $8, 0x1001
	
	addi $8, $8, 4060
	addi $9, $0, 60
	addi $10, $0, 0
	addi $12, $0, 8
	add $13, $0, $8
trasi2lop:		
	lw $10, 120($15)
	lw $11, 0($8)
	
	#addi $12, $0, 0xff00
	beq $11, $10, cencod1 #Teste
	#sw $12, 0($8)
	addi $8, $8, 1024
	addi $9, $9, -1
	
	bne $9, $0, trasi2lop
	
	addi $13, $13, 4
	add $8, $0, $13
	addi $9, $0, 60
	
	addi $12, $12, -1
	bne $12, $0, trasi2lop
	
	jr $31
#RAPINHO DO MAPA 2
rampinha:	add $18, $0, $31
	lw $8, 56($15)
	lw $9, 24536($21)
	
	lw $10, 80($15)
	
	beq $10, 0, rampinhat
	
	bne $9, $8, voidm
	
	addi $4, $21, -1072
	addi $5, $0, 27
	addi $6, $0, 34
	
	jal apagarp
	addi $21, $21, -4120
	add $31, $0, $18
	jr $31
	
rampinhat:	bne $9, $8, voidm
	
	addi $4, $21, -1072
	addi $5, $0, 27
	addi $6, $0, 34
	
	jal apagarp
	addi $21, $21, 4120
	add $31, $0, $18
	jr $31

#	Fake wall
fakewall:	
	lui $8, 0x1001
	
	addi $8, $8, 2056
	
	addi $9, $0, 60

fakelop:	add $22, $0, $31	
	lw $10, 131072($8)
	lw $11, 0($8)
	
	bne $11, $10, cencod2 #Tem um atalho roubado kkkkkkkkk
	
	addi $8, $8, 1024
	addi $9, $9, -1
	
	bne $9, $0, fakelop 
	jr $31

#======================= BARRA DE VIDA
barravida:	
	add $18, $0, $31
	lui $4, 0x1001
	addi $4, $4, 102540
	
	jal megaheadfake
	
	lui $4, 0x1001
	addi $4, $4, 102596
	
	lw $9, 160($15)
	beq $9, 128, recarga
	
	lw $8, 152($15)
	beq $8, 100, barraoff
	
	bne $8, $0, lifebar
	
recarga:	sw $4, 160($15)

	lw $13, 16($15)
	sw $13, 152($15)
	sw $13, 156($15)
	
lifebar:	lw $13, 152($15)	
	lw $4, 160($15)
	jal vida
	sw $4, 160($15)
	
	
	addi $13, $13, -1
	sw $13, 152($15)
	
	beq $13, $0, barraoff
	
	add $31, $0, $18
	jr $31
barraoff:	
	lw $12, 156($15)
	lw $13, 16($15)
	
	bne $12, $13, nobarra
	
	addi $8, $0, 100
	sw $8, 152($15)
	
	add $31, $0, $18
	jr $31
	
nobarra:	lw $4, 160($15)
	addi $4, $4, -44
	addi $5, $0, 10
	addi $6, $0, 13
	
	jal apagarp
	sw $0, 152($15)
	add $31, $0, $18
	jr $31
#====================================================
#	SPRITE DA VIDA
vida:	
	add $19, $0, $31
	
	addi $5, $0, 0x800e2b
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x800e2b
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 12284
	addi $5, $0, 0x800e2b
	addi $6, $0, 7
	addi $7, $0, 1
	jal diagoup
	add $4, $0, $2
	
	
	addi $4, $4, -11268
	
	addi $5, $0, 0xff00
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
	
	addi $4, $4, -6128
	
	add $31, $0, $19
	jr $31	
#====================================================
#	SPRITE DA VIDA DO ENIMIGO
vidae:	
	add $19, $0, $31
	
	addi $5, $0, 0x87002b
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $5, $0, 0x87002b
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 12284
	addi $5, $0, 0x87002b
	addi $6, $0, 7
	addi $7, $0, 1
	jal diagoup
	add $4, $0, $2
	
	
	addi $4, $4, -11268
	
	addi $5, $0, 0xff0030
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024
	
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 7
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 3
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 1024 #esta na segunda columa
	
	addi $6, $0, 1
	
	jal vertical
	add $4, $0, $2
	
	
	addi $4, $4, -6128
	
	add $31, $0, $19
	jr $31
#======================= BARRA DE VIDA DO ENIMIGO
barravidae:	add $18, $0, $31
	lw $8, 164($15)
	beq $8, 5, barraoffe
	
	
	lui $4, 0x1001
	addi $4, $4, 102840
	
	jal skullheadfake
	
	lui $4, 0x1001
	addi $4, $4, 102896
	
	lw $9, 248($15)
	beq $9, 128, recargae
	
	lw $8, 240($15)
	beq $8, 100, barraoffe
	
	bne $8, $0, lifebare
	
recargae:	sw $4, 248($15)

	lw $13, 40($15)
	sw $13, 240($15)
	sw $13, 244($15)
	
lifebare:	lw $13, 240($15)	
	lw $4, 248($15)
	jal vidae
	sw $4, 248($15)
	
	
	addi $13, $13, -1
	sw $13, 240($15)
	
	beq $13, $0, barraoffe
	
	add $31, $0, $18
	jr $31
barraoffe:	
	lw $12, 244($15)
	lw $13, 40($15)
	beq $12, $0, voidm
	bne $12, $13, nobarrae
	
	addi $8, $0, 100
	sw $8, 240($15)
	
	add $31, $0, $18
	jr $31
	
nobarrae:	lw $4, 248($15)
	addi $4, $4, -44
	addi $5, $0, 10
	addi $6, $0, 13
	
	jal apagarp
	sw $0, 240($15)
	add $31, $0, $18
	jr $31
#==========================================
#	SKULLMAN ATACANDO		
skullatak:	
	add $18, $0, $31
	
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 996

	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 988

	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 5
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2000

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968

	addi $5, $0, 0x000000 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 972

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xf0be89 #joia preta da testa parte baixo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 936

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 932

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 7
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 7
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 932

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 6
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 928

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 928

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 8

	addi $5, $0, 0x000000
	addi $6, $0, 9
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 936

	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 16

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 8
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfffffe
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 980

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 976

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968

	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 968

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 13
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 960

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 28
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 948

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 28
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 940

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 28
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 936

	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 7
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 24
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 932

	addi $5, $0, 0x000000
	addi $6, $0, 9
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 20
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfffffe
	addi $6, $0, 5
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x000000
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 984
	addi $5, $0, 0x000000
	addi $6, $0, 10
	
	jal sequencia
	add $4, $2, $0
	
	add $31, $0, $18
	jr $31
	
#===========================================================
#	espada do skullman	
skullsword:	
	add $18, $0, $31
	
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xed1c24
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe #onde está branco vai ser preto no final 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	
	addi $5, $0, 0x8c0007
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza azulado do metal
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x8c0007 #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x8c0007 #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfffffe #braco
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfffffe #braco
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #=cinza do metal
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x590004 #vermelho mais escuro ainda 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x8c0007 #vermelho mais escuro ainda 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfffffe #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfffffe #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x590004 #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x8c0007 #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfffffe #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab  #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfffffe #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x590004 #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x590004 #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfffffe #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x8c0007 #vermelho
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x8c0007
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x590004
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x8c0007
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x590004
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x330003
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x752ec7
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x330003
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x330003
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	
	addi $5, $0, 0x380010
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x380010
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x330003
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x330003
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x330003
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	add $31, $0, $18
	jr $31	
	
# ===========	Verificacoes dos ataques

atakverif:	add $19, $0, $31

	lw $8, 192($15)
	sw $8, 184($15)
	
	addi $4, $20, -4240
	addi $5, $0, 46
	addi $6, $0, 40
	
	jal apagarp
	
	add $31, $0, $19
	jr $31
# ===========	Espada megaman	
megasword:	add $18, $0, $31
	addi $4, $4, 0
	addi $5, $0, 0x0f960f
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x5b9e24
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x004d00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x3f7513
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x004d00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x3f7513
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x000980
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x2f3699
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0x2f3699
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x4d6df3
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x2f3699
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0xfff200
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xff7e00
	addi $6, $0, 1
	
	jal vertical
	
	add $4, $2, $0
	addi $4, $4, 1024

	addi $5, $0, 0xff7e00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3076

	addi $5, $0, 0xfff200
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xfff200
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020

	addi $5, $0, 0x3d3d3d #cinza escuro
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048 #coluna cinza claro 2 pixel

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024 #coluna cinza claro 2 pixel

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #coluna cinza claro 1 pixel

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza azulado

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048 #cinza azulado

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza claro

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048 #cinza escuro

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza azulado

	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020 #cinza escuro

	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	jal vertical
	
	add $31, $0, $18
	jr $31
#===========================================================
#	espada do skullman	
megaswordt:	
	add $18, $0, $31
	
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x546d8e #onde está branco vai ser preto no final 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x546d8e
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza azulado do metal
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3d3d3d #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x3d3d3d #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #vermelho escuro depois do vermelho da ponta
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x546d8e #braco
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x546d8e #braco
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #=cinza do metal
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3d3d3d #vermelho mais escuro ainda 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x3d3d3d #vermelho mais escuro ainda 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x546d8e #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x546d8e #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3d3d3d #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x3d3d3d #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x546d8e #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab  #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x546d8e #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3d3d3d #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x3d3d3d #vermelho mais escuro 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x546d8e #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfff200 #vermelho
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x9d9dab #cinza metal 
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xfff200
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xff7e00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfff200
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0xff7e00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x2f3699
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x4d6df3
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x2f3699
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0x2f3699
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	
	addi $5, $0, 0x000980
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0x004d00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3f7513
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x004d00
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x3f7513
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0x0f960f
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	
	addi $5, $0, 0x5b9e24
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	add $31, $0, $18
	jr $31	

#===============================================
#	Carrega a arma escolhida

weaponselected:	
	lw $9, 168($15)
	bne $9, $0, voidm
	
	lw $8, 172($15)
	beq $8, 1, arma1
	beq $8, 2, arma2
	jr $31
	
	
arma1:	#Desenha a espada para o megaman pegar
	add $19, $0, $31
	lui $4, 0x1001
	
	addi $4, $4, 63520
	
	jal megasword
	
	add $31, $0, $19
	jr $31
	
arma2:	#Desenha a espada para o megaman pegar
	add $19, $0, $31
	lui $4, 0x1001
	
	addi $4, $4, 61472
	
	jal megabusterfake
	
	add $31, $0, $19
	jr $31
#===========================================
#============== MEGABUSTERFAKE KKKKKKKK
megabusterfake:	
	add $18, $0, $31
	
#============== CONTORNO

	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 1020
	
	add $4, $0, $4
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4 2056
	
	add $4, $0, $4
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -5132
	
	add $4, $0, $4
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0x000000 #CONTORNO
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
#============ COR DO TIRO
	addi $4, $4, 1008
	
	add $4, $0, $4
	addi $5, $0, 0xe5aa7a #TIRO
	addi $6, $0, 4
	addi $7, $0, 4
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 1004
	
	add $4, $0, $4
	addi $5, $0, 0xe5aa7a #TIRO
	addi $6, $0, 2
	addi $7, $0, 6
	
	jal verticais
	add $4, $0, $2

#=============== CHARME/BRILHO	
	addi $4, $4, -12
	
	add $4, $0, $4
	addi $5, $0, 0xfffff7 #CHARME
	addi $6, $0, 2
	addi $7, $0, 1020
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $0, $4
	addi $5, $0, 0xfffff7 #CHARME
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	add $31, $0, $18
	jr $31		

#	Coleta das armas
pegada:	
	lw $9, 168($15)
	bne $9, $0, voidm
	
	
	
	addi $4, $21, 19416
	
	addi $8, $0, 15
	addi $9, $0, 0xb4b4b4
	addi $12, $0, 0xe5aa7a
	add $11, $0, $4
	addi $13, $0, 10

coleta:	lw $10, 0($4)
	
	beq $10, $9, weapon1
	beq $10, $12, weapon2
	
	addi $4, $4, 4
	
	addi $8, $8, -1 
	bne $8, $0, coleta
	
	
	addi $11, $11, 1024
	add $4, $0, $11
	addi $13, $13, -1
	addi $8, $0, 10
	
	
	bne $13, $0, coleta
	
	add $31, $0, $22
	jr $31
	
	
weapon1:	
	addi $8, $0, 1	
	sw $8, 168($15)
	
	
	lui $4, 0x1001
	
	addi $4, $4, 56352
	addi $5, $0, 25
	addi $6, $0, 15
	
	jal apagarp
	
	
	
	add $31, $0, $22
	jr $31
	
weapon2:	
	
	addi $8, $0, 2
	sw $8, 168($15)
	
	
	lui $4, 0x1001
	
	addi $4, $4, 59416
	addi $5, $0, 10
	addi $6, $0, 9
	
	jal apagarp	
	
	add $31, $0, $22	
	jr $31
	
# 	FUNCAO DA ARMADILHA

trap:	
	
	add $22, $0, $31
	
	
	lw $8, 92($15)
	bne $8, $0, startracheck
	
	
	lw $9, 264($15)
	beq $9, 70, downtrap
	
	
	lw $8, 260($15)
	bne $8, $0, uptrap
	
	
	
	
startrap:	
	
	
	
	lw $8, 268($15)
	sw $8, 92($15)
	
		
	
startracheck:	lw $9, 92($15)
	addi $9, $9, -1
	sw $9, 92($15)
	
	bne $9, $0, voidm
	
	
	
	lui $4, 0x1001
	addi $4, $4, 65968
	sw $4, 252($15)
	jal armadilhadw
	
	
	addi $4, $4, -55392
	sw $4, 256($15)
	jal armadilhaup
	
	
	
#==================================
#	Colis�o da armadilha	
	lw $4, 252($15)
	lw $5, 120($15)
	addi $6, $0, 30
	addi $7, $0, 28
	
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 124($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 128($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	
	
uptrap:	
	
	
	
	lw $4, 252($15) # Carrega a armadilha embaixo
	addi $4, $4, -1024
	sw $4, 252($15)
	jal armadilhadw
	
	
	
	lw $4, 256($15) # Carrega a armadilha em cima
	addi $4, $4, 1024
	sw $4, 256($15)
	jal armadilhaup
	
	
	lw $12, 260($15) # Contador de quantas vezes elas andam
	addi $12, $12, 1
	sw $12, 260($15)
	
	


#==================================
#	Colis�o da armadilha
	lw $4, 252($15)
	lw $5, 120($15)
	addi $6, $0, 30
	addi $7, $0, 28
	
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 124($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 128($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $8, 256($15)
	
	
	addi $8, $8, 24576
	addi $9, $0, 20
	
touch:	
	lw $10, 0($8)
	
	lw $11, 48($15)
	
	beq $10, $11, downtrap	
	
	addi $9, $9, -1
	addi $8, $8, -1020
	
	bne $9, $0, touch
	
	add $31, $0, $22
	jr $31
	
	
downtrap:	
	lw $9, 260($15)
	beq $9, $0, traporig
	
	
	
	
	addi $8, $0, 70
	sw $8, 264($15)
	
	
	lw $4, 252($15) # Carrega a armadilha embaixo
	
	addi $4, $4, -9216
	addi $5, $0, 25
	addi $6, $0, 15
	
	jal apagarp
	
	lw $4, 252($15)
	addi $4, $4, 1024
	
	sw $4, 252($15)
	jal armadilhadw
	
	
	
	lw $4, 256($15) # Carrega a armadilha em cima
	addi $5, $0, 25
	addi $6, $0, 15
	
	jal apagarp
	
	
	addi $4, $4, -1024
	sw $4, 256($15)
	jal armadilhaup

#==================================
#	Colis�o da armadilha
	lw $4, 252($15)
	lw $5, 120($15)
	addi $6, $0, 30
	addi $7, $0, 28
	
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 124($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	lw $5, 128($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	
	lw $8, 260($15)
	addi $8, $8, -1
	sw $8, 260($15)
	
			
							
	add $31, $0, $22
	jr $31
	
	
traporig:	
	lw $4, 252($15) # Carrega a armadilha embaixo
	
	addi $4, $4, -9216
	addi $5, $0, 25
	addi $6, $0, 20
	
	jal apagarp
	
	
	lw $4, 256($15) # Carrega a armadilha em cima
	addi $5, $0, 25
	addi $6, $0, 15
	
	jal apagarp
	
	sw $0, 264($15)
	
	add $31, $0, $22
	jr $31
	
#=====================================================			
#	Indo para a parte de cima da Trap
armadilhaup:	
	add $18, $0, $31
		
	addi $5, $0, 0xfffffe
	addi $6, $0, 6

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 7

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 8

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 9
	
	addi $4, $4, 0
	jal vertical
	add $4, $2, $0
	
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 10

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 8

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 7

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5

	jal vertical
	add $4, $2, $0

	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 4

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 9

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 7

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5

	jal vertical
	add $4, $2, $0
	addi $4, $4, 0
	
	addi $5, $0, 0xebe8eb
	addi $6, $0, 2

	jal vertical
	add $4, $2, $0		
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 2

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 4

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 7
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 4

	jal vertical
	add $4, $2, $0

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 2

	jal vertical
	add $4, $2, $0
	
	
	add $31, $0, $18
	jr $31
#	Termina aqui a parte de cima da armadilha	
#===========================================	
	
armadilhadw:	
	add $18, $0, $31

	addi $5, $0, 0xc2c2c2
	addi $6, $0, 10
	
	jal vertical
	add $4, $2, $0
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 10
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 7
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 8
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0

	addi $4, $4, 1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 1

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -3072
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 8

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 9

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 10

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 8
	
	jal vertical
	add $4, $2, $0

	addi $4, $4, 1024
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6

	jal vertical
	add $4, $2, $0

	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 4

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 1

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 3

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 4

	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2048
	
	addi $5, $0, 0xfffffe
	addi $6, $0, 6

	jal vertical
	add $4, $2, $0
	
	
	add $31, $0, $18
	jr $31
#	Fim armadilha baixo

tocha2:	
	add $19, $0, $31
	
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	addi $7, $0, 0
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200 #amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200 #amarelo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	
	addi $4, $4, 1004
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xfff200 #laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xfff200 #laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -1024
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xffc20e #laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1000
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e#laranja de fora
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2024
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 2024
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0xff7e00#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb4b4b4#laranja de fora
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0x2e2e2e#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb4b4b4#laranja de fora
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xb4b4b4#laranja de fora
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, -2056
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x2e2e2e#laranja de fora
	addi $6, $0, 10
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 5112
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 4
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja de fora
	addi $6, $0, 6
	
	jal vertical
	add $4, $2, $0
	
	add $31, $0, $19
	jr $31
	
#	TOCHA GRANDE
	
	
tocha1:	
	add $19, $0, $31
	
	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1016

	addi $5, $0, 0xff7e00
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfff200 #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1000

	addi $5, $0, 0xff7e00 #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfff200#amarelo
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004

	addi $5, $0, 0xff7e00 #laranja de fora
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xfff200#amarelo
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1008

	addi $5, $0, 0xff7e00 #laranja de fora
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0

	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xfff200 #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0xff7e00 #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200 #laranja/amarelado
	addi $6, $0, 2
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xff7e00 #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1012
	addi $5, $0, 0xfff200#laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xffc20e #laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1012
	addi $5, $0, 0xffc20e#laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xfff200#laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb4b4b4#laranja/amarelado
	addi $6, $0, 4
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 1004
	addi $5, $0, 0x2e2e2e#laranja/amarelado
	addi $6, $0, 1
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 2
	
	jal sequencia
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x2e2e2e#laranja/amarelado
	addi $6, $0, 10
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1008
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0xb4b4b4#laranja/amarelado
	addi $6, $0, 5
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 0
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 1
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1020
	addi $5, $0, 0xb4b4b4#laranja/amarelado
	addi $6, $0, 3
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 3068
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 7
	
	jal vertical
	add $4, $2, $0
	
	addi $4, $4, 1016
	addi $5, $0, 0x858585#laranja/amarelado
	addi $6, $0, 4
	
	jal vertical
	add $4, $2, $0
	#fim tocha
	
	add $31, $0, $19
	jr $31
	

		
# ===========	Tochas
tochas:	
	add $18, $0, $31
	
	lw $8, 280($15)
	
	beq $8, 80, zahandado
	
	beq $8, 90, tourchline2
	
	
	lw $13, 272($15)
	bne $13, $0, tourchline1
	
	lui $4, 0x1001
	addi $4, $4, 20936
	
	sw $4, 276($15)
	
	
	
	sw $4, 288($15)
	addi $13, $0, 3
	sw $13, 272($15)
	sw $13, 284($15)
	
tourchline1:
	lw $4, 288($15)
	jal tocha1
	
		
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, zahandotourch
	
	add $31, $0, $18
	jr $31
	
	
zahandotourch:
	
	addi $8, $0, 80
	sw $8, 280($15)
	
	lw $4, 276($15)
	sw $4, 288($15)
	
	lw $13, 272($15)
	sw $13, 284($15)
	
zahandado:	
	lw $4, 288($15)
	
	addi $4, $4, -6156
	addi $5, $0, 8
	addi $6, $0, 18
	
	jal apagarp
	
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, nextframe
	
	lw $8, 292($15)
	beq $8, 90, apagouatocha
	
	add $31, $0, $18
	jr $31
	
nextframe:	
	addi $8, $0, 90 # Verificacao da tocha 2
	sw $8, 280($15) 
	sw $8, 292($15) # Verificacao do reset pos tocha2

	lw $4, 276($15)
	sw $4, 288($15) #Recarrega a memoria
	
	lw $13, 272($15) # Recarrega o loop
	sw $13, 284($15)
	
tourchline2:		

	
	lw $4, 288($15)
	addi $4, $4, -6136
	jal tocha2
	
		
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, zahandotourch
	
	add $31, $0, $18
	jr $31
	
	
apagouatocha:	
	
	sw $0, 280($15)
	sw $0, 292($15)
	sw $0, 272($15)
	add $31, $0, $18
	jr $31
	
#============ TOCHAS DO CENARIO 2
tochas2:	
	add $18, $0, $31
	
	lw $8, 280($15)
	
	beq $8, 80, zahandado
	
	beq $8, 90, tourchline2
	
	
	lw $13, 272($15)
	bne $13, $0, tourchline12
	
	lui $4, 0x1001
	addi $4, $4, 20436
	
	sw $4, 276($15)
	
	
	sw $4, 288($15)
	addi $13, $0, 5
	sw $13, 272($15)
	sw $13, 284($15)
	
tourchline12:
	lw $4, 288($15)
	jal tocha1
	
		
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, zahandotourch
	
	add $31, $0, $18
	jr $31
	
	
zahandotourch2:
	
	addi $8, $0, 80
	sw $8, 280($15)
	
	lw $4, 276($15)
	sw $4, 288($15)
	
	lw $13, 272($15)
	sw $13, 284($15)
	
zahandado2:	
	lw $4, 288($15)
	
	addi $4, $4, -6156
	addi $5, $0, 8
	addi $6, $0, 18
	
	jal apagarp
	
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, nextframe
	
	lw $8, 292($15)
	beq $8, 90, apagouatocha
	
	add $31, $0, $18
	jr $31
	
nextframe2:	
	addi $8, $0, 90 # Verificacao da tocha 2
	sw $8, 280($15) 
	sw $8, 292($15) # Verificacao do reset pos tocha2

	lw $4, 276($15)
	sw $4, 288($15) #Recarrega a memoria
	
	lw $13, 272($15) # Recarrega o loop
	sw $13, 284($15)
	
tourchline22:		

	
	lw $4, 288($15)
	addi $4, $4, -6136
	jal tocha2
	
		
	lw $4, 288($15)
	addi $4, $4, 200
	sw $4, 288($15)
	
	lw $13, 284($15)
	addi $13, $13, -1
	sw $13, 284($15)
	
	beq $13, $0, zahandotourch
	
	add $31, $0, $18
	jr $31
	
	
apagouatocha2:	
	
	sw $0, 280($15)
	sw $0, 292($15)
	sw $0, 272($15)
	add $31, $0, $18
	jr $31
	
#========================================
# 	ENIMIGO DERROTADO

eliminado:	
	add $22, $0, $31
	
	lw $8, 296($15)
	beq $8, 50, voidm
	
	lw $8, 164($15)
	beq $8, 5, ganhado
	jr $31	
	
ganhado:	
	jal cenario1g
	jal copiace
	
	addi $8, $0, 50
	sw $8, 296($15)
	
	add $31, $0, $22
	jr $31
	
#	ENDGAME

endgame:	
	lui $4, 0x1001
	addi $4, $4, 130048
	
	addi $9, $0, 40
		
horadeganhar:
	lw $8, 0($4)
	
	lw $12, 120($15)
	beq $12, $8, telavitoria
	
	lw $12, 124($15)
	beq $12, $8, telavitoria
	
	lw $12, 128($15)
	beq $12, $8, telavitoria
	
	addi $4, $4, 4
	addi $9, $9, -1
	bne $9, $0, horadeganhar
		
	jr $31	

telaops:	
	add $18, $0, $31
	
	lui $4, 0x1001
	addi $4, $4, 11324
	
	addi $5, $0, 0xffffff

#=========== C		
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 60
	
#============ O	
	add $13, $0, $4
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	
	add $13, $4, $0
	
#============ n
	
	addi $4, $4, -2048
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -8
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 36
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	
	addi $4, $4, 20
	add $13, $4, $0
	
#============ T
	addi $4, $4, -2048
	
	addi $6, $0, 3
	addi $7, $0, 15
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 24
	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 48
	
	add $13, $4, $0
	

#============== R
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -52
	
	addi $6, $0, 11
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $13, 80
	
	add $13, $4, $0
	
#============ O	
	
	add $13, $0, $4
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	
	add $13, $4, $0
	
#=========== L
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
	
#========== S	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
letraa:	lui $4, 0x1001
	addi $4, $4, 34876
	
	
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 8
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 7124
	
	addi $6, $0, 10
	addi $7, $0, -7152
	
	jal sequencia
	add $4, $0, $2
	
#======================================
igual:	
	addi $4, $4, 3092
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2
	
setaesq:	
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -12
	
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
#============================================
#	D

letrad:	lui $4, 0x1001
	addi $4, $4, 55356	
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 9208
	
	addi $6, $0, 1
	addi $7, $0, 984
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, -10200
	
	jal sequencia
	add $4, $0, $2

#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2

#============================================
setadir:	
	addi $6, $0, 12
	addi $7, $0, 0
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -12
	
	addi $6, $0, 7
	addi $7, $0, 3
	
	jal diagodwt
	add $4, $0, $2
	
#====================================
letraw:	
	lui $4, 0x1001
	addi $4, $4, 75836
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 12288
	
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 36
	
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -12288
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 28
	
#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2

#========================================
#	Seta pra cima		
setci:	
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, 48
	
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal diagoupt
	add $4, $0, $2
	
	addi $4, $4, -7208
	
	addi $6, $0, 15
	addi $7, $0, 2
	
	jal verticais
	add $4, $0, $2
	
#===================================
letras:	
	lui $4, 0x1001
	addi $4, $4, 96316
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 11
	addi $7, $0, 6100
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 5072
	
	addi $6, $0, 11
	addi $7, $0, -12256
	
	jal sequencia
	add $4, $0, $2
	
	
#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2	
	
#============================================
colect:		
	addi $4, $4, -2048
#--- c	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 4
	addi $7, $0, 6128
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -5104
	
	jal sequencia
	add $4, $0, $2
	
#--- o	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 4
	addi $7, $0, 6128
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -5120
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 16
	
#--- l	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 5120
	
	addi $6, $0, 4
	addi $7, $0, -5104
	
	jal sequencia
	add $4, $0, $2
	
#--- e	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 4
	addi $7, $0, 3056
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, 3056
	
	jal sequencia
	add $4, $0, $2	
	
	addi $6, $0, 4
	addi $7, $0, -5104
	
	jal sequencia
	add $4, $0, $2
	
#--- t	
	addi $6, $0, 5
	addi $7, $0, 1012
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1000
	
#--- a
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -20
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
#======================================
letraj:		
	lui $4, 0x1001
	addi $4, $4, 116796
	
	addi $6, $0, 13
	addi $7, $0, 996
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 11236
	
	addi $6, $0, 6
	addi $7, $0, -1052
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, -12208
	
	jal sequencia
	add $4, $0, $2
	
#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -2048
#=============================================
#atak	
#--- a	
	
	
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -20
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	addi $6, $0, 3
	addi $7, $0, -3052
	
	jal sequencia
	add $4, $0, $2
	
#--- t	
	addi $6, $0, 5
	addi $7, $0, 1012
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1000
	
#--- a	
	
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -20
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	addi $6, $0, 3
	addi $7, $0, -3052
	
	jal sequencia
	add $4, $0, $2
	
#--- c	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 4
	addi $7, $0, 6128
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 4
	addi $7, $0, -5104
	
	jal sequencia
	add $4, $0, $2
	
#--- a	
	
	addi $6, $0, 3
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -20
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 2048
	
	addi $6, $0, 3
	addi $7, $0, -3052
	
	jal sequencia
	add $4, $0, $2
	
		

#====================================
# PRESS
#D = DIF
#B = MENU	
	lui $4, 0x1001
	addi $4, $4, 	41472
	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 80
	
	add $13, $4, $0
	
#============= R
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -52
	
	addi $6, $0, 11
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $13, 80
	
	add $13, $4, $0
	
#=========== E
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 12300
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4

#========== S	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -15340
	add $13, $0, $4
	
#========== S	
	add $4, $13, $0
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
#====================================================	
# D = DIF	
	#	D
	lui $4, 0x1001
	addi $4, $4, 76360	
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 9208
	
	addi $6, $0, 1
	addi $7, $0, 984
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, -10200
	
	jal sequencia
	add $4, $0, $2
	
	
#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -7168
#==============================================
#D 	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 9208
	
	addi $6, $0, 1
	addi $7, $0, 984
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 9
	addi $7, $0, -10200
	
	jal sequencia
	add $4, $0, $2
	
#=========== I
	addi $4, $4, -2048
	
	addi $6, $0, 1
	addi $7, $0, 2044
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 20
	addi $4, $4, -2048
	
#============= F
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 7124
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 8148
	
	jal sequencia
	add $4, $0, $2

#==================================
#B = MENU	
	
	lui $4, 0x1001
	addi $4, $4, 96840
	add $13, $0, $4
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 6100
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 5072
	
	addi $6, $0, 11
	addi $7, $0, -12256
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $13, 1072
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -996
	
#==============================================
#igual		
	addi $4, $4, 3072
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -6104
	
	jal sequencia
	add $4, $0, $2
	
#=============================================
# Back
	add $13, $0, $4
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 6100
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 5072
	
	addi $6, $0, 11
	addi $7, $0, -12256
	
	jal sequencia
	add $4, $0, $2
	
	add $4, $13, 1072
	
	addi $6, $0, 5
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1012
	
#============ A
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, -1024
	
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 8
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 7124
	
	addi $6, $0, 10
	addi $7, $0, -6124
	
	jal sequencia
	add $4, $0, $2							
	
#================================
# C
letrac:	
	addi $4, $4, -1024
	
	addi $6, $0, 11
	addi $7, $0, 976
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 11
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 11264
	
	addi $6, $0, 11
	addi $7, $0, -12268
	
	jal sequencia
	add $4, $0, $2
	
#==================================
# 	K
letrak:	
	
	addi $6, $0, 13
	
	jal vertical
	add $4, $0, $2
	
	addi $4, $4, 7168
	
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -4
	
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagodw
	add $4, $0, $2
	
	add $31, $0, $18
	jr $31
	
#=============================================
#	ESCOLHA A DIFICULDADE
escodifi:	
	add $18, $0, $31
		
#=========== E
	lui $4, 0x1001
	addi $4, $4, 14396
	
	add $13, $4, $0
	
	addi $4, $4, -3072
	addi $5, $0, 0xffffff
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 12300
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
		
#========== S	
	addi $4, $4, -1024
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -15332
	add $13, $0, $4	
	
#=========== C		
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 60
	
#============ O	
	add $13, $0, $4
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	
	add $13, $4, $0
	
#=========== L
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
	
#============	H
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3092
	add $13, $0, $4

#============ A
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3144
	add $13, $0, $4
#===================================	
	
#===================================
#============ A
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3104
	add $13, $0, $4

#============ Dificuldade
	lui $4, 0x1001
	addi $4, $4, 34876

#============ D
	add $13, $0, $4
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 12
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15372
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 100
	add $13, $0, $4
	
#============ I

	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	add $13, $0, $4
	
#=========== F
	
	addi $4, $4, 3072
	add $13, $4, $0
	
	addi $4, $4, -3072
	addi $5, $0, 0xffffff
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -8172
	add $13, $0, $4
	
#============ I

	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3088
	add $13, $0, $4
		
#=========== C		
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 60
	
#============ U
	addi $4, $4, -3072
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 56
	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	add $13, $0, $4
#=========== L

	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4	
	
#============ D
	addi $4, $4, -3072
	add $13, $0, $4
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 12
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15372
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 100
	addi $4, $4, 3072
	add $13, $0, $4
	
#============ A
	
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3104
	add $13, $0, $4
	
		
#============ D
	addi $4, $4, -3072
	add $13, $0, $4
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 12
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15372
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 100
	addi $4, $4, 3072
	add $13, $0, $4
	
	add $13, $4, $0

#=========== E		
	addi $4, $4, -3072
	addi $5, $0, 0xffffff
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 12300
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
	
			
#=====================================
# Facil	
	lui $4, 0x1001
	addi $4, $4, 75936
	
#=========== F
	
	addi $4, $4, 3072
	add $13, $4, $0
	
	addi $4, $4, -3072
	addi $5, $0, 0xff00
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -8172
	add $13, $0, $4
		
#=================================
#	Medio

	lui $4, 0x1001
	addi $4, $4, 76180
	addi $5, $0, 0xfff000
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12
	addi $6, $0, 14
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $4, 92
	
	addi $6, $0, 14
	addi $7, $0, 3
	
	jal diagodwt
	add $4, $0, $2
	
	addi $4, $4, -12
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 200
	
	add $13, $0, $4
#=====================================
# 	Dificil

#============ D
	addi $5, $0, 0xff0000
	add $13, $0, $4
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 12
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15372
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 100
	add $13, $0, $4
	add $31, $0, $18
	jr $31					

#===========================================
#	Pressione espaco
presstart:	
	lui $4, 0x1001
	addi $4, $4, 111640
	
	add $18, $0, $31
	
	addi $5, $0, 0xffffff	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 80
	
	add $13, $4, $0
	
#============= R
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -52
	
	addi $6, $0, 11
	addi $7, $0, 3
	
	jal diagodw
	add $4, $0, $2
	
	addi $4, $13, 80
	
	add $13, $4, $0
	
#=========== E
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 12300
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4

#========== S	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -15340
	add $13, $0, $4
	
#========== S	
	add $4, $13, $0
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -10200
	
#=================================
#	Espaco
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 5120
	
	addi $6, $0, 3
	addi $7, $0, 15
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -5120
	
	addi $6, $0, 8
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	add $31, $0, $18
	jr $31
	
escoarm:	
#=============================================
#	ESCOLHA A DIFICULDADE	
	add $18, $0, $31
		
#=========== E
	lui $4, 0x1001
	addi $4, $4, 14520
	
	add $13, $4, $0
	
	addi $4, $4, -3072
	addi $5, $0, 0xffffff
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, 5132
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 12300
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
		
#========== S	
	addi $4, $4, -1024
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 6144
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072
	
	addi $6, $0, 6
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -15332
	add $13, $0, $4	
	
#=========== C		
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 60
	
#============ O	
	add $13, $0, $4
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	
	add $13, $4, $0
	
#=========== L
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 15360
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, -12268
	
	add $13, $0, $4
	
#============	H
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3092
	add $13, $0, $4

#============ A
	addi $4, $4, -3072
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 8192
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
		
	addi $4, $4, -8192
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $4, $13, -3060
	
	addi $6, $0, 3
	addi $7, $0, 14
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3144
	add $13, $0, $4
	
#=====================================
#K
	lui $4, 0x1001
	addi $4, $4, 86280
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 9204
	
	addi $6, $0, 10
	addi $7, $0, 5
	
	jal diagoup
	add $4, $0, $2
	
	addi $4, $4, -20
	
	addi $6, $0, 9
	addi $7, $0, 5
	
	jal diagodw
	add $4, $0, $2
	
#========================================
# T	
	lui $4, 0x1001
	addi $4, $4, 86680
	
	add $13, $0, $4
#============ T
	
	addi $6, $0, 3
	addi $7, $0, 15
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 24
	
	addi $6, $0, 18
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $31, $0, $18
	jr $31	
opt:	
	add $18, $0, $31
	
	lui $4, 0x1001
	addi $4, $4, 112256
#============ O	
	add $13, $0, $4
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 20
	
	add $13, $4, $0	

#====================================
#	Igual		
	addi $4, $4, 3080
	addi $6, $0, 10
	addi $7, $0, 3032
	
	jal sequencia
	add $4, $0, $2
	
	addi $6, $0, 10
	addi $7, $0, -984
	
	jal sequencia
	add $4, $0, $2
	
	addi $4, $4, -5140
#============ O	
	add $13, $0, $4
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2	
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 13312
	
	addi $6, $0, 3
	addi $7, $0, 11
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 44
	
	addi $6, $0, 13
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 12
	
	add $13, $4, $0
	
#====================================
# P	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $13, $0, $4
	
	addi $4, $4, -3072
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $4, 3072		
	addi $6, $0, 4
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 4096
	
	addi $6, $0, 3
	addi $7, $0, 13
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 72
	
	add $13, $4, $0	
	
#============ T
	addi $4, $4, -2048
	
	addi $6, $0, 3
	addi $7, $0, 15
	
	jal verticais
	add $4, $0, $2
	
	addi $4, $13, 24
	
	addi $6, $0, 15
	addi $7, $0, 3
	
	jal verticais
	add $4, $0, $2
	
	add $31, $0,, $18
	jr $31

