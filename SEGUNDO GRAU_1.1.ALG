algoritmo "Segundo Grau"
var
a, b, c, delta, x1, x2: Real
inicio
repita
    escreva("Digite o valor de a: ")
    leia(a)
    se a=0 entao
       escreval("N�o � uma Equa��o de Segundo Grau, Insira outro valor de a:")
    fimse
ate a<>0
    
    escreva("Digite o valor de b: ")
    leia(b)
    escreva("Digite o valor de c: ")
    leia(c)
    delta<- (b*b) - (4*a*c)
    se delta < 0 entao
        escreva("A equa��o n�o possui ra�zes reais.")
    senao
        se delta = 0 entao
            x1 := -b / (2*a)
            escreva("A equa��o possui uma raiz real: ", x1)
        senao
            x1 := (-b + RaizQ(delta)) / (2*a)
            x2 := (-b - RaizQ(delta)) / (2*a)
            escreva("As ra�zes da equa��o s�o: ", x1, " e ", x2)
        fimse
    fimse
fimalgoritmo