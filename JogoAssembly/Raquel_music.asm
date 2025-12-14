.text
main:
#============== MÚSICAS ===========================================

#------------------------------------------------------------------------------------------------------------------------------------------------------
toca_inicial: #o cenario dura 4 segundos - 4000 ms
addi $6, $0, 0 #PIANO
addi $7, $0, 127


#DÓ
addi $4, $0, 72 #nota
addi $5, $0, 400  #duração
addi $2, $0, 31 #som
syscall

addi $4, $0, 400 #duração
addi $2, $0, 32 #pausa
syscall


#RÉ
addi $4, $0, 62 #nota
addi $5, $0, 400 #duração
addi $2, $0, 31 #som
syscall 

addi $4, $0, 400 #duração
addi $2, $0, 32 #pausa
syscall

#MI
addi $4, $0, 64 #nota
addi $5, $0, 400 #duração
addi $2, $0, 31 #som
syscall 

addi $4, $0, 400 #duração
addi $2, $0, 32 #pausa
syscall

#FÁ
addi $4, $0, 65 #nota
addi $5, $0, 1500 #duração
addi $2, $0, 31 #som
syscall

addi $4, $0, 500 #duração
addi $2, $0, 32 #pausa
syscall

j toca_inicial
