.text

main:	j cenario#ESSE ï¿½ O PROGRAMA PARA CARREGAR O JOGO TODO
	jal tela
	lui $23, 0xffff
	
titulo:	
	lw $9, 4($23)
	
	jal menutheme
	addi $10, $0, ' '
	beq $9, $10, jogo
	j titulo
jogo:	jal apagar

cenario: 	lui $8, 0x1001
	addi $9, $0, 0x495865
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
	
#==============	TETO CINZA

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
	
loopmain:	beq $13, $0, copia

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

copia:	jal copiace
#=============================================
#=============================================
#=============================================

#============= Cï¿½DIGO DO MEGAMAN
megaman:	lui $24, 0x1001
	
	# 1d61b5 = Armadura
	# 47a6e6 = Roupa
	# f0cd90 = PELE
	# ffffff = OLHO
	# 000000 = CONTORNO/PUPILA/ BOCA
	# ff00ff = CONTORNO DE DESENVOLVIMENTO
	#POSICAO AUXILIAR
	
#============== NUCA	
	addi $24, $24, 14396
	add $21, $0, $24
	jal mega
	
	
		
#=======================================
#=======================================
#=======================================
skullman:	
	#Skull man
#=============== CORES:
#	b4b4b4 = Sombra
#	ffffff = Oss
#	ed1c24 = Botï¿½o
#	000000 = Membros
#	f0be89 = Pele
	
	
	lui $25, 0x1001
	
	addi $25, $25, 56132
	add $20, $0, $25
	jal skull
	
	addi $4, $0, 500000
	jal timer
	
	lui $23, 0xffff
	# $9 = Vai ser quem vai carregar a letra do teclado
	# $17 = Valor de movimento; Indica qual movimento deve fazer no momento
	# $10 = Vai ser o comparador de teclas; ver se é igual a "TECLA"
	# $16 = Vai guardar a cópia da letra; Loop do Pulo Mega; Loop do TiroMega 
#========================================================================================
#	Memoria para guardar os valores chave	
funx:	lui $15, 0x1001
	addi $15, $15, 1310720
	addi $8, $0, 11200
	sw $8, 4($15)
	addi $8, $0, -60
	sw $8, 12($15)
	addi $8, $0, 3
	sw $8, 16($15)
	addi $8, $0, 26
	sw $8, 20($15)
	addi $8, $0, 3
	sw $8, 32($15)
	addi $8, $0, 10
	sw $8, 40($15)
	addi $8, $0, 0x495865
	sw $8, 44($15)
	addi $8, $0, 0xfffffe
	sw $8, 48($15)
	addi $8, $0, 0xe5aa7a
	sw $8, 52($15)
	addi $8, $0, 0x828282
	sw $8, 56($15)
	addi $8, $0, 0xb0b0b0
	sw $8, 60($15)
	addi $8, $0, 0x24224d
	sw $8, 64($15)
	addi $8, $0, 0x1d61b5
	sw $8, 120($15)
	addi $8, $0, 0x47a6e6
	sw $8, 124($15)
	addi $8, $0, 0xf0cd90
	sw $8, 128($15)
fase1:
	jal moveset
	add $25, $20, $0
	jal movesku
		
	j fase1
	
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
#============= OBS: COLOCAR JR $31 NESSE PONTO PARA QUE A CABEï¿½A SEJA UMA FUNï¿½ï¿½O

skull:	
	add $18, $0, $31
	add $3, $0, $25
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
#============== DETECTOR DE DANO PARADO	
	
	
	addi $4, $21, 0
	addi $6, $0, 10
	addi $7, $0, 12
	
	lw $5, 48($15)
	jal colidamage
	
	
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	
	
	
	
	
	add $31, $0, $22
	jr $31
#================================================================
#================================================================
#	MOVIMENTAÇÃO PARA FRENTE
	
frente:	sw $0, 80($15)
	addi $8, $0, -4
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
	lw $8, 44($15)
	
	lw $10, 0($9)
	
	beq $10, $8, quedaco

	
	jal megaleve
	
	
	addi $4, $0, 12000
	jal timer
	
	
	
	addi $4, $21, -44
	addi $5, $0, 23
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
	
	jal coliwall	
	
	jal megapaco1 #1
	
	lw $4, 4($15)
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
	
	addi $4, $21, 48
	addi $7, $0, 1
	jal coliwall
		
	jal megapaco2 #1
	
	lw $4, 4($15)
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
	
	addi $4, $21, 48
	addi $7, $0, 1
	jal coliwall	
	
	jal megapaco3 #1
	
	lw $4, 4($15)
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
	
	addi $8, $0, 4
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
	addi $4, $21, -12
	addi $6, $0, 10
	addi $7, $0, 5
	lw $5, 48($15)
	jal colidamage
	
	add $4, $21, -32
	addi $7, $0, 1
	jal coliwall
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $24, -8
	
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
	
	
	
	addi $4, $21, -12
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
	addi $4, $21, -12
	addi $6, $0, 10
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $21, -8
	addi $7, $0, 1
	
	jal coliwall	
	
	jal megapaco1t #1
	
	lw $4, 4($15)
	jal timer
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	
	addi $4, $21, -32
	addi $5, $0, 30
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
	

		
	addi $4, $21, -56
	
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
	addi $4, $21, -20
	addi $6, $0, 10	
	addi $7, $0, 14
	
	lw $5, 48($15)
	jal colidamage
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
	addi $4, $21, -20
	addi $7, $0, 1
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
	
	addi $4, $21, -48
	addi $7, $0, 1
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
	
	
#============== COLISAO DO TETO
	
	addi $9, $21, -1024
	lw $8, 44($15)
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	bne $10, $8, quedaco	
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
	addi $8, $0, -8
	sw $8, 8($15)
	addi $4, $21, 20
	addi $6, $0, 15
	addi $7, $0, 4
	
	lw $5, 48($15)
	jal colidamage
	
	add $4, $4, 8
	jal coliwall
	
	lw $8, 16($15)
	beq $8, $0, derrotado
	
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
	addi $8, $0, 8
	sw $8, 8($15)
	
	addi $9, $21, -32
	addi $8, $0, 0x0000
	addi $11, $0, 0xff00
	lw $10, 0($9)
	
	addi $4, $21, -32
	addi $6, $0, 20
	addi $7, $0, 1
	
	jal coliwall
	
	lw $5, 48($15)
	jal colidamage
	
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
	addi $8, $0, 0x485054
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
		
quedanor:	lw $13, 28($15)
	addi $13, $13, 1
	sw $13, 28($15)
	

	add $31, $0, $22
	jr $31
	
quedacod:	sw $0, 80($15)
#============== COLISAO QUEDACOD
	addi $8, $0, -8
	sw $8, 8($15)
	addi $4, $21, 20
	addi $6, $0, 15
	addi $7, $0, 4
	
	lw $5, 48($15)
	jal colidamage
	
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
	addi $8, $0, 8
	sw $8, 8($15)
	addi $4, $21, -32
	addi $6, $0, 20
	addi $7, $0, 1
	
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


#=============================================
#	FUNCAO TIROMEGA. AQUI TEM PORRADARIA GRANDE

tiromega:	
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
	add $12, $21, 10312 #Depois eu decido qual o melhor registrador para esse loop
	sw $12, 0($15)
	j tirolo
	
megint:	jal megatirot
	
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
	
stopshot:	lw $4, 0($15)
	sw $0, 0($15)
	sw $0, 4($23)
	
	lw $8, 40($15)
	beq $8, $0, telavitoria
	
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
movesku:	
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

	add $4, $20, -20
	lw $5, 120($15)
	addi $6, $0, 20
	addi $7, $0, 20
	
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
	
	lw $5, 52($15)
	jal enedamage
	
	lw $8, 40($15)
	beq $8, $0, telavitoria
	
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
	
	lw $5, 52($15)
	jal enedamage
	
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
	
	lw $5, 52($15)
	jal enedamage
	
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
	addi $6, $0, 7
	addi $7, $0, 127
	
	addi $4, $0, 64
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

menutheme:	
	beq $3, $0, menu1
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
	
	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	jr $31
	
menu2:	addi $4, $0, 60#48 #c3
	addi $5, $0, 2000		#0:54
	addi $2, $0, 31 #2
	syscall
	
	addi $3, $0, 2
	addi $4, $0, 2000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31
menu3:	addi $4, $0, 55#43 #do#
	addi $5, $0, 800		#0:54
	addi $2, $0, 31 #3
	syscall
	
	addi $3, $0, 3
	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall

	jr $31
	
menu4:	addi $4, $0, 56#44 #do#
	addi $5, $0, 600		#0:54
	addi $2, $0, 31 #4
	syscall
	
	addi $3, $0, 4
	addi $4, $0, 600 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31

menu5:	addi $4, $0, 59#47 #do#
	addi $5, $0, 300		#0:54
	addi $2, $0, 31 #5
	syscall
	
	addi $3, $0, 5
	addi $4, $0, 300 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	jr $31
menu6:	addi $4, $0, 60#48 #c3#
	addi $5, $0, 2500		#0:54
	addi $2, $0, 31 #6
	syscall
	
	addi $3, $0, 6
	addi $4, $0, 2500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
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
#	Splash
tela:	
	#Nome do jogo
	
	add $18, $0, $31
	lui $15, 0x1001
	
	addi $15, $15, 24836
	
p:	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -7160

r:	
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
	addi $15, $15, 8
	
i:	addi $15, $15, 8
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
n:	add $15, $13, $0
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 56
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
c:	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
e:	addi $15, $15, 16

	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
o:	addi $15, $15, 32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
f:	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
persia:
	
	addi $15, $15, 32320
#=========== P	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -7160

#========= E
	addi $15, $15, 16

	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2

#==============  R
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
#============ S
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	
#============ I
	addi $15, $15, -7156
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
#============= A
	add $15, $13, $0
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 32368
	
	jal sequencia
	add $15, $0, $2

#============= Autores
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8192
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -8192
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
#=========== O

	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
#==========  R
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
#========= A
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 400
	
	jal sequencia
	add $15, $0, $2

#========== Dias
	
#============= D
	addi $15, $15, -8240
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -13312
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
#======================== I
	addi $15, $15, -2048
	
	addi $15, $15, 16
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
	add $15, $13, $0
	
#============= A

	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#================== A
	addi $15, $15, 16
	
	addi $15, $15, -8192
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
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
	
	addi $4, $21, -6224
	addi $5, $0, 38
	addi $6, $0, 30
	jal apagarp
	
	lw $9, 16($15) # PERDE VIDA
	addi $9, $9, -1
	
	sw $9, 16($15)
	
	
	add $31, $0, $22
	jr $31
#===================================================
#	FUNCAO DE COLISAO DE PAREDES
		
#	$4 = Posicao de verificacao
#	$
#	$6 = Quantas linhas
#	$7 = Quantas colunas

coliwall:	
	addi $9, $4, 0
	add $12, $0, $4
	
	add $11, $0, $6
	add $13, $0, $7
	
walloop:	
	lw $8, -4($9)
	lw $10, 0($9)
	
	bne $10, $8, nopeandar
 	
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
	
	addi $2, $0, 20
	
	
	
	
	add $31, $0, $22
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
apagar:	sw $0, 4($23)
	lui $8, 0x1001
	
	addi $10, $0, 32768
	addi $9, $0, 0x000000
	
apagte:	
	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -1
	
	bne $10, $0, apagte
	jr $31
