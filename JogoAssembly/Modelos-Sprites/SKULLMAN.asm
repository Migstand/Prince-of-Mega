.text

main:	
	
	#Skull man
#=============== CORES:
#	b4b4b4 = Sombra
#	ffffff = Oss
#	ed1c24 = Botão
#	000000 = Membros
#	f0be89 = Pele
skull:	
	
	lui $15, 0x1001
	
	addi $15, $15, 56132

skullhead:	
#================= NUCA DO SKULL	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
#================= TESTA
	addi $15, $15, 3040
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, -1024
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, -1032
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -1028
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 3
	
	jal verticais
	add $15, $0, $2
	
	addi $15, $15, 4076
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1020
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -4092
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2052
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
#=============== NUCA PART 2/ ORELHA DIREITA
	addi $15, $15, -1024
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2044
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
#============== ORELHA ESQUERDA
	addi $15, $15, -2100
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2040
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
#============== QUEIXO
	addi $15, $15, 3072
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 3072
	
	add $4, $0, $15 # Dente 1
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 4
	
	add $4, $0, $15 #Dente 2
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 4
	
	add $4, $0, $15 # Dente 3
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2032
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== BOCHECHA DIREITA
	addi $15, $15, -3072
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 2040
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -12
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -12
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, -1028
	
	jal sequencia
	add $15, $0, $2
	
#============== BOCA
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	addi $15, $15, -1028
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2

#============== CAMPO DE VISÃO/ OLHOS
	addi $15, $15, -6168
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, -1032
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -3064
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 0
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 4
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 1028
	
	add $4, $0, $15
	addi $5, $0, 0x00000
	addi $6, $0, 3
	addi $7, $0, 2
	
	jal diagoup
	add $15, $0, $2

#============== PELE DA CARA
	addi $15, $15, -5120
	
	add $4, $0, $15
	addi $5, $0, 0xf0be89
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2012
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -1024
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2044
	
	add $4, $0, $15
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, 1024
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xf0be89
	addi $6, $0, 2
	addi $7, $0, -1032
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, -2048
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2

#============= OBS 2: A CABEÇA TERMINA DEPOIS DO INÍCIO DO SEGUNDO OLHO NA PARTE BRANCA AO LADO DA PELE	
#============= OBS: COLOCAR JR $31 NESSE PONTO PARA QUE A CABEÇA SEJA UMA FUNÇÃO

#============== CORPO/ OMOBRO ESQUEDO
	addi $15, $15, 4056
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 7
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1008
	
	add $4, $0, $15 #Mais a esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1016
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Mais pra direita
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15 #Mais pro meio
	addi $5, $0, 0x000000
	addi $6, $0, 5
	
	jal vertical
	add $15, $0, $2
	
#============ BRAÇO ESQUERDO
	addi $15, $15, 1004
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodwt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 3056
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -1024
	
	add $4, $0, $15 #Sombra do Braço
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15 #Cor do braço
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Cor do Braço
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 2040
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Bico do canhão
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	add $4, $0, $15 #Sombra debaixo do braço
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1032
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 2036
	
	add $4, $0, $15 #Fim do contorno do braço esquedo
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#============== PEITORAL

#============== Começo do peito esquerdo
	addi $15, $15, -7152
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1020
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Começo a pintar o peito esquerdo
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 0xffffff
	addi $7, $0, 2
	
	jal par
	add $15, $0, $2
	
	addi $15, $15, -1024
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2

	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, -1020
	
	jal sequencia
	add $15, $0, $2
	
#============== Peito Direito
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 0xffffff
	addi $7, $0, 3
	
	jal par
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	addi $15, $15, 1000
	
	add $4, $0, $15 #Inicio da  costela direita
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1004
	
	add $4, $0, $15 #Meio da  costela direita
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 0
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Ligação da costela direita com a perna direita
	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1012
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $15, $0, $2
	
#============== Costela direita / fim da costela

	addi $15, $15, -1060
	
	add $4, $0, $15 #Contorno da costela
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Início da mescla com o botão
	addi $5, $0, 0x000000
	addi $6, $0, 0xed1c24
	addi $7, $0, 2
	
	jal par
	add $15, $0, $2
	
	addi $15, $15, -1028
	
	add $4, $0, $15 
	addi $5, $0, 0xffffff
	addi $6, $0, 0xed1c24
	addi $7, $0, 1
	
	jal par
	add $15, $0, $2
	
	add $4, $0, $15 # Resto do botão vermelho
	addi $5, $0, 0xed1c24
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 # Contorno do botão
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2036
	
	add $4, $0, $15 # Contorno do botão
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, -20
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 # Sombra da costela esquerda
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#============== OMBRO DIREITO !!!
	addi $15, $15, -5104
	
	add $4, $0, $15 #Início do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 4
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Sombra do ombro
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 4
	
	add $4, $0, $15 #Sombra do ombro
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Braço com o ombro
	addi $5, $0, 0x000000
	addi $6, $0, 7
	addi $7, $0, 1
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, -3080
	
	add $4, $0, $15 #Início do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Início do ombro
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1020
	
	add $4, $0, $15 #Início do ombro
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Fechar dobra do ombro
	addi $5, $0, 0x000000
	addi $6, $0, 5
	addi $7, $0, 1
	
	jal vertical
	add $15, $0, $2
	
#============== BRAÇO DIREITO DO SKULL
	addi $15, $15, 2048
	
	add $4, $0, $15 #Contorno do braço
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2048
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 2028
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
		
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#============== INTERIOR DO BRAÇO DIREITO
	addi $15, $15, -6152
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1012
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xffffff
	addi $6, $0, 0xb4b4b4
	addi $7, $0, 2
	
	jal par
	add $15, $0, $2
	
	addi $15, $15, 1008
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 4
	addi $7, $0, 1008
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 1
	addi $7, $0, 1024
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $15, $0, $2
	
#============== CINTURA/ PERNAS
	addi $15, $15, -1084
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 7
	
	jal verticais
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 3040
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 4052
	
	jal sequencia
	add $15, $0, $2
	
#=============== PERNA ESQUERDA
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -1020
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 6
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, -2052
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15 
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 1020
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Contorno debaixo da perna esquerda 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2

#============== SOLA DO PÉ ESQUERDO	
	addi $15, $15, 2012
	 
	add $4, $0, $15 
	addi $5, $0, 0x000000
	addi $6, $0, 9
	addi $7, $0, -1056
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 7
	addi $7, $0, -5124
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Preenchendo a perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 3052
	
	add $4, $0, $15 #Fim do contorno da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 1
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
#=============== PERNA DIREITA
	addi $15, $15, 1060
	
	add $4, $0, $15 #Contorno debaixo da perna direita
	addi $5, $0, 0x000000
	addi $6, $0, 3
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, -2048
	
	add $4, $0, $15 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0xffffff
	addi $6, $0, 2
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	addi $15, $15, 2040
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0xffffff
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoup
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, -1024
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 1024
	
	add $4, $0, $15 #Sombra da perna direita
	addi $5, $0, 0xb4b4b4
	addi $6, $0, 2
	addi $7, $0, 2
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 2024
	
	add $4, $0, $15 #Contorno da perna
	addi $5, $0, 0x000000
	addi $6, $0, 8
	addi $7, $0, -1028
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 3
	addi $7, $0, 1
	
	jal diagoupt
	add $15, $0, $2
	
	addi $15, $15, -6168
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 1016
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 4
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 5100
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0xffffff
	addi $6, $0, 5
	addi $7, $0, -12296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15 #Cor da perna esquerda
	addi $5, $0, 0x000000
	addi $6, $0, 2
	
	jal vertical
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

#========================================
#	Par de cores

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