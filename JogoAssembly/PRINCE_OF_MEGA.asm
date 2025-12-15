.text

main:	#ESSE ï¿½ O PROGRAMA PARA CARREGAR O JOGO TODO

cenario:	
	# 485054 Piso 3d
	# 242424 Tijolo do fundo
	# 828282 Pilar
	# 212121 Entre pilares
	# 2e2e2e Sombra do pilar
	# b0b0b0 Piso do pilar
	
	lui $15, 0x1001
	
	add $4, $0, $15
	add $5, $0, 0x4850
	sll $5, $5, 8
	ori $5, $5, 0x54
	addi $6, $0, 512
	addi $7, $0, 972
	
	jal sequencia
	add $15, $0, $2
	
#==============	TETO CINZA

#============== PRIMEIRO PILAR 
	
	add $4, $0, $15
	add $5, $0, 0x8282
	sll $5, $5, 8
	ori $5, $5, 0x82
	addi $6, $0, 21
	addi $7, $0, 8
	
	jal verticais
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 21
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 20
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 19
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 18
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 17
	
	jal vertical
	add $15, $0, $2
	
#============== PULA PARA UMA SEQUï¿½NCIA DE DIAGONAIS PARA O PISO DO PRIMEIRO PILAR
	addi $15, $15, 22432
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== SOMBRA NA FRENTE DO PISO DO PRIMEIRO PILAR
	addi $15, $15, 928
	add $4, $0, $15
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#=============== SOMBRA DO PISO DO PRIMEIRO PILAR 
	addi $15, $15, 972
	add $4, $0, $15
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $15, $0, $2

#============== SEGUNDO PILAR ABAIXO DO PRIMEIRO
	
	add $4, $0, $15
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $15, $0, $2
	
#============= SEGUNDO PILAR SOMBRA
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $15, $0, $2

#============== SEGUNDO PILAR PISO
	addi $15, $15, 29600
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#============== SEGUNDO PILAR SOBRA DO PISO
	addi $15, $15, 928
	add $4, $0, $15
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#=============== SOMBRA DO PISO DO SEGUNDO PILAR 
	addi $15, $15, 972
	add $4, $0, $15
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $15, $0, $2

#=============== TERCEIRO PILAR
	add $4, $0, $15
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $15, $0, $2
	
#============= TERCEIRO PILAR SOMBRA
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $15, $0, $2

#============== TERCEIRO PILAR PISO
	addi $15, $15, 29600
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#============== TERCEIRO PILAR SOBRA DO PISO
	addi $15, $15, 928
	add $4, $0, $15
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#=============== SOMBRA DO PISO DO TERCEIRO PILAR 
	addi $15, $15, 972
	add $4, $0, $15
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $15, $0, $2
	
#============== QUARTO PILAR
	add $4, $0, $15
	add $5, $0, 0x828282
	addi $6, $0, 29
	addi $7, $0, 8
	
	jal verticais
	add $15, $0, $2
	
#============= QUARTO PILAR SOMBRA
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 29
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 28
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 27
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 26
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 25
	
	jal vertical
	add $15, $0, $2

#============== QUARTO PILAR PISO
	addi $15, $15, 29600
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 8
	addi $7, $0, 4
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 9
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb0b0b0
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#============== QUARTO PILAR SOBRA DO PISO
	addi $15, $15, 928
	add $4, $0, $15
	addi $5, $0, 0x24224d
	addi $6, $0, 24
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#=============== SOMBRA DO PISO DO QUARTO PILAR 
	addi $15, $15, 972
	add $4, $0, $15
	addi $5, $0, 0x032282
	addi $6, $0, 12
	addi $7, $0, 976
	
	jal sequencia
	add $15, $0, $2
	
#============== ULTIMO PILAR QUE Nï¿½O PODE ENTRAR NO VETOR DE CLONAGEM/ESPELHADO
	add $4, $0, $15
	add $5, $0, 0x828282
	addi $6, $0, 5
	addi $7, $0, 8
	
	jal verticais
	add $15, $0, $2
	
#============= QUARTO PILAR SOMBRA
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha da coluna no topo
	add $5, $0, 0x24224d
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2

#============== PISO CENï¿½RIO
	
	lui $15, 0x1001
	addi $15, $15, 32768
	
#=============== Borda superior DO PISO SUPERIOR
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 90
	addi $7, $0, 664
	
	jal sequencia
	add $15, $0, $2
	
#============== LAGE DO PISO SUPERIOR
	add $4, $0, $15
	add $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 43
	
	jal verticais
	add $15, $0, $2
#============== DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 11
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 10
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 9
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 7
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha subindo
	add $5, $0, 0x485054
	addi $6, $0, 1
	
	jal vertical
	add $15, $0, $2
	
#============== LINHA DE CORTE DA LAGE DO PISO SUPERIOR
	addi $15, $15, 12236
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#=============	DIAGONAIS DA LAGE DO PISO SUPERIOR
	
	addi $15, $15, -1020
	add $4, $0, $15
	addi $5, $0, 0x485054
	addi $6, $0, 12
	addi $7, $0, 27
	
	jal diagoup
	add $15, $0, $2
	
#============= FINAL DAS DIAGONAIS DO PISO SUPERIOR
	
	addi $15, $15, 1020
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xfffff7
	addi $6, $0, 13
	addi $7, $0, 5
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== BRILHO DO CHï¿½O DO PISO SUPERIOR 
	addi $15, $15, -312
	add $4, $0, $15
	addi $5, $0, 0x828282
	addi $6, $0, 41
	addi $7, $0, 12
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x828282
	addi $6, $0, 27
	addi $7, $0, 732
	
	jal sequencia
	add $15, $0, $2
	
#=============== FIM DO PISO SUPERIOR COM A BORDA INFERIOR DELE
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 79
	addi $7, $0, 716
	
	jal sequencia
	add $15, $0, $2
	
#============	MURO DEBAIXO DO PISO SUPERIOR
	add $4, $0, $15
	add $5, $0, 0x242424
	addi $6, $0, 81
	addi $7, $0, 25
	
	jal verticais
	add $15, $0, $2

#============== lINHAS DIAGONAIS DO MURO DEBAIXO DO PISO SUPERIOR
	addi $15, $15, 27548
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 9212
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 9212
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 9212
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 9212
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 9212
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 25
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 8192
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 24
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 32
	
	add $4, $0, $15
	addi $5, $0, 0x3b3b47
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#============== lINHAS VERTICAIS DO MURO DEBAIXO DO PISO SUPERIOR	
	addi $15, $15, -81936
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 40
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x3b3b47
	addi $6, $0, 81
	
	jal vertical
	add $15, $0, $2
	
#============== CONTORDO AO REDOR DO PILAR DEBAIXO DO PISO SUPERIOR
	addi $15, $15, 96
	
	add $4, $0, $15 
	add $5, $0, 0x212121
	addi $6, $0, 39
	
	jal vertical
	add $15, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR	
	
	add $4, $0, $15
	addi $5, $0, 0x212121
	addi $6, $0, 16
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#============== SOMBRA DO PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	add $4, $0, $15
	add $5, $0, 0x141414
	addi $6, $0, 23
	addi $7, $0, 6
	
	jal verticais
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x141414
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
#============== PILAR DO FUNDO DEBAIXO DO PISO SUPERIOR
	add $4, $0, $15
	add $5, $0, 0x3d3d3d
	addi $6, $0, 22
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2

#============== PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $15, $15, -104
	add $4, $0, $15
	add $5, $0, 0x828282
	addi $6, $0, 38
	addi $7, $0, 7
	
	jal verticais
	add $15, $0, $2
	
#============== SOMBRA DO PILAR DEBAIXO DO PISO SUPERIOR

	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x212121
	addi $6, $0, 38
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 38
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 37
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 36
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 35
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Linha decendo
	add $5, $0, 0x2e2e2e
	addi $6, $0, 34
	
	jal vertical
	add $15, $0, $2

#============== CHï¿½O DA QUEDA DO PISO PRINCIPAL
	addi $15, $15, 26624
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x3d3d3d
	addi $6, $0, 9
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2

#============== APOIO DO PILAR DEBAIXO DO PISO SUPERIOR
	
	addi $15, $15, 6084
	add $4, $0, $15
	addi $5, $0, 0x212121
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2

#============== APOIO DO CHï¿½O DA QUEDA DO PISO PRINCIPAL
	add $4, $0, $15
	addi $5, $0, 0x1f1f1f
	addi $6, $0, 15
	addi $7, $0, 2
	
	jal diagoup
	add $15, $0, $2
#============== APOIO DO PISO PRINCIPAL NA PARTE SUPERIOR	
	addi $15, $15, -15348
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -3064
	
	add $4, $0, $15 # A LINHA RETA DO PONTO SUPERIOR DO SUPORTE
	add $5, $0, 0x474747
	addi $6, $0, 2
	addi $7, $0, 183
	
	jal verticais
	add $15, $0, $2
	
#============== PEQUENA CONEXï¿½O COM O CHï¿½O DA QUEDA
	addi $15, $15, 16596
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x474747
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== PISO PRINCIPAL
	add $4, $0, $15
	addi $5, $0, 0x485054
	addi $6, $0, 11
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2

	add $4, $0, $15
	addi $5, $0, 0x485054
	addi $6, $0, 16
	addi $7, $0, 175
	
	jal diagoup
	add $15, $0, $2
	
#============== SUPORTE INFERIOR DO PISO PRINCIPAL
	addi $15, $15, 272 
	
	add $4, $0, $15
	addi $5, $0, 0x828282
	addi $6, $0, 188
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#============= COLUNA DO PISO PRINCIPAL
	addi $15, $15, -756
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 40
	addi $7, $0, 189
	
	jal verticais
	add $15, $0, $2

#============== DIAGONAIS Nï¿½O Tï¿½O LEGAIS FORA DO RANGE
	addi $15, $15, -1024
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 14
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 13
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 12
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 11
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== MALDITO TRIANGULO FORA DO RANGE DIAGONAL
	addi $15, $15, -7140
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x242424
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA
	addi $15, $15, 7108
		
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 41
	addi $7, $0, 4
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 24
	addi $7, $0, 11
	
	jal verticais
	add $15, $0, $2

#============== TRIANGULO INVERTIDO MALTIDO FORA DO RANGE DIAGONAL
	addi $15, $15, 24532
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 7
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 1
	
	jal vertical
	add $15, $0, $2
	
#============== DE VOLTA AS ORIGENS DA COLUNA DE NOVO  >:  (	!!!!!!!!!!!!!!!
	addi $15, $15, 9188
	
	add $4, $0, $15 
	add $5, $0, 0x242424
	addi $6, $0, 6
	addi $7, $0, 11
	
	jal verticais
	add $15, $0, $2

#============== TIJOLOS DA COLUNA
	addi $15, $15, -33576
	
	addi $12, $0, 13
	addi $13, $0, 4
	
loopmain:	beq $13, $0, copia

loop:	beq $12, $0, loopm
	add $4, $0, $15 
	add $5, $0, 0x828282
	addi $6, $0, 7
	addi $7, $0, 11
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 12
	addi $12, $12, -1
	j loop
	
loopm:	addi $13, $13, -1
	addi $12, $0, 13
	addi $15, $15, 9512
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

#============== NUCA PART5 / BOTï¿½O DA CABEï¿½A
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
	
#============== BRAï¿½O E BUXO
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
	
#============== ESPAï¿½OES ENTRE Mï¿½O E COSTAS
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
	
#============== DEDOS DA Mï¿½O FECHADA
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
	
#============== Pï¿½ ESQUERDO
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
	
#============== Pï¿½ DIREITO

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

#============== SOLA DOS Pï¿½S
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
	
	
	lui $15, 0x1001
	
	addi $25, $15, 56132
	add $20, $0, $25
	jal skull
	
	addi $4, $0, 500000
	jal timer
	
	lui $23, 0xffff
	# $9 = Vai ser quem vai carregar a letra do teclado
	# $17 = Valor de movimento; Indica qual movimento deve fazer no momento
	# $10 = Vai ser o comparador de teclas; ver se é igual a "TECLA"
	# $16 = Vai guardar a cópia da letra 
	
funx:	addi $13, $0, 10
	add $25, $0, $20
	add $20, $0, $25
#=============== POSIÇÃO ACIMA
# 	$20 = GUARDA A POSICAO AUXILIAR DO SKULLMAN
# 	POR ENQUANTO NESSE CÓDIGO O $13 vai cuidar do pulo mas não deve ser usado assim no código final provavelmente
puloskull:	beq $13, $0, puloskull2
	jal moveset
	
	
	
	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 38
	
	jal apagarp
		
	jal jskull
	
	
	
	bne $14, $0, lagp1
	add $4, $0, 50
	
	jal timer

	j bufp1
	
lagp1:	
	beq $13, 1, bufp1
	beq $13, 2, bufp2
	beq $13, 3, bufp3
	beq $13, 4, bufp4
	beq $13, 5, bufp5
	beq $13, 6, bufp6
	beq $13, 7, bufp7
	beq $13, 8, bufp8
	beq $13, 9, bufp9
	beq $13, 10, bufp10
bufp1:	
	addi $25, $20, -1024
	addi $20, $20, -1024
		
	addi $13, $13, -1
	j puloskull

bufp2:	
	
	addi $25, $20, -2048
	addi $20, $20, -2048
	
	
	
	addi $13, $13, -2
	j puloskull

bufp3:	
	
	addi $25, $20, -3072
	addi $20, $20, -3072
	addi $13, $13, -3
	j puloskull	

bufp4:	
	
	
	addi $25, $20, -4096
	addi $20, $20, -4096
	addi $13, $13, -4
	j puloskull	
bufp5:	
	
	addi $25, $20, -5120
	addi $20, $20, -5120
	addi $13, $13, -5
	j puloskull

bufp6:	
	
	addi $25, $20, -6144
	addi $20, $20, -6144
	addi $13, $13, -6
	j puloskull
bufp7:	
	
	addi $25, $20, -7168
	addi $20, $20, -7168
	addi $13, $13, -7
	j puloskull
bufp8:	
	
	addi $25, $20, -8192
	addi $20, $20, -8192
	addi $13, $13, -8
	j puloskull
bufp9:	
	
	
	addi $25, $20, -9216
	addi $20, $20, -9216
	addi $13, $13, -9
	j puloskull
bufp10:	
	
	addi $25, $20, -10240
	addi $20, $20, -10240
	addi $13, $13, -10
	j puloskull


	

puloskull2:	addi $13, $0, 10
	
pulosku2:	beq $13, $0, puloskull3
	jal moveset
	add $25, $0, $20
	add $20, $0, $25
	
	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 44
	
	jal apagarp
		
	jal jskull
	
	
	bne $14, $0, lagp2
	addi $4, $0, 200
	jal timer
	
	j bufp21
	
	j bufp21
	
lagp2:	
	beq $13, 1, bufp21
	beq $13, 2, bufp22
	beq $13, 3, bufp23
	beq $13, 4, bufp24
	beq $13, 5, bufp25
	beq $13, 6, bufp26
	beq $13, 7, bufp27
	beq $13, 8, bufp28
	beq $13, 9, bufp29
	beq $13, 10, bufp210
bufp21:	
	addi $25, $20, -1024
	addi $20, $20, -1024
		
	addi $13, $13, -1
	j pulosku2

bufp22:	
	
	addi $25, $20, -2048
	addi $20, $20, -2048
	
	
	
	addi $13, $13, -2
	j pulosku2

bufp23:	
	
	addi $25, $20, -3072
	addi $20, $20, -3072
	addi $13, $13, -3
	j pulosku2

bufp24:	
	
	
	addi $25, $20, -4096
	addi $20, $20, -4096
	addi $13, $13, -4
	j pulosku2	
bufp25:	
	
	addi $25, $20, -5120
	addi $20, $20, -5120
	addi $13, $13, -5
	j pulosku2

bufp26:	
	
	addi $25, $20, -6144
	addi $20, $20, -6144
	addi $13, $13, -6
	j pulosku2
bufp27:	
	
	addi $25, $20, -7168
	addi $20, $20, -7168
	addi $13, $13, -7
	j pulosku2
bufp28:	
	
	addi $25, $20, -8192
	addi $20, $20, -8192
	addi $13, $13, -8
	j pulosku2
bufp29:	
	
	
	addi $25, $20, -9216
	addi $20, $20, -9216
	addi $13, $13, -9
	j pulosku2
bufp210:	
	
	addi $25, $20, -10240
	addi $20, $20, -10240
	addi $13, $13, -10
	j pulosku2
	
puloskull3:	addi $13, $0, 6
	
pulosku3:	beq $13, $0, queda
	jal moveset
	
	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 44
	
	jal apagarp
		
	jal jskull
	
	
	
	bne $14, $0, lagp3
	addi $4, $0, 5000
	jal timer
	
	j bufp31
lagp3:	
	beq $13, 1, bufp31
	beq $13, 2, bufp32
	beq $13, 3, bufp33
	beq $13, 4, bufp34
	beq $13, 5, bufp35
	beq $13, 6, bufp36
bufp31:	
	addi $25, $20, -1024
	addi $20, $20, -1024
		
	addi $13, $13, -1
	j pulosku3

bufp32:	
	
	addi $25, $20, -2048
	addi $20, $20, -2048
	
	
	
	addi $13, $13, -2
	j pulosku3

bufp33:	
	
	addi $25, $20, -3072
	addi $20, $20, -3072
	addi $13, $13, -3
	j pulosku3

bufp34:	
	
	
	addi $25, $20, -4096
	addi $20, $20, -4096
	addi $13, $13, -4
	j pulosku3	
bufp35:	
	
	addi $25, $20, -5120
	addi $20, $20, -5120
	addi $13, $13, -5
	j pulosku3

bufp36:	
	
	addi $25, $20, -6144
	addi $20, $20, -6144
	addi $13, $13, -6
	j pulosku3	
queda:	
	addi $4, $0, 25000
	
	jal timer
	jal moveset
	addi $13, $0, 6
	
quedasku:	beq $13, $0, queda2
	jal moveset
	
	
	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 40
	
	jal apagarp
		
	jal jskull
	
	
	bne $14, $0, lagq1
	add $4, $0, 5000
	
	jal timer
	
	
	j bufq1
	
lagq1:	
	beq $13, 1, bufq1
	beq $13, 2, bufq2
	beq $13, 3, bufq3
	beq $13, 4, bufq4
	beq $13, 5, bufq5
	beq $13, 6, bufq6
	beq $13, 7, bufq7
	beq $13, 8, bufq8
	beq $13, 9, bufq9
	beq $13, 10, bufq10
bufq1:	
	addi $25, $20, 1024
	addi $20, $20, 1024
		
	addi $13, $13, -1
	j quedasku

bufq2:	
	
	addi $25, $20, 2048
	addi $20, $20, 2048
	
	
	
	addi $13, $13, -2
	j quedasku

bufq3:	
	
	addi $25, $20, 3072
	addi $20, $20, 3072
	addi $13, $13, -3
	j quedasku	

bufq4:	
	
	
	addi $25, $20, 4096
	addi $20, $20, 4096
	addi $13, $13, -4
	j quedasku	
bufq5:	
	
	addi $25, $20, 5120
	addi $20, $20, 5120
	addi $13, $13, -5
	j quedasku

bufq6:	
	
	addi $25, $20, 6144
	addi $20, $20, 6144
	addi $13, $13, -6
	j quedasku
bufq7:	
	
	addi $25, $20, 7168
	addi $20, $20, 7168
	addi $13, $13, -7
	j quedasku
bufq8:	
	
	addi $25, $20, 8192
	addi $20, $20, 8192
	addi $13, $13, -8
	j quedasku
bufq9:	
	
	
	addi $25, $20, 9216
	addi $20, $20, 9216
	addi $13, $13, -9
	j quedasku
bufq10:	
	
	addi $25, $20, 10240
	addi $20, $20, 10240
	addi $13, $13, -10
	j quedasku
	
queda2:	addi $13, $0, 10

quedasku2:	beq $13, $0, queda3
	jal moveset
	
	add $4, $0, $25
	addi $4, $4, -5160
	addi $5, $0, 28
	addi $6, $0, 38
	
	jal apagarp
		
	jal jskull
	
	
	bne $14, $0, lagq2
	add $4, $0, 200
	
	jal timer
	
	
	j bufq22
	
lagq2:	
	beq $13, 1, bufq21
	beq $13, 2, bufq22
	beq $13, 3, bufq23
	beq $13, 4, bufq24
	beq $13, 5, bufq25
	beq $13, 6, bufq26
	beq $13, 7, bufq27
	beq $13, 8, bufq28
	beq $13, 9, bufq29
	beq $13, 10, bufq210
bufq21:	
	addi $25, $20, 1024
	addi $20, $20, 1024
		
	addi $13, $13, -1
	j quedasku2

bufq22:	
	
	addi $25, $20, 2048
	addi $20, $20, 2048
	
	
	
	addi $13, $13, -2
	j quedasku2

bufq23:	
	
	addi $25, $20, 3072
	addi $20, $20, 3072
	addi $13, $13, -3
	j quedasku2	

bufq24:	
	
	
	addi $25, $20, 4096
	addi $20, $20, 4096
	addi $13, $13, -4
	j quedasku2	
bufq25:	
	
	addi $25, $20, 5120
	addi $20, $20, 5120
	addi $13, $13, -5
	j quedasku2

bufq26:	
	
	addi $25, $20, 6144
	addi $20, $20, 6144
	addi $13, $13, -6
	j quedasku2
bufq27:	
	
	addi $25, $20, 7168
	addi $20, $20, 7168
	addi $13, $13, -7
	j quedasku2
bufq28:	
	
	addi $25, $20, 8192
	addi $20, $20, 8192
	addi $13, $13, -8
	j quedasku2
bufq29:	
	
	
	addi $25, $20, 9216
	addi $20, $20, 9216
	addi $13, $13, -9
	j quedasku2
bufq210:	
	
	addi $25, $20, 10240
	addi $20, $20, 10240
	addi $13, $13, -10
	j quedasku2
	
queda3:	addi $13, $0, 10
	
quedasku3:	beq $13, $0, chasku
	jal moveset
	
	add $4, $0, $25
	addi $4, $4, -7208
	addi $5, $0, 28
	addi $6, $0, 44
	
	jal apagarp
		
	jal jskull
	
	addi $25, $20, 1024
	addi $20, $20, 1024
	
	add $4, $0, 50
	
	jal timer
	
	
	

quedaskulf3:

	addi $13, $13, -1
notaskuj:	bne $13, 3, qnor
	
	addi $6, $0, 7
	addi $7, $0, 127
	
	addi $4, $0, 64
	addi $5, $0, 400
	addi $2, $0, 31
	syscall
	
qnor:	
	j quedasku3
chasku:	jal moveset
	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 34
	
	jal apagarp

	jal skull

fim:	jal moveset

	add $4, $0, 25000
	
	jal timer
	
	jal moveset
	
	j funx
	
	addi $2, $0, 10
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
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	addi $25, $25, -1024
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 4076
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	addi $25, $25, -1028
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, -2048
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Cor do Braï¿½o
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2040
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $6, $0, 0xffffff
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
	addi $6, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, -1020
	
	add $4, $0, $25 #Inï¿½cio do ombro
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, -2052
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25 
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25 
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	addi $25, $25, 2040
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $25, $0, $2
	
	add $4, $0, $25 #Cor da perna esquerda
	addi $5, $0, 0xffffff
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
	addi $5, $0, 0xffffff
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
	addi $6, $0, 0xffffff
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
	addi $5, $0, 0xffffff #Cor do braï¿½o
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do braï¿½o
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
	addi $5, $0, 0xffffff #Cor do Braï¿½o
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
	addi $5, $0, 0xffffff #Cor do Braï¿½o
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
	addi $5, $0, 0xffffff #Cor do Braï¿½o
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do Braï¿½o
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
	addi $6, $0, 0xffffff
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
	addi $5, $0, 0xffffff #COSTELA
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
	addi $5, $0, 0xffffff #COSTELA
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
	addi $5, $0, 0xffffff #COSTELA
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
	addi $5, $0, 0xffffff #COSTELA
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
	addi $5, $0, 0xffffff #COSTELA
	addi $6, $0, 0x000000
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2

#______________ COMEï¿½O DA PINTURA DO BOTï¿½O VERMELHO

	add $4, $0, $25
	addi $5, $0, 0xffffff #COSTELA
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
	addi $6, $0, 0xffffff
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
	addi $5, $0, 0xffffff #Perna
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
	addi $5, $0, 0xffffff #PERNA
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
	addi $5, $0, 0xffffff #PERNA
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #PERNA
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
	addi $5, $0, 0xffffff #Contorno
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	addi $25, $25, 1016

	add $4, $0, $25
	addi $5, $0, 0xffffff #Contorno
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
	addi $5, $0, 0xffffff #PERNA
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

#============== PERNA DIREITA QUE TÁ NO FUNDO
	
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
moveset:
	add $22, $0, $31
					
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
	
pacoleve:	
	addi $4, $24, 0
	add $12, $0, $4
	addi $5, $0, 10
	addi $6, $0, 21
	
	jal apagarp
	
	jal megaleve
	
	addi $4, $0, 40000
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
	addi $4, $24, -48
	add $12, $0, $4
	addi $5, $0, 28
	addi $6, $0, 24
	
	jal apagarp
	
	jal megapaco1 #1
	
	addi $4, $0, 10000
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp 
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco1 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco1 #3
	
	addi $4, $0, 15000
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 0
	addi $5, $0, 26
	addi $6, $0, 24
	
	jal apagarp
	
	
	addi $17, $17, 1
	addi $14, $0, 1
	
	add $31, $0, $22
	jr $31
	

#-------------------------------------------
#	SEGUNDO PACO	
paco2:	
	addi $4, $24, -44
	add $12, $0, $4
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
	
	jal megapaco2 #1
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, -40
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco2 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco2 #3
	
	addi $4, $0, 15000
	jal timer
	
	add $4, $0, $12
	addi $4, $4, 0
	addi $5, $0, 23
	addi $6, $0, 24
	
	jal apagarp
	
	beq $14, 2, minus
	addi $17, $17, 1
	
	add $31, $0, $22
	jr $31
	
minus:	addi $17, $0, 0

	add $31, $0, $22
	jr $31

#-------------------------------------------
#	TEREIRO PACO
	
paco3:	
	
	addi $4, $24, -44
	add $12, $0, $4
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
	
	jal megapaco3 #1
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco3 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, -28
	addi $5, $0, 1
	addi $6, $0, 1
	jal apagarp
	
	
	addi $21, $21, 4
	addi $24, $21, 0
	
	jal megapaco3 #3
	
	addi $4, $0, 15000
	jal timer
	
	add $4, $0, $12
	addi $4, $4, -8
	addi $5, $0, 24
	addi $6, $0, 24
	
	jal apagarp
	
	addi $17, $17, -1
	
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
	
pacolevet:	
	addi $4, $24, 0
	add $12, $0, $4
	addi $5, $0, 10
	addi $6, $0, 20
	
	jal apagarp
	
	jal megaleve
	
	addi $4, $0, 40000
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
	
	jal megapaco1 #1
	
	addi $4, $0, 10000
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp 
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco1 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco1 #3
	
	addi $4, $0, 15000
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
	
	jal megapaco2 #1
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco2 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, 4
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco2 #3
	
	addi $4, $0, 15000
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
	
minust:	addi $17, $0, 0
	jr $31

#-------------------------------------------
#	TEREIRO PACO PARA TRAS	
paco3t:	
	
	addi $4, $24, -28
	add $12, $0, $4
	addi $5, $0, 28
	addi $6, $0, 24
	
	jal apagarp
	
	jal megapaco3 #1
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, 28
	addi $5, $0, 1
	addi $6, $0, 1
	
	jal apagarp
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco3 #2
	
	addi $4, $0, 15000
	jal timer
	
	addi $4, $24, 28
	addi $5, $0, 1
	addi $6, $0, 1
	jal apagarp
	
	
	addi $21, $21, -4
	addi $24, $21, 0
	
	jal megapaco3 #3
	
	addi $4, $0, 15000
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
