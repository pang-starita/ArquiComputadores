## Classificação dos Computadores (segundo Luiz Sérgio)

* Caracterização da Operação
* Tamanho
* Caracterização da construção

## Caracterização da Operação

* Analógico: os sinais são contínuos \(na intensidade e no tempo\)
<br>Computador analógico???

* Digital: os sinais são discretos. Nos valores \(0 ou 1\) e no tempo \(mudam seguindo uma cadência ditada por um relógio\)

## Sinais analógicos

![Sinais: A - Constante; B - Senoidal; C - Quadrada; D - Decaimento exponencial; E - Degrau; F - Triangular;](sinais.jpg)

## Tamanho

* Mainframes \(Computadores de Grande Porte\)
* Supercomputadores
* Minicomputadores
* Microcomputadores
* Tablets
* Celulares

## Construção

* Relé-Válvula
* Transistor
* CI - SSI, MSI, LSI
* VLSI, ULSI
* Outros: biocomputadores, computadores quânticos, computadores óticos, ...

## Circuitos Lógicos

* Componente básico em circuitos digitais: comutador
* Tecnologias para comutadores: ...
* Chave Eletrônica: 2 estados: ON/OFF
* Estado das linhas: 0/1 correspondência:
  - 0: tensão baixa (0V), corrente alta (1mA), tensão alta (5V), frequência alta, defasagem de 45&deg;, ...
  - 1: tensão alta (5V), corrente baixa (20&micro;A), tensão baixa (1V), frequência baixa, defasagem de 90&deg;, ...
* Circuitos lógicos não consideram a tecnologia dos comutadores, nem os *valores* dos sinais físicos. O importante são os valores lógicos: **0/1**, ou **F/V**.

## Componentes Lógicos \(Blocos funcionais\)

* Álgebra Booleana

* Portas lógicas - executam funções lógicas
* Os dispositivos digitais são construídos com estas portas lógicas
* Portas básicas: Inversora \(NOT\), E \(AND\) e OU \(OR\)

## Porta Inversora

![Porta Inversora](not.png)

### Tabela Verdade da Porta Inversora

| I  | O  |
|----|----|
| 0  | 1  |
| 1  | 0  |

$O = I'$

## Porta E \(AND\)

![Porta AND](and.png)

### Tabela Verdade da Porta E

| I1 | I2 |  O  |
|----|----|-----|
| 0  | 0  | 0   |
| 0  | 1  | 0   |
| 1  | 0  | 0   |
| 1  | 1  | 1   |

$O = I_1 \cdot I_2$

## Porta OU \(OR\)

![Porta OR](or.png)

### Tabela Verdade da Porta OU

| I1 | I2 |  O  |
|----|----|-----|
| 0  | 0  | 0   |
| 0  | 1  | 1   |
| 1  | 0  | 1   |
| 1  | 1  | 1   |

$O = I_1 + I_2$

## Exemplo de uso de portas lógicas

* Deseja-se um circuito lógico que tenha saída \(O\) 1 se e apenas se \(sse, ou see\), as duas entradas \(I1 e I2\) forem iguais.

### Solução

$O = I_1' \cdot I_2' + I_1 \cdot I_2$

![Circuito da igualdade](equal.png)

## Exercícios

1. Qual a expressão lógica para um circuito de desigualdade?
2. Forneça o diagrama de portas lógicas para o circuito de desigualdade.

## Somador \(*half adder*\)

### Tabela Verdade para Somar 2 Bits

| I1 | I2 |  S |
|----|----|----|
| 0  | 0  | 0  |
| 0  | 1  | 1  |
| 1  | 0  | 1  |
| 1  | 1  | ?  |

## Meio Somador

### Tabela Verdade para Somar 2 Bits

| I1 | I2 | S  | $C_O$ |
|----|----|----|-------|
| 0  | 0  | 0  | 0     |
| 0  | 1  | 1  | 0     |
| 1  | 0  | 1  | 0     |
| 1  | 1  | 0  | 1     |

$S = I_1' \cdot I_2 + I_1 \cdot I_2' = I_1 \oplus I_2$

$C_O = I_1 \cdot I_2$

![Meio Somador](half_adder.png)

## Somador completo \(*full adder*\)

$S = C_I' \cdot I_1' \cdot I_2 + C_I' \cdot I_1 \cdot I_2' + C_I \cdot I_1' \cdot I_2' + C_I \cdot I_1 \cdot I_2 = C_I \oplus I_1 \oplus I_2$

$C_O = C_I' \cdot I_1 \cdot I_2 + C_I \cdot I_1 \cdot I_2' + C_I \cdot I_1' \cdot I_2 + C_I \cdot I_1 \cdot I_2$

### Tabela Verdade do FA

| $C_I$ | I1 | I2 | S  | $C_O$ |
|-------|----|----|----|-------|
| 0     | 0  | 0  |    |       |
| 0     | 0  | 1  |    |       |
| 0     | 1  | 0  |    |       |
| 0     | 1  | 1  |    |       |
| 1     | 0  | 0  |    |       |
| 1     | 0  | 1  |    |       |
| 1     | 1  | 0  |    |       |
| 1     | 1  | 1  |    |       |
