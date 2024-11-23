Algoritmo "B10XB2"
Var
   Num: inteiro
   Resultado1: Caracter
Funcao B10XB2(Num: inteiro) : Caracter
Var
   Resultado: Caracter
Inicio
   Resultado <- ""
   Se Num = 0 Então
      Resultado <- "0"
   Senao
      enquanto (Num > 0) faca
         Se (Num % 2 = 0) Então
            Resultado <- ("0" + Resultado)
         Senao
            Resultado <- ("1" + Resultado)
         FimSe
         Num <- (Num div 2)
      FimEnquanto
   FimSe
   Retorne Resultado
FimFuncao

Inicio
   Escreva("Digite um valor em B2: ")
   Leia(Num)
   Resultado1 <- B10XB2(Num)
   Escreval("O valor ", Num, " em B10 será de: ", Resultado1, " em B2!!")
Fimalgoritmo

