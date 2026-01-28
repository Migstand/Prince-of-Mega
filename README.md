# Prince of Mega 🎮 (MIPS Assembly)

**Prince of Mega** é um jogo de plataforma e ação desenvolvido em **Assembly MIPS**, rodando sobre o simulador **MARS**. O projeto foi criado como parte da disciplina de Arquitetura de Computadores, demonstrando o uso de manipulação de memória, E/S via Bitmap Display e MMIO (Memory Mapped I/O), lógica de jogo e renderização gráfica de baixo nível.

O jogo apresenta uma batalha clássica entre **Megaman** e **Skullman**, com mecânicas de tiro, movimentação, colisão e níveis de dificuldade.

---

## 📋 Funcionalidades

- **Menu Interativo:** Navegação entre "Jogar", "Opções" e "Dificuldade".
- **Sistema de Dificuldade:** Três níveis (Fácil, Médio, Difícil) que ajustam a vida e parâmetros do inimigo.
- **Mecânicas de Combate:**
- Movimentação completa (pulo, agachar, esquerda/direita).
- Sistema de tiro (Mega Buster).
- Detecção de colisão (hitboxes) entre projéteis, cenário e personagens.

- **Inteligência Artificial (IA) Básica:** O inimigo (Skullman) possui padrões de ataque e movimentação.
- **Sistema de Save/Load:** Capacidade de salvar o estado do jogo (Slots K e T).
- **Gráficos em Bitmap:** Renderização pixel-a-pixel otimizada para o display do MARS.

---

## 🚀 Como Executar

Para rodar o jogo, você precisará do simulador **MARS (MIPS Assembler and Runtime Simulator)**.

### Pré-requisitos

- [Java Runtime Environment (JRE)](https://www.java.com/download/) instalado.
- [MARS MIPS Simulator](https://www.google.com/search?q=http://courses.missouristate.edu/kenvollmar/mars/download.htm) (`Mars4_5.jar`).

### Configuração do Ambiente

1. Abra o **MARS**.
2. Vá em **File > Open** e selecione o arquivo `V1.1_PRINCE_OF_MEGA.asm`.
3. Abra as ferramentas necessárias em **Tools**:

- **Bitmap Display**
- **Keyboard and Display MMIO Simulator**

#### Configuração do Bitmap Display

Configure o **Bitmap Display** exatamente com os valores abaixo para que os gráficos sejam renderizados corretamente:

| Configuração                 | Valor                      |
| ---------------------------- | -------------------------- |
| **Unit Width in Pixels**     | 2                          |
| **Unit Height in Pixels**    | 2                          |
| **Display Width in Pixels**  | 512                        |
| **Display Height in Pixels** | 256                        |
| **Base Address for Display** | `0x10010000` (static data) |

> **Importante:** Clique no botão **"Connect to MIPS"** em ambas as ferramentas (Bitmap Display e Keyboard MMIO) após configurar.

### Executando o Jogo

1. Pressione **F3** (ou vá em _Run > Assemble_) para montar o código.
2. Pressione **F5** (ou _Run > Go_) para iniciar.
3. **Atenção:** Os comandos devem ser digitados na janela do **Keyboard and Display MMIO Simulator**, não no editor de texto.

---

## 🎮 Controles

### Menu

- `Espaço`: Iniciar Jogo
- `O`: Opções
- `D`: Dificuldade / Voltar / Selecionar
- `B`: Voltar ao Título

### Dificuldade

- `F`: Fácil
- `M`: Médio
- `D`: Difícil

### Escolha da arma
- 'K': Espada/Katana
- 'T': Tiro(Mega Buster)

### Gameplay (Megaman)

Use as teclas abaixo na janela do **MMIO Simulator**:

| Tecla          | Ação                 |
| -------------- | -------------------- |
| **W**          | Pular                |
| **A** ou **Q** | Mover para Esquerda  (Q para passo lentos e precisos)|
| **D** ou **E** | Mover para Direita   (E para passo lentos e precisos)|
| **S**          | Ação / Coletar itens      |
| **J**          | Atirar (Mega Buster) |

---

## 🛠️ Detalhes Técnicos

- **Linguagem:** Assembly MIPS32
- **Endereçamento de Vídeo:** O jogo escreve diretamente na memória `0x10010000` (Heap/Static Data), calculando offsets para desenhar pixels individuais. A largura de 256 pixels resulta em um _stride_ de 1024 bytes por linha.
- **Entrada de Dados:** Utiliza **Memory Mapped I/O** (endereço `0xffff0000` para controle e `0xffff0004` para dados) para leitura assíncrona do teclado, permitindo movimentação fluida sem pausar a execução.

---

## 👨‍💻 Autor

Desenvolvido por **Miguel Rodrigues/Migstand** e **Gustavo Dias/GustavoDiasdLima**
_Estudantes de ADS(Análise e Denvovimento de Sistemas) - IFRN_CNAT

---

> _Este projeto é para fins educacionais, demonstrando conceitos de arquitetura de computadores e programação de baixo nível._


