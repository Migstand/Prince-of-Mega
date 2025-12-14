.data
tela: .space 8192 # tamanho da tela (128, 64)

.text
main:
lui $t0, 0x1001        # para iniciar $t0 no endereço 10010000
li $s0, 10             # vou precisar desse 10 em $s0
li $s1, 100            # vou precisar desse 100 em $s1
jal Cenario            # chamada para desenhar o cenário
jal PintarCoelho1      # chamada para pintar o coelho
li $t0, 0x10010e10     # seta o endereço inicial do primeiro algarismo
li $t1, 0x00000000     # seta a cor para desenhar os números e sinais
jal Numeros1           # chamada da função para desenhar o primeiro algarismo (dezena)
jal ArmazenarDezena    # Armazena a dezena em $t4
li $t0, 0x10010e4c     # seta o endereço inicial do segundo algarismo
jal Numeros1           # chamada da função para desenhar o segundo algarismo (unidade)
jal ArmazenarUnidade   # Armazena a unidade em $t5
add $s2, $t4, $t5      # Soma $t4 com $t5 e salva em $s2 (primeiro número completo)
li $t0, 0x10010eb4     # seta o endereço inicial do terceiro algarismo
jal Numeros1           # chamada da função para desenhar o terceiro algarismo (dezena)
jal ArmazenarDezena    # Armazena a dezena em $t4
li $t0, 0x10010ef0     # seta o endereço inicial do quarto algarismo
jal Numeros1           # chamada da função para desenhar o quarto algarismo (unidade)
jal ArmazenarUnidade   # Armazena a unidade em $t5
add $s3, $t4, $t5      # Soma $t4 com $t5 e salva em $s3 (segundo número completo)
jal Sinal              # chamada da função para desenhar o sinal da operação
jal SinalIgual         # chamada para desenhar o sinal de igualdade
jal Operacao           # realiza a operação
add $t7, $zero, $s4    # salva o resultado em $t7
add $s7, $zero, $s4    # salva o resultado também em $s7 para uso em outra operação
li $v0, 5              # Aguarda entrada do usuário (temporário)
syscall
jal ComparaEntRes      # Comparar entrada com resposta e retornar as mensagens
Retornar:
jal ResultadoUnidade   # Busca no resultado o algarismo das unidades
add $s5, $zero, $t4
li $t0, 0x10010fbc     # seta o endereço para desenhar o algarismo das unidades do resultado
jal Numeros2           # chama a função para desenhar o algarismo das unidades do resultado
jal ResultadoDezena    # busca no resultado o algarismo das dezenas
li $t0, 0x10010f84     # seta o endereço para desenhar o algarismo das dezenas do resulado
jal Numeros2           # chama a função para desenhar o algarismo das dezenas do resultado
beq $k0, 1, SinalNeg   # se o resultado for negativo, desenhe o sinal ( - )
voltar:
li $t0, 0x10010f78
beq $k1, 1, DesUm      # se o resultado for maior ou igual a 100, desenhe o algarismo 1
voltar2:
beq $a3, 0, PintarCoelho2
jal PintarCoelho3
voltar3:
jal Reiniciar
EncerrarJogo:
li $t0, 0x10010000
li $t1, 0x00e6e8fa
li $t8, 0
li $t9 8192
loopFim:           # loop para mudar a cor da tela para finalizar
beq $t8, $t9, PintarCoelho4 # função para manter  o coelho na tela ao encerrar
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopFim

FimDoJogo:
li $v0, 10         # chamada para encerrar o programa
syscall            # chamada para encerrar o programa

Cenario:
AzulCenario1: # Barra horizontal azul no início do cenário
li $t8, 0
li $t9, 384 # Tamanho da matriz Azul (3, 128)
li $t1, 0x000000ff # cor Azul
loop1:
beq $t8, $t9, PretoCenario
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loop1

PretoCenario: # Fundo preto
li $t8, 0
li $t9, 5632 # Tamanho da matriz Preta(44, 128)
li $t1, 0x00000000 ###### cor preta
loop2:
beq $t8, $t9, AzulCenario2
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loop2

AzulCenario2: # segunda barra horizontal azul
li $t8, 0
li $t9, 384 # Tamanho da matriz Azul (3, 128)
li $t1, 0x000000ff # cor Azul
loop3:
beq $t8, $t9, CinzaCenario
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loop3

CinzaCenario: # barra horizontal cinza no fim do cenário
li $t8, 0
li $t9, 1792 # Tamanho da Matriz Cinza (14, 128)
li $t1, 0x00808080 # cor Cinza
loop4:
beq $t8, $t9, TvCenario
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loop4

TvCenario: # Quadrado para representar Tv (matriz (40, 80))
li $t0, 0x10010a0c # Endereço inicial da TV
li $t8, 0
li $t9, 122 # tamanho da linha (quantidade de colunas)
li $t2, 0 # Contadores para pular linha
li $t3, 40 # Contadores para pular linha (quantidade de linhas)
li $t1, 0x00e6e8fa # cor da Tv
loopLinhaTv:
beq $t8, $t9, PulaLinhaTv # Após pintar uma linha, chama função para pular para a seguinte
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaTv

PulaLinhaTv:
addi $t0, $t0, 24 # Valor incrementado no último endereço utilizado para pular linha
li $t8, 0          # zera contadores para voltar ao loopLinhaTv
li $t9, 122         # zera contadores para voltar ao loopLinhaTv
addi $t2, $t2, 1   # incrementa contador em $t2
beq $t2, $t3, BarraAzul1 # quando os contadores forem iguais a Tv está completa. Chama a função seguinte.
j loopLinhaTv

BarraAzul1: # Barra vertical do lado direito da tela (tamanho (50, 3))
li $t0, 0x10010000 # Endereço inicial da Barra1
li $t8, 0
li $t9, 3
li $t2, 0 # Contadores para pular linha
li $t3, 50 # Contadores para pular linha
li $t1, 0x000000ff
loopLinhaBarra1:
beq $t8, $t9, PulaLinhaBarra1
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaBarra1

PulaLinhaBarra1:
addi $t0, $t0, 500
li $t8, 0
li $t9, 3
addi $t2, $t2, 1
beq $t2, $t3, BarraAzul2
j loopLinhaBarra1

BarraAzul2: # Barra vertical do lado esquerdo da tela (tamanho (50, 3))
li $t0, 0x100101f4 # Endereço inicial da Barra1
li $t8, 0
li $t9, 3
li $t2, 0 # Contadores para pular linha
li $t3, 50 # Contadores para pular linha
li $t1, 0x000000ff
loopLinhaBarra2:
beq $t8, $t9, PulaLinhaBarra2
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaBarra2

PulaLinhaBarra2:
addi $t0, $t0, 500
li $t8, 0
li $t9, 3
addi $t2, $t2, 1
beq $t2, $t3, endCenario
j loopLinhaBarra2

endCenario:
jr $ra

PintarCoelho1:
#linha1
li $t0, 0x100139a0 # endereço a ser pintado
li $t1, 0x00e6e8fa # inserir cor
sw $t1, 0($t0)     # pintar
addi $t0, $t0, 4   # Valor incrementado para pular para o endereço seguinte
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
#linha 2
addi $t0, $t0, 456 # Valor incrementado para pular linha
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 3
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 4
addi $t0, $t0, 456
li $t1,  0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 5
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 6
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 7
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 8
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 9
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 10
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x000000ff # Olho
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x000000ff # Olho
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 11
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 12
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 13
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 14
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000 
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 15
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 16
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 17
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 18
addi $t0, $t0, 456
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
# linha 19
addi $t0, $t0, 456
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)

jr $ra

PintarCoelho2:
#linha1
li $t0, 0x100157a8 # endereço a ser pintado
li $t1, 0x00000000 # cor preta
sw $t1, 0($t0)
sw $t1, 24($t0)
j voltar3

PintarCoelho3:
#linha1
li $t0, 0x100153a8 # endereço a ser pintado
li $t1, 0x00000000 # cor preta
sw $t1, 0($t0)
sw $t1, 24($t0)
j voltar3

PintarCoelho4:
#linha1
li $t0, 0x100139a0 # endereço a ser pintado
li $t1, 0x00e6e8fa # inserir cor
sw $t1, 0($t0)     # pintar
addi $t0, $t0, 4   # Valor incrementado para pular para o endereço seguinte
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
#linha 2
addi $t0, $t0, 456 # Valor incrementado para pular linha
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 3
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 4
addi $t0, $t0, 456
li $t1,  0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 5
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 6
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 7
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 8
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ff0000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 9
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 10
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x000000ff # Olho
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x000000ff # Olho
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 11
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 12
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 13
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 14
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000 # sorriso
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # nariz
li $t1, 0x00000000 
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000 # sorriso
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 15
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4 # boca
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 16
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 17
addi $t0, $t0, 456
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
# linha 18
addi $t0, $t0, 456
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
# linha 19
addi $t0, $t0, 456
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00ffff00
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)

MensagemFim:
# linha1
li $t0, 0x10014300
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa # espaço
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa # espaço
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
li $t1, 0x00000000
sw $t1, 0($t0)
# linha2
addi $t0, $t0, 464
sw $t1, 0($t0)
addi ,$t0, $t0, 4
li $t1, 0x00e6e8fa
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
# linha 3
addi $t0, $t0, 460
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
# linha 4
addi $t0, $t0, 460
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
# linah 5
addi $t0, $t0 ,460
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
# linha 6
addi $t0, $t0 ,460
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00e6e8fa
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
addi $t0, $t0, 4
sw $t1, 0($t0)
li $t1, 0x00000000
addi $t0, $t0, 4
sw $t1, 0($t0)

j FimDoJogo

Numeros1:
# Geração do algarismo aletoriamente
li $a0, 0
li $a1, 9
li $v0, 42   #random
syscall

Numeros2:
# Comparaçoes
beq $a0, 0, Zero
beq $a0, 1, Um
beq $a0, 2, Dois
beq $a0, 3, Tres
beq $a0, 4, Quatro
beq $a0, 5, Cinco
beq $a0, 6, Seis
beq $a0, 7, Sete
beq $a0, 8, Oito

Nove:
Linha1Nove:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Nove:
beq $t8, $t9, Barra1Nove
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Nove

Barra1Nove:
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra1Nove:
beq $t8, $t9, PularLinha1Nove
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Nove
PularLinha1Nove:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Linha2Nove
j loopBarra1Nove

Linha2Nove:
addi $t0, $t0, -4656
li $t8, 0
li $t9, 12
loopLinha2Nove:
beq $t8, $t9, Linha3Nove
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Nove

Linha3Nove:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Nove:
beq $t8, $t9, Barra2Nove
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Nove

Barra2Nove:
addi $t0, $t0, -8240
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 8
loopBarra2Nove:
beq $t8, $t9, PularLinha2Nove
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Nove
PularLinha2Nove:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Nove

Oito:
Linha1Oito:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Oito:
beq $t8, $t9, Barra1Oito
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Oito

Barra1Oito:
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra1Oito:
beq $t8, $t9, PularLinha1Oito
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Oito
PularLinha1Oito:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Linha2Oito
j loopBarra1Oito

Linha2Oito:
addi $t0, $t0, -4656
li $t8, 0
li $t9, 12
loopLinha2Oito:
beq $t8, $t9, Linha3Oito
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Oito

Linha3Oito:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Oito:
beq $t8, $t9, Barra2Oito
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Oito

Barra2Oito:
addi $t0, $t0, -8240
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra2Oito:
beq $t8, $t9, PularLinha2Oito
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Oito
PularLinha2Oito:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Oito

Sete:
Linha1Sete:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Sete:
beq $t8, $t9, Barra1Sete
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Sete

Barra1Sete:
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra1Sete:
beq $t8, $t9, PularLinha1Sete
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Sete
PularLinha1Sete:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra1Sete

Seis:
Linha1Seis:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Seis:
beq $t8, $t9, Linha2Seis
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Seis

Linha2Seis:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha2Seis:
beq $t8, $t9, Linha3Seis
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Seis

Linha3Seis:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Seis:
beq $t8, $t9, Barra1Seis
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Seis

Barra1Seis:
addi $t0, $t0, -8240
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra1Seis:
beq $t8, $t9, PularLinha1Seis
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Seis
PularLinha1Seis:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Barra2Seis
j loopBarra1Seis

Barra2Seis:
addi $t0, $t0, -4052
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 8
loopBarra2Seis:
beq $t8, $t9, PularLinha2Seis
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Cinco
PularLinha2Seis:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Seis

Cinco:
Linha1Cinco:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Cinco:
beq $t8, $t9, Linha2Cinco
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Cinco

Linha2Cinco:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha2Cinco:
beq $t8, $t9, Linha3Cinco
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Cinco

Linha3Cinco:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Cinco:
beq $t8, $t9, Barra1Cinco
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Cinco

Barra1Cinco:
addi $t0, $t0, -8240
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 9
loopBarra1Cinco:
beq $t8, $t9, PularLinha1Cinco
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Cinco
PularLinha1Cinco:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Barra2Cinco
j loopBarra1Cinco

Barra2Cinco:
addi $t0, $t0, 44
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 8
loopBarra2Cinco:
beq $t8, $t9, PularLinha2Cinco
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Cinco
PularLinha2Cinco:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Cinco

Quatro:
Barra1Quatro:
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 8
#li $t1 0x00000000
loopBarra1Quatro:
beq $t8, $t9, PularLinha1Quatro
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Quatro
PularLinha1Quatro:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, LinhaQuatro
j loopBarra1Quatro

LinhaQuatro:
li $t8, 0
li $t9, 12
loopLinhaQuatro:
beq $t8, $t9, Barra2Quatro
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaQuatro

Barra2Quatro:
addi $t0, $t0, -4100
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
loopBarra2Quatro:
beq $t8, $t9, PularLinha2Quatro
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Quatro
PularLinha2Quatro:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Quatro

Tres:
Linha1Tres:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Tres:
beq $t8, $t9, Linha2Tres
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Tres

Linha2Tres:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha2Tres:
beq $t8, $t9, Linha3Tres
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Tres

Linha3Tres:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Tres:
beq $t8, $t9, Barra1Tres
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Tres

Barra1Tres:
addi $t0, $t0, -8196
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 9
loopBarra1Tres:
beq $t8, $t9, PularLinha1Tres
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Tres
PularLinha1Tres:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Barra2Tres
j loopBarra1Tres

Barra2Tres:
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 8
loopBarra2Tres:
beq $t8, $t9, PularLinha2Tres
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Tres
PularLinha2Tres:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Tres

Dois: # Desenha o algarismo 2
Linha1Dois:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Dois:
beq $t8, $t9, Linha2Dois
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Dois

Linha2Dois:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha2Dois:
beq $t8, $t9, Linha3Dois
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Dois

Linha3Dois:
addi $t0, $t0, 4048
li $t8, 0
li $t9, 12
loopLinha3Dois:
beq $t8, $t9, Barra1Dois
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha3Dois

Barra1Dois:
addi $t0, $t0, -4144
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 9
loopBarra1Dois:
beq $t8, $t9, PularLinha1Dois
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Dois
PularLinha1Dois:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Barra2Dois
j loopBarra1Dois

Barra2Dois:
addi $t0, $t0, -8660
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 9
loopBarra2Dois:
beq $t8, $t9, PularLinha2Dois
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Dois
PularLinha2Dois:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Dois

Um: # desenha o algarismo 1
addi $t0, $t0, 44
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
#li $t1, 0x00000000
loopUm:
beq $t8, $t9, PularLinhaUm
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopUm
PularLinhaUm:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopUm

Zero: # desenha o algarismo 0
Linha1Zero:
li $t8, 0
li $t9, 12
#li $t1, 0x00000000
loopLinha1Zero:
beq $t8, $t9, Barra1Zero
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Zero

Barra1Zero:
addi $t0, $t0, 464
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 15
loopBarra1Zero:
beq $t8, $t9, PularLinha1Zero
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra1Zero
PularLinha1Zero:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, Linha2Zero
j loopBarra1Zero

Linha2Zero:
li $t8, 0
li $t9, 12
loopLinha2Zero:
beq $t8, $t9, Barra2Zero
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Zero

Barra2Zero:
addi $t0, $t0, -8196
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 16
loopBarra2Zero:
beq $t8, $t9, PularLinha2Zero
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarra2Zero
PularLinha2Zero:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, End
j loopBarra2Zero

End:
jr $ra

Sinal:
li $a0, 0
li $a1, 2
li $v0, 42   #random
syscall

beq $a0, 1, Subtracao

Adicao:
li $t0, 0x10011e88
li $t8, 0
li $t9, 9
#li $t1, 0x00000000
loopLinhaAd:
beq $t8, $t9, Barra
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaAd

Barra:
li $t0 0x10011698
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 9
loopBarraAd:
beq $t8, $t9, PularLinhaAd
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopBarraAd
PularLinhaAd:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, endAdicao
j loopBarraAd
endAdicao:
jr $ra

Subtracao:
li $t0, 0x10011e88
li $t8, 0
li $t9, 9
#li $t1, 0x00000000
loopLinhaSub:
beq $t8, $t9, endSubtracao
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaSub
endSubtracao:
jr $ra

SinalNeg:
li $t0, 0x10011d58
li $t8, 0
li $t9, 9
#li $t1, 0x00000000
loopLinhaNeg:
beq $t8, $t9, endSinalNeg
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinhaNeg
endSinalNeg:
beq $zero, $zero, voltar

SinalIgual:
Linha1Igual:
li $t0, 0x10011928
li $t8, 0
li $t9, 11
#li $t1, 0x00000000
loopLinha1Igual:
beq $t8, $t9, Linha2Igual
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha1Igual
Linha2Igual:
li $t0, 0x10012328
li $t8, 0
li $t9, 11
li $t1, 0x00000000
loopLinha2Igual:
beq $t8, $t9, endSinalIgual
sw $t1, 0($t0)
addi $t8, $t8, 1
addi $t0, $t0, 4
j loopLinha2Igual
endSinalIgual:
jr $ra

DesUm: # desenha o algarismo 1
#addi $t0, $t0, 44
li $t8, 0
li $t9, 1
li $t2, 0
li $t3, 17
#li $t1, 0x00000000
loopDesUm:
beq $t8, $t9, PularLinhaDesUm
sw $t1, 0($t0)
addi $t0, $t0, 4
addi $t8, $t8, 1
j loopDesUm
PularLinhaDesUm:
addi $t0, $t0, 508
li $t8, 0
li $t9, 1
addi $t2, $t2, 1
beq $t2, $t3, EndUm
j loopDesUm

EndUm:
beq $zero, $zero, voltar2

ArmazenarDezena:
add $t4, $zero, $a0
mult $t4, $s0
mflo $t4
jr $ra

ArmazenarUnidade:
add $t5, $zero, $a0
jr $ra

Operacao:
beq $a0, 1, Subtrair
Adicionar:
add $s4, $s2, $s3
jr $ra
Subtrair:
sub $s4, $s2, $s3
jr $ra

ResultadoUnidade:
srl $t2, $t7, 31
li $t3, 200
beq $t2, 1, Negativo
loopPositivo:
sub $t4, $t3, $s4
sub $t5, $t4, $s0
sub $t6, $s0, $t4
srl $t8, $t5, 31
srl $t9, $t6, 31
sub $t4, $s0, $t4
beq $t9, $zero, endResultUnid
sub $t3, $t3, $s0
j loopPositivo

Negativo:
loopNegativo:
sub $t4, $t3, $s4
sub $t5, $t4, $s0
sub $t6, $s0, $t4
srl $t8, $t5, 31
srl $t9, $t6, 31
beq $t9, $zero, endResultUnid
sub $t3, $t3, $s0
j loopNegativo

endResultUnid:
beq $t4, $s0, setZero
add $a0, $zero, $t4
jr $ra
setZero:
li $t4, 0
add $a0, $zero, $t4
jr $ra

ResultadoDezena:
blez $s4, InverteSinal
sub $t2, $s4, $s5
bge $t2, $s1, MaiorIgualCem
blt $t2, $s0, MenorDez
div $t2, $s0
mflo $a0
mflo $s6
jr $ra
InverteSinal:
li $k0, 1
li $t9, -1
mult $s4, $t9
mflo $s4
j ResultadoDezena

MaiorIgualCem:
li $k1, 1
div $t2, $s0
mflo $t3
beq $t3, 11, umF
beq $t3, 12, doisF
beq $t3, 13, tresF
beq $t3, 14, quatroF
beq $t3, 15, cincoF
beq $t3, 16, seisF
beq $t3, 17, seteF
beq $t3, 18, oitoF
beq $t3, 19, noveF

zeroF:
li $s6, 0
add $a0, $zero, $s6
jr $ra

umF:
li $s6, 1
add $a0, $zero, $s6
jr $ra

doisF:
li $s6, 2
add $a0, $zero, $s6
jr $ra

tresF:
li $s6, 3
add $a0, $zero, $s6
jr $ra

quatroF:
li $s6, 4
add $a0, $zero, $s6
jr $ra

cincoF:
li $s6, 5
add $a0, $zero, $s6
jr $ra

seisF:
li $s6, 6
add $a0, $zero, $s6
jr $ra

seteF:
li $s6, 7
add $a0, $zero, $s6
jr $ra

oitoF:
li $s6, 8
add $a0, $zero, $s6
jr $ra

noveF:
li $s6, 9
add $a0, $zero, $s6
jr $ra

MenorDez:
add $s6, $zero, $t2
add $a0, $zero, $s6
jr $ra

ComparaEntRes:
beq $v0, $s7, Acertou
li $t1, 0x00ff0000
li $a3, 0
j Retornar
Acertou:
li $t1, 0x000000ff
li $a3, 1
j Retornar

Reiniciar:
li $v0, 5
syscall
beq $v0, $zero, EncerrarJogo
li, $v0, 0
li, $v1, 0
li, $a0, 0
li, $a1, 0
li, $a2, 0
li, $a3, 0
li, $t0, 0
li, $t1, 0
li, $t2, 0
li, $t3, 0
li, $t4, 0
li, $t5, 0
li, $t6, 0
li, $t7, 0
li, $t8, 0
li, $t9, 0
li, $s0, 0
li, $s1, 0
li, $s2, 0
li, $s3, 0
li, $s4, 0
li, $s5, 0
li, $s6, 0
li, $s7, 0
li, $k0, 0
li, $k1, 0
j main
