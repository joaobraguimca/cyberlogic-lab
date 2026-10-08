# Aula 3 — Entrada de Dados e Operadores

## Projeto 03 — Calculadora de Tempo de Estudo

Meu programa calcula o tempo de estudo a partir da quantidade de sessões e dos minutos de cada sessão. Ele mostra o total em minutos, converte esse total em horas inteiras e calcula os minutos restantes.

[Consultar o código em Portugol](calc-temp-estudo.alg)

## O que aprendi

Usei `leia` para receber os dados do usuário e armazená-los em variáveis. Usei `escreva` para pedir esses dados e `escreval` para apresentar os resultados.

Para calcular o tempo total, multipliquei a quantidade de sessões pelos minutos de cada sessão. A divisão inteira por 60 fornece as horas completas, e o resto dessa divisão fornece os minutos restantes.

## Entradas e resultados

- `ses`: quantidade de sessões, do tipo `inteiro`.
- `min`: minutos de cada sessão, do tipo `inteiro`.
- `total_min`: tempo total em minutos, do tipo `inteiro`.
- `horas`: quantidade de horas completas, do tipo `inteiro`.
- `min_restantes`: minutos restantes da conversão, do tipo `inteiro`.

O número 60 é o valor fixo usado para converter minutos em horas. A quantidade de sessões é informada pelo usuário; o programa calcula a duração total.

## Como executar

1. Abra `calc-temp-estudo.alg` no Visualg.
2. Execute o algoritmo.
3. Informe a quantidade de sessões.
4. Informe quantos minutos terá cada sessão.
5. Confira o tempo total, as horas completas e os minutos restantes.

Use números inteiros positivos. Esta versão recebe os valores sem validar o intervalo informado.

## Testes manuais

Executei os três casos abaixo no Visualg e conferi as saídas com os resultados esperados.

| Sessões | Minutos por sessão | Total esperado em minutos | Horas esperadas | Minutos restantes esperados | Resultado |
|---|---|---|---|---|---|
| 3 | 45 | 135 | 2 | 15 | Conferiu |
| 1 | 25 | 25 | 0 | 25 | Conferiu |
| 2 | 30 | 60 | 1 | 0 | Conferiu |

Os casos verificam um tempo com sobra de minutos, um tempo menor que uma hora e uma hora exata. O resto é calculado em todos os casos, inclusive quando vale zero.

## Dúvidas e correções

No planejamento, escolhi inicialmente o tipo `real` para os minutos. Ajustei para `inteiro`, pois esta versão trabalha com minutos inteiros. Também percebi que 60 é um valor fixo da conversão, e faltava uma variável para receber a quantidade de sessões.

Durante a escrita do código, perguntei por que o número 60 aparecia em vermelho. A cor era o destaque de sintaxe do editor.

Na explicação do projeto, ajustei a expressão “minutos faltantes” para “minutos restantes”: o resultado representa a sobra da conversão em horas completas.

## Conceitos exercitados

- Entrada e saída de dados.
- Variáveis do tipo `inteiro`.
- Atribuição com `<-`.
- Multiplicação com `*`.
- Divisão inteira com `\`.
- Resto da divisão com `%`.
- Conferência de resultados com uma matriz de testes.
