# Aula 2 — Primeiro algoritmo

## O que aprendi

Um algoritmo computacional organiza instruções que serão executadas por um dispositivo com capacidade de processamento. Nesta aula, aprendi a estrutura básica de um algoritmo em Portugol e usei o Visualg para declarar variáveis, atribuir valores e apresentar resultados.

As variáveis possuem identificador, tipo e valor. Seus nomes devem começar com uma letra, não podem conter espaços, acentos ou símbolos além do sublinhado e não podem coincidir com palavras reservadas da pseudolinguagem.

## Atividade prática

O **Cyber Profile CLI** apresenta no terminal um perfil fictício de estudante de cibersegurança. O algoritmo utiliza os quatro tipos de dados estudados:

- `caractere` para textos;
- `inteiro` para números sem parte decimal;
- `real` para números com parte decimal;
- `logico` para os valores `verdadeiro` e `falso`.

[Consultar o código em Portugol](cyber-profile-cli.alg)

## Resultado esperado

```text
================================
        CYBER PROFILE CLI
================================
Nome: João
Trilha: Fundamentos da Cibersegurança
Aulas concluídas: 2
Horas estudadas: 4.5
Laboratório configurado: VERDADEIRO
Projeto atual: CyberLogic Lab
```

## Declaração, atribuição e saída

```portugol
horas_estudadas: real
horas_estudadas <- 4.5
escreval("Horas estudadas: ", horas_estudadas)
```

A primeira linha declara uma variável do tipo real. A segunda armazena o valor `4.5`; outra atribuição poderia substituí-lo durante a execução. A terceira consulta o valor atual e o apresenta sem modificar a variável.

## Conceitos exercitados

- Estrutura básica de um algoritmo;
- Palavras reservadas;
- Variáveis e tipos de dados;
- Identificadores descritivos;
- Operador de atribuição `<-`;
- Saída de dados com `escreval`;
- Organização e legibilidade do pseudocódigo.
