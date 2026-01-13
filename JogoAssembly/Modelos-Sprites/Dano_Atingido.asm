.text

main:	#SPRITE DO DANO ATINGIDO

#==============================================================
#	Flicker do dano

#	PARA USAR A FUNCAO, COLOQUE NO $4 O VALOR DA MEMÓRIA DE ONDE ELE DEVE COMEÇAR

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