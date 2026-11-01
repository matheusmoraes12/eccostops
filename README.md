# EccoStops

Jogo educativo digital de separação de resíduos sólidos para crianças. Itens de lixo caem na tela, o jogador os arrasta com o mouse até a lixeira correta e ganha pontos pelos acertos.

Projeto de TCC do curso de Sistemas de Informação do Centro Universitário Santa Terezinha (CEST), em São Luís (MA), usado em uma atividade de educação ambiental com crianças de 9 a 11 anos.

## Como jogar

1. Os itens de resíduos caem na tela.
2. Arraste cada item com o mouse.
3. Solte o item na lixeira do material correspondente e ganhe pontos.

A versão usada na atividade tem três lixeiras coloridas (vermelha, amarela e verde).

## Requisitos

- Windows
- GameMaker (IDE v2026.0.0.16, Runtime v2026.0.0.23, canal LTS)

O jogo roda em computadores simples. Na atividade foi usado um notebook com Windows 11 e 4 GB de memória RAM.

## Como abrir o projeto

1. Baixe o repositório: botão verde **Code > Download ZIP**, e extraia a pasta.
2. Abra o GameMaker.
3. Use **File > Open** e escolha o arquivo `eccostops-game/EccoStops.yyp`.
4. Clique em **Run** (botão de play) para testar o jogo.

## Como gerar o executável para Windows

1. É necessário entrar com uma conta gratuita do GameMaker (a primeira vez que você gerar o executável, ele pede o login).
2. Com o projeto aberto, vá ao menu **Build > Create Executable** e escolha **Windows**.
3. Ao terminar, será criada uma pasta com três arquivos: `EccoStops.exe`, `data.win` e `options.ini`.
4. Copie a pasta inteira (os três arquivos juntos) para o computador onde o jogo será usado e abra o `EccoStops.exe`. Não é necessário instalar o GameMaker nesse computador.

## Estrutura do repositório

- `eccostops-game/`: projeto do jogo (GameMaker)
- `LICENSE.txt`: licença MIT

## Autoria

Matheus Cândido Moraes e Matheus Tarcio Oliveira da Penha. Orientador: Dadilton Bastos Melo.


## Licença

Distribuído sob a licença MIT. Veja o arquivo `LICENSE.txt`.
