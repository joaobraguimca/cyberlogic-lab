algoritmo "Cyber Login Check"

var
falhas: inteiro
aut2f: logico
alerta: logico
inicio
      escreva("quantas tentativas falhas de login ocorreram? ")
      leia(falhas)
      escreval("possui autenticação em dois fatores ativa? responda com verdadeiro ou falso. ")
      leia(aut2f)
      alerta <- (falhas >= 3) ou (aut2f = falso)
      escreval("Gerar alerta? " , alerta)

fimalgoritmo
