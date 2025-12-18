.text

main:	
#================================================================
#	Movimento do megaman
	lui $24, 0x1001
	
	# 1d61b5 = Armadura
	# 47a6e6 = Roupa
	# f0cd90 = PELE
	# ffffff = OLHO
	# 000000 = CONTORNO/PUPILA/ BOCA
	# ff00ff = CONTORNO DE DESENVOLVIMENTO
	
	# DO VERTOR AUXILIAR PARA MEGA SE SOMA 14376 para frente
	# DO VERTOR AUXILIAR PARA MEGA SE SOMA 24536 para o pé
	# DO VERTOR AUXILIAR PARA MEGALEVE SE SOMA 14376 para frente
	# DO VERTOR AUXILIAR PARA MEGALEVE SE SOMA 24536 para o pé
	# DO VERTOR AUXILIAR PARA MEGAPULO SE SOMA 2104 para frente
	# DO VERTOR AUXILIAR PARA MEGAPULO SE SOMA 18420 para pousar
	# DO VERTOR AUXILIAR PARA MEGAPULO SE SOMA -1024 para a nuca
	# DO VERTOR AUXILIAR PARA MEGAPACO1 SE SOMA 10288 para frente
	# DO VERTOR AUXILIAR PARA MEGAPACO1 SE SOMA 24532 para o pé
	# DO VERTOR AUXILIAR PARA MEGAPACO2 SE SOMA 5148 para frente
	# DO VERTOR AUXILIAR PARA MEGAPACO2 SE SOMA 24552 para o pé
	# DO VERTOR AUXILIAR PARA MEGAPACO3 SE SOMA 15392 para frente
	# DO VERTOR AUXILIAR PARA MEGAPACO3 SE SOMA 24532 para o pé
	# DO VERTOR AUXILIAR PARA MEGATIRO SE SOMA 10788 do MEGABUSTER para ele comecar na frente do MEGATIRO
	
	
	addi $24, $24, 14396
	
	add $3, $0, $24
	
	addi $8, $0, 0xff00
	
	sw $8, 24536($3)
	
	j pacoleve
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
	
#============== BRACO ESQUERDO
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
	
#	jr $31	

#============== FIM DO PRIMEIRO PASSO


#=====================================================
#=====================================================
#=====================================================

megapaco2:	
	add $24, $3, 0#POR ENQUANDO SÓ PARA TESTE
	
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
	
#	add $31, $0, $18
	
#	jr $31

#============== FIM DO SEGUNDO PASSO


#==============================================
#==============================================
#==============================================
	
megapaco3:	
	addi $24, $3, 0 #NÃO VAI ESTAR ASSIM NO CÓDIGO FINAL
	
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
	
#	add $31, $0, $18
	
#	jr $31
		
#============== FIM DA FUNÇÃO MEGAPACO3
	
megapulo:	
	addi $24, $3, 0
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
	
#	add $31, $0, $18
#	jr $31
	
pacoleve:	
	add $24, $3, $0
	
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

#============== NUCA PART5 / BOTÃƒO DA CABEÃ‡A
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
	
#============== BRAÃ‡O E BUXO
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
	
#============== ESPAÃ‡OES ENTRE MÃƒO E COSTAS
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
	
#============== DEDOS DA MÃƒO FECHADA
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
	
#============== PÃ‰ ESQUERDO
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
	
#============== PÃ‰ DIREITO
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
	
#=================================================	
#============== FUNCAO DO MEGATIRO
megatiro:	addi $24, $3, 480


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
	
#	jr $31	

#============ MEGABUSTER
megabuster:	addi $24, $3, 548
	
	addi $24, $24, 10240
	
#=========== CONTORNO
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
	addi $5, $0, 0xffffff #CHARME
	addi $6, $0, 2
	addi $7, $0, 1020
	
	jal sequencia
	add $24, $0, $2
	
	add $4, $0, $24
	addi $5, $0, 0xffffff #CHARME
	addi $6, $0, 1
	addi $7, $0, 0
	
	jal sequencia
	add $24, $0, $2
	
	
fim:	addi $2, $0, 10
	syscall

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
