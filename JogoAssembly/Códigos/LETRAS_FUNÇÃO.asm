.text
	#FUNÇÕES PARA AS LETRAS
main:
	
letras:

p:	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -7160

r:	
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
	addi $15, $15, 8
	
i:	addi $15, $15, 8
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
n:	add $15, $13, $0
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	addi $15, $15, 56
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
c:	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
e:	addi $15, $15, 16

	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
o:	addi $15, $15, 32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
f:	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
persia:
	
	addi $15, $15, 32320
#=========== P	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -7160

#========= E
	addi $15, $15, 16

	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2

#==============  R
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
#============ S
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	
#============ I
	addi $15, $15, -7156
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
#============= A
	add $15, $13, $0
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 32368
	
	jal sequencia
	add $15, $0, $2

#============= Autores
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8192
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -8192
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
#=========== O

	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -14336
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
#==========  R
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	add $13, $15, $0
	
	addi $15, $15, 1024
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 6
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 6108
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
	addi $15, $15, -32
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	addi $7, $0, 1
	
	jal diagodw
	add $15, $0, $2
	
	add $15, $13, $0
	
#========= A
	
	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 400
	
	jal sequencia
	add $15, $0, $2

#========== Dias
	
#============= D
	addi $15, $15, -8240
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 14296
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -13312
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
#======================== I
	addi $15, $15, -2048
	
	addi $15, $15, 16
	
	add $13, $0, $15
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 1
	addi $7, $0, 2036
	
	jal sequencia
	add $15, $0, $2
	 
	addi $15, $15, 8
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 13
	
	jal vertical
	add $15, $0, $2
	
	add $15, $13, $0
	
#============= A

	addi $15, $15, 16
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -4
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 15
	
	jal vertical
	add $15, $0, $2
	
	addi $15, $15, 8152
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 0
	
	jal sequencia
	add $15, $0, $2
	
#================== A
	addi $15, $15, 16
	
	addi $15, $15, -8192
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 9
	addi $7, $0, 7128
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 10
	addi $7, $0, -7168
	
	jal sequencia
	add $15, $0, $2
	
	add $4, $0, $15
	addi $5, $0, 0xffffff
	addi $6, $0, 8
	
	jal vertical
	add $15, $0, $2