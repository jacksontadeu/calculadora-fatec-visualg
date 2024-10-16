
Algoritmo "juros_compostos"

funcao juros_compostos (c,i,t: real ) : real
inicio
retorne  c *( 1 + (i /100)) ^ t
fimfuncao
Var
m,i,c,t: real
periodo_taxa,periodo,valida: inteiro
// M= montante, I= taxa de juros, C= capital, n = periodo de aplicação

Inicio
escreval("Digite o capital aplicado:R$")
leia(c)
escreval("Digite a taxa de juros: ")
leia(i)
valida <- 0
enquanto valida <> 1 faca
escreval("A taxa de juros é: ")
escreval("1 - Ao mês ")
escreval("2 - Ao ano ")
leia(periodo_taxa)
    se periodo_taxa = 1 entao
       valida <- 1
    fimse
    se periodo_taxa = 2 entao
       valida <- 1
    fimse
fimenquanto

escreval("Digite o tempo: ")
leia(t)
valida <- 0
enquanto valida <> 1 faca
escreval("O periodo é :")
escreval("1 - Meses ")
escreval("2 - Anos ")
leia(periodo)
    se periodo = 1 entao
       valida <- 1
    fimse
    se periodo = 2 entao
       valida <- 1
    fimse
fimenquanto

escolha periodo_taxa
        caso 1
        se periodo = 2 entao
           t <- t * 12    // faz a conversao caso taxa ao mes e periodo ao ano
        fimse
        caso 2
        se periodo = 1 entao
           t <- t / 12   // faz a conversao caso taxa ao ano e periodo ao mes
        fimse
fimescolha
m <- juros_compostos(c,i,t)
escreval("O montante é: ",m)
Fimalgoritmo