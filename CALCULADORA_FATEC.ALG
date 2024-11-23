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

procedimento menujuros
inicio
   escreval ("Juros")
   escreval("1 - Juros Simples")
   escreval("2 - Juros Compostos")
   escreval("0 - Voltar ao menu principal")
fimprocedimento

procedimento menubase
inicio
   escreval ("Menu Conversao de Base Numérica")
   escreval("1 - B2 X B10")
   escreval("2 - B10 X B2")
   escreval("3 - B2 X B8")
   escreval("4 - B8 X B2")
   escreval("5 - B2 X B16")
   escreval("6 - B16 X B2")
   escreval("0 - Voltar ao menu principal")

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

funcao juros_compostos (c,i,t: real ) : real
inicio
   retorne  c *( 1 + (i /100)) ^ t
fimfuncao

funcao calcular_delta(): real
inicio
   delta<- (b*b) - (4*a*c)
   retorne delta
fimfuncao

funcao repeticao(): caracter
inicio
   escreva("Deseja realizar outra operação (s/n): ")
   leia(repetir)
   retorne repetir
fimfuncao

funcao B2XB10(binario: real) : real
var
   decimal, i, digito: real
inicio
   decimal <- 0
   i <- 0
   enquanto binario > 0 faca
      digito <- binario % 10
      decimal <- decimal + digito * (2 ^ i)
      binario <- binario / 10
      i <- i + 1
   fimenquanto
   retorne decimal
fimfuncao

Funcao B10XB2(Num: inteiro) : Caracter
Var
   Resultado: Caracter
Inicio
   Resultado <- ""
   Se Num = 0 Então
      Resultado <- "0"
   Senao
      enquanto (Num > 0) faca
         Se (Num % 2 = 0) Então
            Resultado <- ("0" + Resultado)
         Senao
            Resultado <- ("1" + Resultado)
         FimSe
         Num <- (Num div 2)
      FimEnquanto
   FimSe
   Retorne Resultado
FimFuncao



Var
   // Seção de Declarações das variáveis
   opcao, fat,fatorial,incremento, numero, termino, num : inteiro
   operacao,repetir,opcaojuros, opcaobase,resultado1: caracter
   x,y, resultado,juros, c, i, t, j,m,a,b,delta,binario : real



Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   repita
      menuprincipal
      escreva("Entre com a opção desejada: ")
      leia (opcao)
      escolha opcao
      caso 1
         repita
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
               fimescolha
            fimenquanto
            repetir := repeticao()
         ate repetir = "n"
      caso 2
         repita
            limpatela
            escreva(Concatenacao())
            escreval()
            repetir := repeticao()
         ate repetir = "n"
      caso 3
         repita
            limpatela
            escreva ("Digite um número: ")
            leia(numero)
            se numero >12 entao
               escreval("Tente novamente,o número deve ser igual ou menor que 12")
            senao
               escreval("O Fatorial de",numero," é:",Fatoracao(numero))
            fimse
            repetir := repeticao()
         ate repetir = "n"
      caso 4
         limpatela
         menujuros
         escreva ("Digite a opção desejada: ")
         leia (opcaojuros)
         escolha opcaojuros
         caso "1"
            repita
               LimpaTela
               escreva ("Digite o valor do seu capital inical (c): R$")
               leia (c)
               escreva ("Digite o valor do juros (i) em porcentagem:")
               leia(i)
               escreva ("Digite o tempo (t) em meses: ")
               leia(t)
               LimpaTela
               j := CalcularJurosSimples(c, i, t)
               escreva(c, " * ", i * 100, "% * ", t, " = R$", j:0:2)
               escreval
               escreva("O valor dos juros simples é: R$", j:0:2)
               escreval (" ")
               repetir := repeticao()
            ate repetir = "n"
         caso "2"
            repita
               limpatela
               escreva("Digite o capital aplicado:R$ ")
               leia(c)
               escreva("Digite a taxa de juros: ")
               leia(i)
               escreva("Digite o tempo: ")
               leia(t)
               m <- juros_compostos(c,i,t)
               escreval("O montante é: ",m)
               repetir := repeticao()
            ate repetir = "n"
         caso "0"
         outrocaso
            escreval ("Digite a opção correta, tente novamente!!!")
            escreval("Digite F9 para continuar")
            pausa
         fimescolha

      caso 5
         repita
            limpatela
            menubase
            escreva("Digite a opção desejada: ")
            leia(opcaobase)
            escolha opcaobase
            caso "1"
               limpatela
               escreva("Digite um número de Base 2: ")
               leia(binario)
               resultado <- B2XB10(binario)
               escreval("O número na Base 10 é: ", resultado)
            caso "2"
               limpatela
               Escreva("Digite um valor em B10: ")
               Leia(Num)
               Resultado1 <- B10XB2(Num)
               Escreval("O valor ", Num, " em B10 será de: ", Resultado1)
            outrocaso
               escreval("Opção inválida!!!")
            fimescolha
            repetir := repeticao()
         ate repetir = "n"
      caso 6
         repita
            limpatela
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
            delta := calcular_delta()
            se delta < 0 entao
               escreva("A equação não possui raízes reais.")
            senao
               se delta = 0 entao
                  x := -b + (RaizQ(delta)) / (2*a)
                  escreva("A equação possui uma raiz real: ", x)
               senao
                  x := (-b + RaizQ(delta)) / (2*a)
                  y := (-b - RaizQ(delta)) / (2*a)
                  escreva("As raízes da equação são: ", x, " e ", y)
               fimse
            fimse
            escreval("")
            repetir := repeticao()
         ate repetir = "n"
         repetir := "s"
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