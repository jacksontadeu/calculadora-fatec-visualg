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
    Se delta < 0 Ent�o
        Escreva("A equa��o n�o possui ra�zes reais.")
    Sen�o
        Se delta = 0 Ent�o
            x1 := -b / (2*a)
            Escreva("A equa��o possui uma raiz real: ", x1)
        Sen�o
            x1 := (-b + Raiz(delta)) / (2*a)
            x2 := (-b - Raiz(delta)) / (2*a)
            Escreva("As ra�zes da equa��o s�o: ", x1, " e ", x2)
        FimSe
    FimSe
FimAlgoritmo