Algoritmo "B2XB16"
Var
   binario:real
   Resultado: Caracter
funcao B2XB16(binario: real) : caracter
var
   decimal, Valor,i,digito:real
inicio
   decimal <- 0
   i <- 0
   enquanto binario > 0 faca
      digito <- binario % 10
      decimal <- decimal + digito * (2 ^ i)
      binario <- binario/10
      i <- i + 1
   fimenquanto
   Valor <- (decimal)
   se decimal mod 16=0 entao
      resultado<-resultado+"0"
   fimse
   enquanto (decimal >0) faca
      Escolha (decimal mod 16)
      caso 1
         Resultado<- ("1" + Resultado)
      caso 2
         Resultado<- ("2" + Resultado)
      caso 3
         Resultado<- ("3" + Resultado)
      caso 4
         Resultado<- ("4" + Resultado)
      caso 5
         Resultado<- ("5" + Resultado)
      caso 6
         Resultado <- ("6" + Resultado)
      caso 7
         Resultado <- ("7" + Resultado)
      caso 8
         Resultado <- ("8" + Resultado)
      caso 9
         Resultado <- ("9" + Resultado)
      caso 10
         Resultado <- ("A" + Resultado)
      caso 11
         Resultado <- ("B" + Resultado)
      caso 12
         Resultado <- ("C" + Resultado)
      caso 13
         Resultado <- ("D" + Resultado)
      caso 14
         Resultado <- ("E" + Resultado)
      caso 15
         Resultado <- ("F" + Resultado)
      FimEscolha
      decimal <- (decimal/16)
   FimEnquanto
    retorne Resultado
    fimfuncao
inicio
   escreva("Digite um número de Base 2: ")
   leia(binario)
   resultado <- B2XB16(binario)
   escreva("O número na Base 16 é: ", resultado)
FimAlgoritmo