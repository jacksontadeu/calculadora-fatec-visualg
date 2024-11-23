Algoritmo "B16XB2"
Var
Resultado,hexadecimal: Caracter
funcao B16XB2(hexadecimal: caracter) : caracter
var
   i,verif: inteiro
   strFracao,memoriaStr: caractere
inicio
               memoriaStr <- hexadecimal
               i <- compr(hexadecimal)

               enquanto i > 0 faca
                  strFracao <- ""
                  strFracao <- copia(hexadecimal,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     resultado <- "0000" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     resultado <- "0001" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "2") entao
                     resultado <- "0010" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "3") entao
                     resultado <- "0011" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "4") entao
                     resultado <- "0100" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "5") entao
                     resultado <- "0101" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "6") entao
                     resultado <- "0110" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "7") entao
                     resultado <- "0111" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "8") entao
                     resultado <- "1000" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "9") entao
                     resultado <- "1001" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "A") entao
                     resultado <- "1010" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "B") entao
                     resultado <- "1011" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "C") entao
                     resultado <- "1100" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "D") entao
                     resultado <- "1101" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "E") entao
                     resultado <- "1110" + resultado
                     verif <- 1
                  fimse
                  se (strFracao = "F") entao
                     resultado<- "1111" + resultado
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     hexadecimal <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse
                  i <- i - 1
               fimEnquanto
               retorne resultado
fimfuncao
inicio
   escreva("Digite um número de Base 16: ")
   leia(hexadecimal)
   resultado <- B16XB2(hexadecimal)
   escreva("O número na Base 2 é: ", resultado)
fimalgoritmo
