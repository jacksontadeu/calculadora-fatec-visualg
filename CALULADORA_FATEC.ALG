Algoritmo "Caluladora_Fatec"
procedimento menuprincipal
inicio
escreval ("Menu Calculadora")
escreval("1 - Operações Básicas")
escreval("2 - Concatenar Strings")
escreval("3 - Fatorial")
escreval("4 - Juros")
escreval("5 - Conversão de Base Numérica")
escreval("6 - Função do Segundo Grau")
escreval("0 - Sair do sistema")
fimprocedimento

procedimento menuoperacoes
inicio
escreval ("Operações Básicas")
escreval("1 - Somar")
escreval("2 - Subtrair")
escreval("3 - Multiplicar")
escreval("4 - Dividir")
escreval("0 - Voltar ao menu principal")
fimprocedimento

procedimento menujuros
inicio
escreval ("Juros")
escreval("1 - Juros Simples")
escreval("2 - Juros Compostos")
fimprocedimento

funcao somar(a,b: real): real
inicio
retorne a + b
fimfuncao

funcao subtrair(a,b: real): real
inicio
retorne a - b
fimfuncao

funcao multiplicar(a,b: real): real
inicio
retorne a * b
fimfuncao

funcao dividir(a,b: real): real
inicio
retorne a / b
fimfuncao


Var
// Seção de Declarações das variáveis 
 opcao : inteiro
 operacao : inteiro
 x,y : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

repita
menuprincipal
escreva("Entre com a opção desejada: ")
leia (opcao)
escolha opcao
caso 1

     limpatela

     menuoperacoes
     escreva("Digite a operação desejada: ")
     leia (operacao)
     escolha operacao
     caso 1
          escreva("Digite um número: ")
          leia(x)
          escreva("Digite outro número: ")
          leia(y)
          escreval(somar(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 2
          escreva("Digite um número: ")
          leia(x)
          escreva("Digite outro número: ")
          leia(y)
          escreval(subtrair(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 3
          escreva("Digite um número: ")
          leia(x)
          escreva("Digite outro número: ")
          leia(y)
          escreval(multiplicar(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 4
          escreva("Digite um número: ")
          leia(x)
          escreva("Digite outro número: ")
          leia(y)
          escreval(dividir(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 0


     fimescolha

caso 2
caso 3
caso 4
     limpatela
     menujuros
caso 5
     limpatela
caso 6
caso 0
     escreva ("Saindo do sistema")
     timer (1000)
     interrompa
outrocaso
         escreva("Opção invalida, tente novamente!!!")
         timer(1000)
         timer (0)
fimescolha
limpatela
ate opcao = 0

fimalgoritmo