Algoritmo "juros_simples"

Var
repetir: caractere
juros, c, i, t, j: real
funcao calcular(c, i, t: real): real

Inicio
juros := c * t * i
retorne juros

fimfuncao

inicio
repita
escreva ("Digite o valor do seu capital inical (c): R$")
leia (c)
LimpaTela

escreva ("Digite o valor do juros (i) em porcentagem:")
leia(i)
LimpaTela

escreva ("Digite o tempo (t) em meses: ")
leia(t)
LimpaTela

i := i / 100
j := calcular(c, i, t)

escreva(c, " * ", i * 100, "% * ", t, " = R$", j:0:2)
escreval

escreva("O valor dos juros simples é: R$", j:0:2)
escreval

escreva("Gostaria de realizar outra simulação? Sim (S) ou Não (N): ")
leia(repetir)
LimpaTela
ate repetir = "N"



Fimalgoritmo