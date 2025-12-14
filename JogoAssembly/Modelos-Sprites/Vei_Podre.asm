.data
###########################################################
# VRAM BASE
###########################################################


###########################################################
# PALETA
###########################################################
A: .word 0x1d61b5      # Armadura
R: .word 0x47a6e6      # Roupa
P: .word 0xf0cd90      # Pele
O: .word 0xffffff      # Olho
Xc: .word 0x000000     # Contorno
T: .word 0xff00ff      # Transparente

###########################################################
# MATRIZ 24×24 (cada pixel é um ponteiro para a cor)
###########################################################

sprite:
# Linha 0
.word T,T,T,T,T,T,T,Xc,Xc,Xc,Xc,T,T,T,T,T,T,T,T,T,T,T,T
# Linha 1
.word T,T,T,T,T,T,Xc,Xc,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T,T,T
# Linha 2
.word T,T,T,T,T,A,A,A,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T,T,T
# Linha 3
.word T,T,T,T,Xc,A,A,R,R,R,A,A,Xc,T,T,T,T,T,T,T,T,T,T,T
# Linha 4
.word T,T,T,T,Xc,A,A,R,R,R,A,A,Xc,T,T,T,T,T,T,T,T,T,T,T
# Linha 5
.word T,T,T,Xc,A,A,A,R,R,R,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T
# Linha 6
.word T,T,T,Xc,A,A,A,A,R,A,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T
# Linha 7
.word T,T,T,Xc,A,A,A,A,A,Xc,Xc,Xc,Xc,A,A,Xc,T,T,T,T,T,T,T
# Linha 8
.word T,T,T,T,Xc,A,A,A,A,Xc,P,P,P,Xc,A,A,Xc,T,T,T,T,T,T
# Linha 9
.word T,T,T,T,T,Xc,A,A,A,P,P,P,P,Xc,A,A,Xc,T,T,T,T,T,T
# Linha 10
.word T,T,T,T,T,T,Xc,A,A,A,P,P,O,Xc,A,A,A,Xc,T,T,T,T,T
# Linha 11
.word T,T,T,Xc,Xc,Xc,Xc,A,A,A,P,P,P,P,Xc,A,A,A,T,T,T,T
# Linha 12
.word T,T,Xc,A,A,A,A,A,A,Xc,P,P,Xc,A,A,Xc,T,T,T,T,T,T
# Linha 13
.word T,T,Xc,A,A,A,A,A,A,Xc,P,P,Xc,A,A,A,Xc,T,T,T,T,T
# Linha 14
.word T,T,Xc,A,A,A,A,A,A,Xc,P,P,P,Xc,A,A,T,T,T,T,T,T
# Linha 15
.word T,T,T,Xc,A,A,A,A,A,Xc,P,P,P,Xc,T,T,T,T,T,T,T,T
# Linha 16
.word T,T,T,T,Xc,A,A,A,A,A,Xc,Xc,Xc,Xc,Xc,Xc,T,T,T,T,T,T
# Linha 17
.word T,T,T,T,T,T,Xc,A,A,A,A,A,A,Xc,Xc,Xc,T,T,T,T,T,T
# Linha 18
.word T,T,T,T,T,T,T,Xc,A,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T
# Linha 19
.word T,T,T,T,T,T,T,T,Xc,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T
# Linha 20
.word T,T,T,T,T,T,T,T,Xc,A,A,A,Xc,T,T,T,T,T,T,T,T,T,T
# Linha 21
.word T,T,T,T,T,T,T,Xc,A,A,A,A,A,Xc,T,T,T,T,T,T,T,T
# Linha 22
.word T,T,T,T,T,T,Xc,A,A,A,Xc,A,A,A,Xc,T,T,T,T,T,T
# Linha 23
.word T,T,T,T,T,T,Xc,Xc,Xc,Xc,T,T,Xc,Xc,Xc,Xc,T,T,T,T,T,T


###########################################################
# GERADOR – DESENHA A MATRIZ NO DISPLAY
###########################################################
.text
	lui   $15, 0x1001        # $15 = 0x10010000 (início da VRAM)
	addi  $15, $15, 0        # offset inicial opcional
main:

    la   $2, sprite        # matriz
    add  $3, $15, $0    # posição inicial na VRAM

    li   $t2, 24            # 24 linhas

linha_loop:

    li   $t3, 24            # 24 pixels por linha
    move $t4, $t1           # posição horizontal atual

pixel_loop:

    lw   $t5, 0($3)        # cor
    move $t4, $t4           # posição destino
    li   $t6, 1             # 1 pixel
    li    $t7, 0

    jal  sequencia          # desenha um pixel

    addi $t0, $t0, 4        # próximo elemento da matriz
    addi $t4, $t4, 4        # deslocamento horizontal

    addi $t3, $t3, -1
    bnez $t3, pixel_loop

    addi $t1, $t1, 1024     # próxima linha (display do MARS)
    addi $t2, $t2, -1
    bnez $t2, linha_loop

fim:
    li $v0, 10
    syscall

sequencia:	sw $5, 0($3)
	jr $31