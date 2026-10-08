algoritmo "Calculadora de tempo estudano"
var
ses, min: inteiro
total_min: inteiro
horas: inteiro
min_restantes: inteiro
inicio
      escreva("qual a quantidade de sessões? ")
      leia(ses)
      escreva("quantos minutos irá durar cada sessão? ")
      leia (min)
      total_min <- ses * min
      escreval("tempo total em minutos: " , total_min)
      horas <- total_min \ 60
      escreval("total de horas inteiras : " , horas)
      min_restantes <- total_min % 60
      escreval("minutos restantes: " , min_restantes)
      
fimalgoritmo
