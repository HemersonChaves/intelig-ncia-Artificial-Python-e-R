# Problema da loja 711

Uma cliente compra algumas roupas para sua família em uma loja. Chegando em casa descobre que algumas não servem e volta a loja para pedir a devolução (apenas dos itens que não servem).

- Eu multipliquei o valor da sua compra e deu 7,11

O cliente então reclama
- Multiplicou? Você deveria ter somado!
O caixa então se desculpa, soma as compras e fala:
- A soma também deu 7,11

### Esta é a nota fiscal de todos as roupas compradas, precisamos descobrir:
Quais são os produtos que somados e multiplicados tem como resultado 7,11?

- Blusa: 1,10
- Camisa: 1,20
- Calça: 1,25
- Casaco: 1,41
- Blusão: 1,50
- Jeans: 1,63
- Jaqueta: 2,05
- Macação: 2,22
- Saia: 2,65
- Saruel: 2,90
- Short: 3,04
- Suéter: 3,16 

# Solução

1,10 | 1,20 | 1,25 | 1,41 | 1,50 | 1,63 | 2,05 | 2,22 | 2,65 | 2,90 | 3,04 | 3,16 
---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- 
A | B | C | D | E | F | G | H | I | J | K | L 

Analise de combinação:
Quantos elementos formam a solução? Não sabemos, podem ser de 1 a 12

"mais de 1 milhão de combinações"

A+B = A\*B      

A+B+C = A\*B\*C

A+C = A\*C    

A+B+D = A\*B\*D

A+B+C+D+E+F = A\*B\*C\*D\*E\*F

### Pacote TabuSeach - Configuração Binária
Objetivo maximizar o valor de retorno da função de Avaliação