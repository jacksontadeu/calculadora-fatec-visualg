Algoritmo "semnome"

funcao octaxbinario(recebeocta : caractere ) : caractere
inicio

memoriastring <- recebeocta
i <- compr(recebeocta)

enquanto i > 0 faca
    partestring <- copia(recebeocta, i, i) // Seleciona o caracter atual
    partestring <- copia(partestring, 1, 1) // Verifica se é 1 caracter
    teste <- 0

    se (partestring = "0") entao
        armazconversao <- "000" + armazconversao
        teste <- 1
    fimse
    se (partestring = "1") entao
        armazconversao <- "001" + armazconversao
        teste <- 1
            fimse
    se (partestring = "2") entao
        armazconversao <- "010" + armazconversao
        teste <- 1
        fimse
    se (partestring = "3") entao
        armazconversao <- "011" + armazconversao
        teste <- 1
        fimse
    se (partestring = "4") entao
        armazconversao <- "100" + armazconversao
        teste <- 1
        fimse
    se (partestring = "5") entao
        armazconversao <- "101" + armazconversao
        teste <- 1
        fimse
    se (partestring = "6") entao
        armazconversao <- "110" + armazconversao
        teste <- 1
    fimse
    se (partestring = "7") entao
        armazconversao <- "111" + armazconversao
        teste <- 1
    fimse
    
    se teste = 0 entao
        recebeocta <- "invalido"
        armazconversao <- "nao ha"
        i <- 0
    fimse

    i <- i - 1
fimenquanto

   retorne armazconversao
fimfuncao

Var
   i,teste: inteiro
   recebeocta,partestring,memoriastring,armazconversao,resultadostg: caractere

Inicio
   escreva("Digite o valor em octadecimal:")
   leia(recebeocta)
   resultadostg <- octaxbinario(recebeocta)


   escreval("O número: ", recebeocta, " é ", resultadostg)


Fimalgoritmo