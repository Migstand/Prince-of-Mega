.text
main:
# som de tiro e som da faca megaman e skullman
#	$4, #TIPO DE NOTA ou pausa
#	$5 #O TEMPO PARA DURAR SOM OU PAUSA
#	$2, $0, 31 #FUNCIONA UM SOM
#	$2, $0, 32 #FUNCIONA UMA PAUSA
#	$6, $0, 0 #INSTRUMENTO TOCADO
#	j n2
#	j n3
#	j n4
	j n5
	addi $6, $0, 40 #cordas
	addi $7,$0, 40 #volume
	
	addi $4, $0, 78 #re
	addi $5, $0, 400
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 66 #re
	addi $5, $0, 400
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	j main
	
n2:	addi $6, $0, 42 #cordas
	addi $7,$0, 70 #volume
	addi $4, $0, 78 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 66 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	j main
	
n3:	addi $6, $0, 57 #cordas
	addi $7,$0, 60 #volume
	addi $4, $0, 88 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	addi $4, $0, 64 #re
	addi $5, $0, 500
	addi $2, $0, 31
	syscall
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	j main
	
n4:	addi $6, $0, 100 #efeito
	addi $7,$0, 50 #volume
	addi $4, $0, 98 #re
	addi $5, $0, 2000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 4000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	j main
	
#========================================================
#	Tiro do mega
n5:	addi $6, $0, 7 #efeito
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
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	j main
