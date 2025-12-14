.text
	#Cenário
	# $13, $12 = Registradores suportes
	
main:
	
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
	
loopmain:	beq $13, $0, fim

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
	
#=============== Brincando com o código
tocha:	lui $15, 0x1001
	
	addi $15, $15, 15760
	
	add $4, $0, $15 
	add $5, $0, 0xffff00
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 
	add $5, $0, 0xffff00
	addi $6, $0, 9
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	
	add $4, $0, $15 
	add $5, $0, 0xffff00
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoupt
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
