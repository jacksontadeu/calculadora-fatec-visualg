Algoritmo "teste"
//  
//  
Var
   opcao,opcaoBase,i,numConversao,memoria,verif, contador: inteiro
   result,a, b, c: real
   strConversao,strFracao,memoriaStr,resultConversao: caractere
Inicio
 escreval("______________________________")
         escreval("|    Conversor de bases      |")
         escreval("|----------------------------|")
         escreval("| 1 - B10 x B2               |")
         escreval("| 2 - B2 x B10               |")
         escreval("| 3 - B2 x B8                |")
         escreval("| 4 - B8 x B2                |")
         escreval("| 5 - B2 x B16               |")
         escreval("| 6 - B16 x B2               |")
         escreval("|____________________________|")
         escreva("| Selecione uma conversao:")
         leia(opcaoBase)
         limpatela

         resultConversao <- ""

         escolha opcaoBase
            caso 1
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B10) = resultado(B2)")
               escreva("| Digite o valor em decimal:")
               leia(numConversao)
               limpatela

               memoria <- numConversao

               enquanto (numConversao > 0) faca
                  escolha (numConversao mod 2)
                     caso 0
                     resultConversao <- ("0"+resultConversao)
                     caso 1
                     resultConversao <- ("1"+resultConversao)
                     outrocaso
                     resultConversao <- "nao ha"
                     numConversao <- 0
                  fimescolha
                  numConversao <- (numConversao div 2)
               fimenquanto

               se resultConversao <> "invalido" entao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",memoria,"(B10) = ",resultConversao,"(B2)")
               senao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| invalido(B10) = ",resultConversao,"(B2)")
               fimse

            caso 2
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B10)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)
               contador <- 0

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     result <- result + 2 ^ contador
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     i <- 0
                  fimse

                  contador <- contador + 1
                  i <- i - 1
               fimEnquanto

               se strConversao <> "invalido" entao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",strConversao,"(B2) = ",result,"(B10)")
               senao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",strConversao,"(B10) = nao ha(B10)")
               fimse

               contador <- 0

            caso 3
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B8)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,(i-2),i)
                  strFracao <- copia(strFracao,1,3)
                  verif <- 0

                  se (strFracao = "0") ou (strFracao = "00") ou (strFracao = "000") entao
                     resultConversao <- "0" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") ou (strFracao = "01") ou (strFracao = "001") entao
                     resultConversao <- "1" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "10") ou (strFracao = "010") entao
                     resultConversao <- "2" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "11") ou (strFracao = "011") entao
                     resultConversao <- "3" + resultConversao
                     verif <- 1
                  fimse
                  se strFracao = "100" entao
                     resultConversao <- "4" + resultConversao
                     verif <- 1
                  fimse
                  se strFracao = "101" entao
                     resultConversao <- "5" + resultConversao
                     verif <- 1
                  fimse
                  se strFracao = "110" entao
                     resultConversao <- "6" + resultConversao
                     verif <- 1
                  fimse
                  se strFracao = "111" entao
                     resultConversao <- "7" + resultConversao
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 3
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B2) = ",resultConversao,"(B8)")

            caso 4
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B8) = resultado(B2)")
               escreva("| Digite o valor em octal:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     resultConversao <- "000" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     resultConversao <- "001" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "2") entao
                     resultConversao <- "010" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "3") entao
                     resultConversao <- "011" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "4") entao
                     resultConversao <- "100" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "5") entao
                     resultConversao <- "101" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "6") entao
                     resultConversao <- "110" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "7") entao
                     resultConversao <- "111" + resultConversao
                     verif <- 1
                  fimse

                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 1
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B8) = ",resultConversao,"(B2)")

            caso 5
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B16)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,(i-3),i)
                  strFracao <- copia(strFracao,1,4)
                  verif <- 0

                  se (strFracao = "0") ou (strFracao = "00") ou (strFracao = "000") ou (strFracao = "0000") entao
                     resultConversao <- "0" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") ou (strFracao = "01") ou (strFracao = "001") ou (strFracao = "0001") entao
                     resultConversao <- "1" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "10") ou (strFracao = "010") ou (strFracao = "0010") entao
                     resultConversao <- "2" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "11") ou (strFracao = "011") ou (strFracao = "0011") entao
                     resultConversao <- "3" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "100") ou (strFracao = "0100") entao
                     resultConversao <- "4" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "101") ou (strFracao = "0101") entao
                     resultConversao <- "5" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "110") ou (strFracao = "0110") entao
                     resultConversao <- "6" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "111") ou (strFracao = "0111") entao
                     resultConversao <- "7" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1000") entao
                     resultConversao <- "8" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1001") entao
                     resultConversao <- "9" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1010") entao
                     resultConversao <- "a" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1011") entao
                     resultConversao <- "b" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1100") entao
                     resultConversao <- "c" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1101") entao
                     resultConversao <- "d" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1110") entao
                     resultConversao <- "e" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1111") entao
                     resultConversao <- "f" + resultConversao
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 4
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B2) = ",resultConversao,"(B16)")

            caso 6
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B16) = resultado(B2)")
               escreva("| Digite o valor em hexadecimal:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- ""
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     resultConversao <- "0000" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     resultConversao <- "0001" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "2") entao
                     resultConversao <- "0010" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "3") entao
                     resultConversao <- "0011" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "4") entao
                     resultConversao <- "0100" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "5") entao
                     resultConversao <- "0101" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "6") entao
                     resultConversao <- "0110" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "7") entao
                     resultConversao <- "0111" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "8") entao
                     resultConversao <- "1000" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "9") entao
                     resultConversao <- "1001" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "a") entao
                     resultConversao <- "1010" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "b") entao
                     resultConversao <- "1011" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "c") entao
                     resultConversao <- "1100" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "d") entao
                     resultConversao <- "1101" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "e") entao
                     resultConversao <- "1110" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "f") entao
                     resultConversao <- "1111" + resultConversao
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 1
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B16) = ",resultConversao,"(B2)")

            outrocaso
               escreval("Opcao invalida")
         fimescolha.
Fimalgoritmo