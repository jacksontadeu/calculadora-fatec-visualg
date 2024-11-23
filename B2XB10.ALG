algoritmo "B2XB10"
var
   binario: inteiro
   resultado: real
   
 funcao B2XB10(binario: real) : real
var
   decimal, i, digito: real
inicio
   decimal <- 0
   i <- 0
   enquanto binario > 0 faca
      digito <- binario % 10
      decimal <- decimal + digito * (2 ^ i)
      binario <- binario / 10
      i <- i + 1
   fimenquanto
   retorne decimal
   fimfuncao
inicio
   escreva("Digite um número de Base 2: ")
   leia(binario)
   resultado <- B2XB10(binario)
   escreva("O número na Base 10 é: ", resultado)
fimalgoritmo



