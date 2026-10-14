# Revisão para o caderno

Copie um bloco de cada vez. Quando revisar, tente responder à pergunta final antes de consultar as notas. Cada bloco reúne os fundamentos estudados e um exemplo da prática.

## Aula 1 — Introdução a algoritmos

- **Algoritmo:** sequência finita de instruções claras para realizar uma tarefa ou resolver um problema.
- **Ordem:** trocar a sequência das instruções pode mudar o resultado.
- **Clareza:** cada passo deve indicar uma ação ou condição verificável.
- **Pseudocódigo:** descreve a lógica com uma estrutura próxima à programação.

**Exemplo aplicado:** no Suspicious Email Runbook, confirmar a solicitação por outro canal vem antes de agir sobre ela. O acesso acontece pelo meio oficial.

**Erro a evitar:** considerar uma mensagem segura apenas porque o remetente parece conhecido.

**Pergunta de revisão:** por que a ordem dos passos de um algoritmo importa?

## Aula 2 — Primeiro algoritmo

- **Variável:** guarda um valor; tem nome, tipo e valor atual.
- **Tipos:** `inteiro` para 3; `real` para 3.5; `caractere` para "texto"; `logico` para `verdadeiro` ou `falso`.
- **Declaração:** informa o nome e o tipo na seção `var`.
- **Atribuição:** `<-` guarda um valor na variável.
- **Saída:** `escreva` mostra informações; `escreval` também pula uma linha.

**Exemplo aplicado ao perfil:**

```portugol
algoritmo "Perfil"
var
   horas: real
inicio
   horas <- 1.5
   escreval(horas)
fimalgoritmo
```

**Erro a evitar:** usar nomes com espaços ou declarar uma quantidade como `logico`.

**Pergunta de revisão:** qual é a diferença entre declarar uma variável e atribuir um valor?

## Aula 3 — Entrada de dados e operadores

- **Entrada:** `leia(x)` aguarda um valor e o guarda na variável `x`.
- **Fluxo:** entrada → processamento → saída.
- **Operadores:** `+`, `-`, `*`, `/` (divisão real), `\` (divisão inteira), `%` ou `mod` (resto) e `^` (potência).
- **Precedência:** `2 + 3 * 4` resulta em 14; `(2 + 3) * 4` resulta em 20.
- **Funções prontas:** `abs(x)` dá o valor absoluto; `int(x)` retira a parte decimal; `raizQ(x)` calcula a raiz quadrada para `x >= 0`. [Manual do Visualg](https://www.acad.cefetmg.br/uploads/MATERIAIS_AULAS/340988-A_Linguagem_de_Programa%C3%A7%C3%A3o_do_VisuAlg.pdf).

**Exemplo aplicado:** 3 sessões de 45 minutos totalizam 135 minutos. `135 \ 60` dá 2 horas completas; `135 % 60` dá 15 minutos restantes.

**Erro a evitar:** confundir divisão inteira com arredondamento ou com o resto da divisão.

**Pergunta de revisão:** como obter as horas completas e a sobra de minutos de um tempo total?

## Aula 4 — Operadores lógicos e relacionais

- **Relacionais:** `>`, `<`, `>=`, `<=`, `=`, `<>` comparam valores e produzem `verdadeiro` ou `falso`.
- **Diferença:** `=` compara; `<-` atribui.
- **Lógicos:** `e` exige ambas verdadeiras; `ou` aceita uma ou ambas; `nao` inverte um valor lógico.
- **Precedência geral:** aritméticos → relacionais → lógicos. Use parênteses para agrupar as condições.

**Exemplo aplicado ao Cyber Login Check:**

```portugol
alerta <- (falhas >= 3) ou (aut2f = falso)
```

Na regra deste exercício, há alerta com três ou mais falhas ou com a autenticação em dois fatores desativada.

**Erro a evitar:** trocar `ou` por `e` e mudar a regra do alerta.

**Pergunta de revisão:** com 3 falhas e `aut2f = verdadeiro`, por que `ou` gera alerta e `e` não?
