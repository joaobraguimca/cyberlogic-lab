# Aula 1 — Introdução a algoritmos

## O que aprendi

Um algoritmo é uma sequência finita, organizada e suficientemente clara de instruções utilizada para realizar uma tarefa ou resolver um problema.

A ordem das instruções pode alterar o resultado. Além disso, expressões como “quando estiver seguro” são subjetivas para um computador e precisam ser transformadas em condições observáveis.

Algoritmo não é o mesmo que algarismo: algarismos são símbolos utilizados para representar números.

## Atividade prática

Criei um procedimento para responder a um e-mail inesperado de redefinição de senha. A primeira versão considerava seguro abrir o link quando o remetente parecesse confiável.

Durante a revisão, percebi que:

- Uma conta conhecida pode ter sido comprometida;
- O nome exibido não comprova a identidade do remetente;
- Um endereço visualmente parecido pode ser malicioso;
- A confirmação deve acontecer por um canal independente;
- O serviço deve ser acessado pelo aplicativo ou endereço oficial.

## Principal evolução

```text
Primeira versão:
remetente conhecido -> abrir o link

Versão revisada:
verificar critérios -> confirmar por outro canal -> acessar pelo meio oficial
```

## Resultado

[Consultar o runbook final](suspicious-email-runbook.md)

## Conceitos exercitados

- Sequência lógica;
- Ordem de execução;
- Objetivo e resultado;
- Clareza das instruções;
- Identificação de ambiguidades;
- Revisão de hipóteses;
- Confiança verificada.
