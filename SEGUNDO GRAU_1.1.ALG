algoritmo "Segundo Grau"
var
a, b, c, delta, x1, x2: Real
inicio
repita
    escreva("Digite o valor de a: ")
    leia(a)
    se a=0 entao
       escreval("Não é uma Equação de Segundo Grau, Insira outro valor de a:")
    fimse
ate a<>0
    
    escreva("Digite o valor de b: ")
    leia(b)
    escreva("Digite o valor de c: ")
    leia(c)
    delta<- (b*b) - (4*a*c)
    se delta < 0 entao
        escreva("A equação não possui raízes reais.")
    senao
        se delta = 0 entao
            x1 := -b / (2*a)
            escreva("A equação possui uma raiz real: ", x1)
        senao
            x1 := (-b + RaizQ(delta)) / (2*a)
            x2 := (-b - RaizQ(delta)) / (2*a)
            escreva("As raízes da equação são: ", x1, " e ", x2)
        fimse
    fimse
fimalgoritmo