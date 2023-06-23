# Projeto-final-Circuitos-UFSC
Projeto final da matéria de Circuitos e Técnicas digitais, jogo de memorização rápida em vhdl, executado num placa Altera DE2

- Como jogar: ao iniciar o jogo, o jogador escolhera a dificuldade (L) nos SW(1 downto 0), estes serão mostrados nos HEX1 e HEX0, memória utilizada (C) no SW(3 downto 2) mostradas nos HEX3 e HEX2, cada um contendo 4 opções, quanto maior o valor (binário) do SW(1 downto 0) mais rapido passará o tempo. Uma vez escolhido o jogador deve precionar KEY(1) para começar o jogo;

- Aparecerá nos displays (HEX) valores guardados na memória escolhida que podem ser de 0 até 14 (hexadecimal);

- uma vez passado este estado, o jogador terá 10 segundos (mostrará t no HEX5 e a contagem de tempo no HEX4) para fazer uma seleção dos SW(14 downto 0) onde o número dos SW sejam equivalentes ao mostrados nos HEX, caso o jogador erre, será descontado uma vida, (o jogador possui 7 vidas que são mostradas nos LEDR(7 downto 0) quando o SW(17 está ativado)), de qualquer maneira, quando o SW(17) estiver desativado, será mostrado nos LEDR(15 DOWNTO 0) o número de rodadas restantes, (total 16), Uma vez a vida acabe, o tempo chege a 0, ou o total de rodadas for atingido, será mostrado a pontuação em hexadecimail nos HEX7 e HEX6.

- Se o jogador escolher algo dentro do tempo, será acrescentado 1 rodada e a próxima sequência aparecerá.
