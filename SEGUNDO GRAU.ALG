Algoritmo "Segundo Grau"
Var
    a, b, c, delta, x1, x2: Real
Inicio
    Escreva("Digite o valor de a: ")
    Leia(a)
    Escreva("Digite o valor de b: ")
    Leia(b)
    Escreva("Digite o valor de c: ")
    Leia(c)
    delta<- (b*b) - (4*a*c)
    Se delta < 0 Então
        Escreva("A equação não possui raízes reais.")
    Senão
        Se delta = 0 Então
            x1 := -b / (2*a)
            Escreva("A equação possui uma raiz real: ", x1)
        Senão
            x1 := (-b + Raiz(delta)) / (2*a)
            x2 := (-b - Raiz(delta)) / (2*a)
            Escreva("As raízes da equação são: ", x1, " e ", x2)
        FimSe
    FimSe
FimAlgoritmo