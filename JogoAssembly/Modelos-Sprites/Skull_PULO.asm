.text

main:	
	#Skull man pulando
	# $25 = Valor da posição do skullman
#	=============== CORES:
#	b4b4b4 = Sombra
#	ffffff = Oss
#	ed1c24 = Botão
#	000000 = Membros
#	f0be89 = Pele
	
	
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
	
#============== PULA PARA UMA SEQUÊNCIA DE DIAGONAIS PARA O PISO DO PRIMEIRO PILAR
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
	
#============== ULTIMO PILAR QUE NÃO PODE ENTRAR NO VETOR DE CLONAGEM/ESPELHADO
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

#============== PISO CENÁRIO
	
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
	
#============== BRILHO DO CHÃO DO PISO SUPERIOR 
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

#============== CHÃO DA QUEDA DO PISO PRINCIPAL
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

#============== APOIO DO CHÃO DA QUEDA DO PISO PRINCIPAL
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
	
#============== PEQUENA CONEXÃO COM O CHÃO DA QUEDA
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

#============== DIAGONAIS NÃO TÃO LEGAIS FORA DO RANGE
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
	
	
	lui $25, 0x1001
	
	addi $25, $25, 56132

	addi $13, $0, 50

#=============== POSIÇÃO ACIMA
	# POR ENQUANTO NESSE CÓDIGO O $13 vai cuidar do pulo mas não deve ser usado assim no código final provavelmente
puloskull:	beq $13, $0, queda

	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 35
	
	jal apagarp
		
	jal jskull
	
	addi $25, $3, -1024
	addi $3, $3, -1024
	
	jal timer
	
	addi $13, $13, -1
	j puloskull
	
queda:	addi $13, $0, 50

quedasku:	
	beq $13, $0, fim

	add $4, $0, $25
	addi $4, $4, -40
	addi $5, $0, 28
	addi $6, $0, 34
	
	jal apagarp
		
	jal jskull
	
	addi $25, $3, 1024
	addi $3, $3, 1024
	jal timer
	
	addi $13, $13, -1
	j quedasku
	
fim:	
	addi $2, $0, 10
	syscall
	
#================================================================
#	CÓDIGO DA CABEÇA DO SKULL MAN

skullhead:	
#================= NUCA DO SKULL
	# Por enquanto o registrador que vai guardar a cabeça vai ser o $19
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

#============== CAMPO DE VISÃO/ OLHOS
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

#=================================================================
#	SEQUÊCIA DE PAR DE CORES DIFERENTES
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

#===============================================================
#	Temporizador

timer:	addi $8, $0, 20000
	
tempo:	beq $8, $0, vol
	nop
	addi $8, $8, -1
	j tempo
	
vol:	jr $31

#===============================================================
#	Cópia do cenário
	
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
	
	add $3, $0, $25
	add $14, $0, $31
	jal skullhead
	
	add $31, $0, $14
jumpskull:	

#============== BRAÇO ESQUERDO
	addi $25, $25, -1084
	
	add $4, $0, $25 #CONTORNO DO BRAÇO 
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
	
#-------------- Dobra para o contorno em baixo do braço esquerdo
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
	addi $5, $0, 0xffffff #Cor do braço
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do braço
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
	
#-------------- Dobra do braço
	addi $25, $25, 2048
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braço
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $25, $0, $2
	
	addi $25, $25, 2044
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do braço
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	
#============== BRAÇO DIREITO
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
	
#-------------- DENTRO DA MÃO
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do Braço
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xb4b4b4 #Cor do Braço
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do Braço
	addi $6, $0, 0x000000
	addi $7, $0, 2
	
	jal par
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braço
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
	addi $5, $0, 0x000000 #Cor do Braço
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Cor do Braço
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
	addi $5, $0, 0x000000 #Cor do Braço
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
	addi $5, $0, 0xffffff #Cor do Braço
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0xffffff #Cor do Braço
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
	
#-------------- LIGAÇÃO DO BRAÇO COM O CORPO
	addi $25, $25, 1004
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braço
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braço
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braço
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $25, $0, $2
	
	addi $25, $25, 1020
	
	add $4, $0, $25
	addi $5, $0, 0x000000 #Braço
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
	addi $5, $0, 0x000000 #CONTORNO DO BOTÃO VERMELHO
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

#______________ COMEÇO DA PINTURA DO BOTÃO VERMELHO

	add $4, $0, $25
	addi $5, $0, 0xffffff #COSTELA
	addi $6, $0, 0xed1c24 #Botão
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
	addi $5, $0, 0xed1c24 #BOTÃO VERMELHO
	addi $6, $0, 2
	addi $7, $0, 1008
	
	jal sequencia
	add $25, $0, $2

#______________ CONTORNO DO BOTÃO

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
	
	add $31, $0, $14
	jr $31
	