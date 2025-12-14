.text

main:	
#================ Apaga a tela toda para o carregamento do proxímo cenário

apagar:	lui $15, 0x1001
	
	addi $14, $0, 32768
	addi $16, $0, 0x000000
	
apagte:	beq $14, $0, #cenario para ser carregado
	
	sw $16, 0($15)
	
	addi $15, $15, 4
	addi $14, $14, -1
	j apagte
