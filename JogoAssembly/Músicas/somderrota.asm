.text

main:	
	j v1
	#j v2
#musica perder testar e escolher instrumento final 
v1:	addi $6, $0, 5 #conjunto / piano 5, 7, 86, 97,  
	addi $7, $0, 100 #volume
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1200 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 1200
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 500 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 2000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1100 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
#====================

	addi $4, $0, 64 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 3250
	addi $2, $0, 31
	syscall

	addi $4, $0, 400 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $2, $0, 10
	syscall
#=============================================
#musica derrota teste 
v2:	addi $6, $0, 16 #conjunto / piano 7
	addi $7, $0, 100 #volume
	
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 1000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 2000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 800 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
#====================
	addi $4, $0, 64 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 1000 #coloca o tempo da pausa no reg 4
	addi $2, $0, 32 #quando usa o 32 no reg2 usa o syscall da pausa
	syscall
	
	addi $4, $0, 64 #do#
	addi $5, $0, 800
	addi $2, $0, 31
	syscall
	
	addi $4, $0, 59 #do#
	addi $5, $0, 3000
	addi $2, $0, 31
	syscall	
