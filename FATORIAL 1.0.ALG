Algoritmo "Fatorial 1.0"

Var
resultado,numero1,fatorial,incremento: inteiro//Declaração das variaveis
funcao Fatoracao (numero: inteiro) : inteiro  //Declaração da função Fatoração
var
fatorial :inteiro //Variavel da Função
inicio
fatorial<-1 //Fatorial recebe valor 1 neutro em multiplicação
  se numero=0 entao //Condição para caso o numero solicitaddo for 0 retorna o valor de 1
  fatorial<-1
  senao entao  //Caso não seja 0 Continuar com o calculo
     para incremento de numero até 1 passo -1 faca //Repetição para decrescer o valor do fatorial
          fatorial<-incremento * fatorial  //Fatorial recebe o produto de seu valor anterior vezes o incremento
     fimpara
  fimse
retorne fatorial //Retorno do valor da Função
fimfunção
Inicio
escreva("Digite o número que deseja saber o Fatorial:")// Solicitando valor ao usuário
  leia(numero1)
resultado<- Fatoracao(numero1)  // Chamando a função Fatoração
escreva("O Fatorial de", numero1,"! é=",resultado)//Resultado Final impresso na tela

Fimalgoritmo