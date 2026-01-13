# som vitoria mm 2.9 megaman final

#	$5 #O TEMPO PARA DURAR SOM OU PAUSA
#	$2, $0, 31 #FUNCIONA UM SOM
#	$2, $0, 32 #FUNCIONA UMA PAUSA
#	$6, $0, 0 #INSTRUMENTO TOCADO

	j v2
	addi $6, $0, 7 #cordas
	addi $7,$0, 100 #volume
	
	addi $4, $0, 60 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 7 #efeito
	addi $7,$0, 100 #volume
	addi $4, $0, 60 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 350 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	#===============================================
	
	addi $6, $0, 7 #cordas
	addi $7,$0, 100 #volume
	
	addi $4, $0, 62 #re
	addi $5, $0, 250
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 7 #efeito
	addi $7,$0, 100 #volume
	addi $4, $0, 62 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 350 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
#=====================================

	addi $6, $0, 7 #cordas
	addi $7,$0, 100 #volume
	
	addi $4, $0, 64 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 7 #efeito
	addi $7,$0, 100 #volume
	addi $4, $0, 64 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 350 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
#================================

	addi $6, $0, 100 #piano
	addi $7,$0, 100 #volume
	
	addi $4, $0, 70 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 100 #piano
	addi $7,$0, 100 #volume
	addi $4, $0, 66 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 120 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 100 #piano
	addi $7,$0, 100 #volume
	addi $4, $0, 70 #re
	addi $5, $0, 750
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 150 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $6, $0, 100 #efeito
	addi $7,$0, 100 #volume
	addi $4, $0, 72 #re
	addi $5, $0, 1000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 750 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $2, $0, 10
	syscall

v2:	addi $6, $0, 55 #conjunto / piano 7
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