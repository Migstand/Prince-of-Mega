.text

main:	#FUNCAO DOS MOVIMENTOS DO SKULL
	
	lui $8, 0x1001
	
	addi $9, $0, 32768
	
	addi $10, $0, 0x0000ff
	
azul:	beq $9, $0, copia
	sw $10, 0($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j azul
	
copia:	jal copiace
	
looptest:	

	lui $15, 0x1001
	
	addi $25, $15, 56132
	add $20, $0, $25
	
	addi $15, $15, 1310720
	
	addi $8, $0, 26
	sw $8, 20($15)	
	
	
	

movesku:	
	lw $13, 20($15)
	
	beq $13, 26, chaoskul
	j puloskull
	
	
chaoskul:	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 36
	
	jal apagarp
	
	jal skull
	
	addi $4, $0, 100000
	jal timer


puloskull:
	add $25, $20, $0
	lw $13, 20($15)
	
	beq $13, $0, quedasku
	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 36
	
	jal apagarp
	
	jal jskull
	
	addi $25, $20, -1024
	addi $20, $20, -1024
	
	
	addi $9, $0, 20 #CAMADA 1
	slt $8, $9, $13
	beq $8, 1, jskul1
	
	addi $9, $0, 10 # CAMADA 2
	slt $8, $9, $13
	beq $8, 1, jskul2
	
	j jskul3
		
jskul1:	add $4, $0, 200
	
	jal timer
	
	j skut
	
jskul2:	add $4, $0, 2000
	
	jal timer
	
	j skut

jskul3:	add $4, $0, 6000
	
	jal timer
	
skut:	
	addi $13, $13, -1
	sw $13, 20($15)
	
	j movesku

quedasku:	
	beq $13, 26, movesku
	
	add $25, $20, $0
	lw $13, 20($15)
	
	
	addi $4, $20, -1072
	addi $5, $0, 30
	addi $6, $0, 30
	
	jal apagarp
	
	jal jskull
	
	addi $25, $20, 1024
	addi $20, $20, 1024
	
	
	addi $9, $0, 10 #CAMADA 1
	slt $8, $13, $9
	beq $8, 1, qskul1
	
	addi $9, $0, 20 # CAMADA 2
	slt $8, $13, $9
	beq $8, 1, qskul2
	
	j qskul3
		
qskul1:	add $4, $0, 4000
	
	jal timer
	
	j skutq
	
qskul2:	add $4, $0, 1000
	
	jal timer
	
	j skutq

qskul3:	add $4, $0, 100
	
	jal timer
	
skutq:	
	addi $13, $13, 1
	sw $13, 20($15)
	
	j quedasku
	
	
fim:	addi $2, $0, 10
	syscall 
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

	#C�pia do cen�rio
	
copiace:	addi $8, $0, 131072
	
	lui $9, 0x1001


loopce:
	lw $10, 0($9)
	
	sw $10, 131072($9)
	
	addi $8, $8, -1
	addi $9, $9, 4
	
	bne $8, $0, loopce
	
	jr $31