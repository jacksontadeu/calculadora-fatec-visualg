Algoritmo "Fatorial 1.0"

Var
resultado,numero1,fatorial,incremento: inteiro//Declara��o das variaveis
funcao Fatoracao (numero: inteiro) : inteiro  //Declara��o da fun��o Fatora��o
var
fatorial :inteiro //Variavel da Fun��o
inicio
fatorial<-1 //Fatorial recebe valor 1 neutro em multiplica��o
  se numero=0 entao //Condi��o para caso o numero solicitaddo for 0 retorna o valor de 1
  fatorial<-1
  senao entao  //Caso n�o seja 0 Continuar com o calculo
     para incremento de numero at� 1 passo -1 faca //Repeti��o para decrescer o valor do fatorial
          fatorial<-incremento * fatorial  //Fatorial recebe o produto de seu valor anterior vezes o incremento
     fimpara
  fimse
retorne fatorial //Retorno do valor da Fun��o
fimfun��o
Inicio
escreva("Digite o n�mero que deseja saber o Fatorial:")// Solicitando valor ao usu�rio
  leia(numero1)
resultado<- Fatoracao(numero1)  // Chamando a fun��o Fatora��o
escreva("O Fatorial de", numero1,"! �=",resultado)//Resultado Final impresso na tela

Fimalgoritmo