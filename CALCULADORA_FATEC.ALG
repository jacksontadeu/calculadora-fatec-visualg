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
se (b=0) entao
   escreval ("Imposs�vel dividir por zero")
   escreval("Tente novamente!!!")
   escreval("Digite F9 para continuar")
   pausa
senao
     retorne a / b
fimse
fimfuncao

Var
// Se��o de Declara��es das vari�veis 
 opcao, fat,fatorial,incremento, numero : inteiro
 operacao : caracter
 x,y, resultado : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

repita
menuprincipal
escreva("Entre com a op��o desejada: ")
leia (opcao)
escolha opcao
caso 1
     limpatela
     operacao <- ""
     escreval ("Opera��es B�sicas")
     escreva("Digite um n�mero: ")
     leia(x)
     resultado <- x
     enquanto operacao <> "=" faca
        escreva ("Escolha a opera��o +,-,*,/ ou = para terminar: ")
        leia(operacao)
        escolha operacao
        caso "+"
             escreva("Digite outro n�mero: ")
             leia(y)
             resultado <- somar(resultado,y)
             limpatela
             escreval(resultado)

        caso "-"
             escreva("Digite outro n�mero: ")
             leia(y)
             resultado <- subtrair(resultado,y)
             limpatela
             escreval(resultado)

        caso "*"
             escreva("Digite outro n�mero: ")
             leia(y)
             resultado <- multiplicar(resultado,y)
             limpatela
             escreval(resultado)

        caso "/"
             escreva("Digite outro n�mero: ")
             leia(y)
             resultado <- dividir(resultado,y)
             limpatela
             escreval(resultado)

        caso "="
             limpatela
             escreval("Resultado: ",resultado)
             escreval("Digite F9 para continuar")
             pausa
             interrompa
        fimescolha
     fimenquanto
caso 2
caso 3
caso 4
     limpatela
     menujuros
caso 5
     limpatela
caso 6
caso 0
     escreva ("Obrigado por utilizar o sistema, saindo do sistema!!!")
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