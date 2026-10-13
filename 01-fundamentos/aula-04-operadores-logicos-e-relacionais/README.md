# Aula 4 — Operadores Lógicos e Relacionais

## Projeto 04 — Cyber Login Check

Meu programa verifica se deve gerar um alerta a partir da quantidade de tentativas de login falhas e da presença de autenticação em dois fatores. O usuário informa essa quantidade e se a autenticação está ativada, usando `verdadeiro` ou `falso`.

O alerta fica verdadeiro quando existem três ou mais tentativas falhas **ou** quando a autenticação em dois fatores está desativada.

[Consultar o código em Portugol](cyber-login-check.alg)

O exercício usa dados fictícios e uma regra de alerta definida para praticar lógica de programação no contexto da cibersegurança.

## O que aprendi

Operadores relacionais comparam valores e produzem um resultado lógico. Usei `>=` para verificar se a quantidade de falhas é maior ou igual a três e `=` para comparar o estado da autenticação com `falso`.

Usei `ou` para combinar as duas condições. Basta uma delas ser verdadeira para gerar o alerta; se ambas forem verdadeiras, o resultado também será verdadeiro.

O operador `e` exige que as duas condições sejam verdadeiras. O operador `nao` inverte um valor lógico: nesta regra, `nao aut2f` teria o mesmo resultado que `aut2f = falso`.

A expressão usada no programa é `(falhas >= 3) ou (aut2f = falso)`. O resultado é guardado em `alerta` com `<-` e apresentado com `escreval`.

## Entradas e resultado

- `falhas`: quantidade de tentativas de login que falharam, do tipo `inteiro`.
- `aut2f`: indica se a autenticação em dois fatores está ativada, do tipo `logico`.
- `alerta`: resultado da regra de alerta, do tipo `logico`.

## Como executar

1. Abra `cyber-login-check.alg` no Visualg.
2. Execute o algoritmo.
3. Informe um número inteiro maior ou igual a zero para as tentativas falhas.
4. Informe `verdadeiro` se a autenticação em dois fatores estiver ativada ou `falso` se estiver desativada.
5. Confira o resultado de “Gerar alerta?”.

Esta versão recebe a quantidade de falhas sem validar o intervalo informado.

## Testes manuais

Executei os quatro casos abaixo no Visualg e conferi os resultados esperados.

| Falhas | Autenticação em dois fatores ativada | Alerta esperado | Resultado |
|---|---|---|---|
| 2 | FALSO | VERDADEIRO | Conferiu |
| 2 | VERDADEIRO | FALSO | Conferiu |
| 3 | VERDADEIRO | VERDADEIRO | Conferiu |
| 3 | FALSO | VERDADEIRO | Conferiu |

Os casos verificam a passagem de duas para três falhas e as quatro combinações de resultados das duas condições. O último caso confirma que `ou` aceita ambas verdadeiras.

## Dúvidas e correções

No planejamento, escolhi inicialmente `logico` para a quantidade de tentativas. Ajustei para `inteiro`, pois preciso guardar uma quantidade, como dois ou três.

Na declaração, ajustei o nome `aut2ft` para `aut2f`, mantendo o mesmo nome na leitura e na expressão. Também ajustei a mensagem “geral alerta?” para “Gerar alerta?”.

No exercício preparatório de idade e autorização, corrigi um parêntese que faltava e o uso de `e` em uma regra que permitia idade maior ou igual a 18 **ou** autorização. Essa revisão ajudou a distinguir os dois operadores antes de montar o projeto.

## Conceitos exercitados

- Entrada e saída de dados.
- Variáveis dos tipos `inteiro` e `logico`.
- Comparações com `>=` e `=`.
- Combinação de condições com `ou`.
- Diferença entre `e`, `ou` e `nao`.
- Atribuição de um resultado lógico com `<-`.
- Conferência de resultados com uma matriz de testes.
