Algoritmo "semnome"

funcao binarioxocta (recebebin : caractere ) : caractere
inicio
    memoriastring <- recebebin
   i <- compr(recebebin)

   enquanto i > 0 faca
      teste <- 0  // o teste, verifica se o digito do usuario é valido
      partestring <- copia(recebebin,(i-2),i) // essas 2 linhas estão
      partestring <- copia(partestring,1,3)   // responsaveis por organizar os 3 digitos


      se (partestring = "0") ou (partestring = "00") ou (partestring = "000") entao
         armazconversao <- "0" + armazconversao
         teste <- 1
      fimse
      se (partestring = "1") ou (partestring = "01") ou (partestring = "001") entao
         armazconversao <- "1" + armazconversao
         teste <- 1
      fimse
      se (partestring = "10") ou (partestring = "010") entao
         armazconversao <- "2" + armazconversao
         teste <- 1
      fimse
      se (partestring = "11") ou (partestring = "011") entao
         armazconversao <- "3" + armazconversao
         teste <- 1
      fimse
      se partestring = "100" entao
         armazconversao <- "4" + armazconversao
         teste <- 1
      fimse
      se partestring = "101" entao
         armazconversao <- "5" + armazconversao
         teste <- 1
      fimse
      se partestring = "110" entao
         armazconversao <- "6" + armazconversao
         teste <- 1
      fimse
      se partestring = "111" entao
         armazconversao <- "7" + armazconversao
         teste <- 1
      fimse
      se teste = 0 entao
         recebebin <- "invalido" // caso teste = 0, invalida o recebebin
         armazconversao <- "invalido"
         i <- 0
      fimse

      i <- i - 3   // zera o i para outra operação
   fimEnquanto
retorne armazconversao
fimfuncao

Var
   i,teste: inteiro
   recebebin,partestring,memoriastring,armazconversao,resultadostg: caractere

Inicio
   escreva("Digite o valor em binario:")
   leia(recebebin)
   resultadostg <- binarioxocta(recebebin)


   escreval("O número: ", recebebin, " é ", resultadostg," na Base 8")


Fimalgoritmo