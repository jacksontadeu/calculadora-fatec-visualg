Algoritmo "Caluladora_Fatec"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
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
se (b=0) entao
   escreval ("Impossível dividir por zero")
   escreval("Tente novamente!!!")
   escreval("Digite F9 para continuar")
   pausa
senao
     retorne a / b
fimse
fimfuncao

funcao Concatenacao():caracter
var
opcao, palavra, string: caracter
inicio
enquanto opcao <> "n" faca
    escreva("Digite uma palavra: ")
    leia(palavra)
    string  <- string + palavra
    escreva ("Deseja continuar (s/n): ")
    leia(opcao)
fimenquanto
    retorne string

fimfuncao

funcao Fatoracao (numero: inteiro) : inteiro
var
fatorial :inteiro
inicio
fatorial<-1
se numero=0 entao
  fatorial<-1
  senao entao
     para incremento de numero até 1 passo -1 faca
          fatorial<-incremento * fatorial
     fimpara
fimse
retorne fatorial
fimfunção

funcao CalcularJurosSimples(c, i, t: real): real

Inicio
juros := c * t * i/100
retorne juros

fimfuncao




Var
// Seção de Declarações das variáveis 
 opcao, fat,fatorial,incremento, numero, termino : inteiro
 operacao,repetir,opcaojuros: caracter
 x,y, resultado,juros, c, i, t, j : real



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

repita
menuprincipal
escreva("Entre com a opção desejada: ")
leia (opcao)
escolha opcao
caso 1
     limpatela
     operacao <- ""
     escreva("Digite um número: ")
     leia(x)
     resultado <- x
     enquanto operacao <> "=" faca
        escreva ("Escolha a operação +,-,*,/ ou = para terminar: ")
        leia(operacao)
        escolha operacao
        caso "+"
             escreva("Digite outro número: ")
             leia(y)
             resultado <- somar(resultado,y)
             limpatela
             escreval(resultado)

        caso "-"
             escreva("Digite outro número: ")
             leia(y)
             resultado <- subtrair(resultado,y)
             limpatela
             escreval(resultado)

        caso "*"
             escreva("Digite outro número: ")
             leia(y)
             resultado <- multiplicar(resultado,y)
             limpatela
             escreval(resultado)

        caso "/"
             escreva("Digite outro número: ")
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
     limpatela
      escreva(Concatenacao())
      escreval()
      escreval("Digite F9 para continuar")
      pausa
caso 3
     limpatela
     escreva ("Digite um número: ")
     leia(numero)
     escreval("O Fatorial de",numero," é:",Fatoracao(numero))
     escreval("Digite F9 para continuar")
     pausa
caso 4
     limpatela
     menujuros
         escreva ("Digite a opção desejada: ")
         leia (opcaojuros)
         escolha opcaojuros
         caso "1"
               enquanto repetir <> "n" faca
               LimpaTela
               escreva ("Digite o valor do seu capital inical (c): R$")
               leia (c)
               escreva ("Digite o valor do juros (i) em porcentagem:")
               leia(i)
               escreva ("Digite o tempo (t) em meses: ")
               leia(t)
               LimpaTela

               //i := i / 100
               j := CalcularJurosSimples(c, i, t)
               escreva(c, " * ", i * 100, "% * ", t, " = R$", j:0:2)
               escreval
               escreva("O valor dos juros simples é: R$", j:0:2)
               escreval
               escreva("Gostaria de realizar outra simulação? Sim (s) ou Não (n): ")
               
               leia(repetir)
               LimpaTela
               fimenquanto
               
         outrocaso
               escreval ("Digite a opção correta, tente novamente!!!")
               escreval("Digite F9 para continuar")
               pausa
         fimescolha
caso 5
     limpatela
caso 6
caso 0
     escreva ("Obrigado por utilizar o sistema, saindo do sistema!!!")
     timer (1000)

outrocaso
         escreva("Opção invalida, tente novamente!!!")
         timer(1000)
         timer (0)
fimescolha
limpatela
ate opcao = 0
fimalgoritmo