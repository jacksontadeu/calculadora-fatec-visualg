Algoritmo "Caluladora_Fatec"
procedimento menuprincipal
inicio
escreval ("Menu Calculadora")
escreval("1 - Opera��es B�sicas")
escreval("2 - Concatenar Strings")
escreval("3 - Fatorial")
escreval("4 - Juros")
escreval("5 - Convers�o de Base Num�rica")
escreval("6 - Fun��o do Segundo Grau")
escreval("0 - Sair do sistema")
fimprocedimento

procedimento menuoperacoes
inicio
escreval ("Opera��es B�sicas")
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
se (b = 0) entao
   escreval("N�o � poss�vel dividir por zero")
senao
     retorne a / b
fimse
fimfuncao

funcao Fatoracao (numero: inteiro) : inteiro
var
fatorial :inteiro
inicio
fatorial<-1
se numero=0 entao
  fatorial<-1
  senao entao
     para incremento de numero at� 1 passo -1 faca
          fatorial<-incremento * fatorial
     fimpara
fimse
retorne fatorial
fimfun��o


Var
// Se��o de Declara��es das vari�veis 
 opcao : inteiro
 operacao : inteiro
 x,y : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

repita
menuprincipal
escreva("Entre com a op��o desejada: ")
leia (opcao)
escolha opcao
caso 1

     limpatela

     menuoperacoes
     escreva("Digite a opera��o desejada: ")
     leia (operacao)
     escolha operacao
     caso 1
          escreva("Digite um n�mero: ")
          leia(x)
          escreva("Digite outro n�mero: ")
          leia(y)
          escreval(somar(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 2
          escreva("Digite um n�mero: ")
          leia(x)
          escreva("Digite outro n�mero: ")
          leia(y)
          escreval(subtrair(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 3
          escreva("Digite um n�mero: ")
          leia(x)
          escreva("Digite outro n�mero: ")
          leia(y)
          escreval(multiplicar(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 4
          escreva("Digite um n�mero: ")
          leia(x)
          escreva("Digite outro n�mero: ")
          leia(y)
          escreval(dividir(x,y))
          escreva("Digite F9 para continuar")
          pausa
     caso 0


     fimescolha

caso 2
caso 3
     limpatela
     escreva("Digite um n�mero: ")
     leia(fat)
     fatorial(fat)
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
         escreva("Op��o invalida, tente novamente!!!")
         timer(1000)
         timer (0)
fimescolha
limpatela
ate opcao = 0

fimalgoritmo