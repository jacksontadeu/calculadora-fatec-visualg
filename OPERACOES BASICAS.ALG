Algoritmo "Operacoes basicas"

 procedimento valores(y:caracter)
      inicio
      Escreval("Digite o primeiro valor: ")
      Leia(entrada)
      Escreval("Digite o segundo valor: ")
      Leia(entrada_dois)
      fimprocedimento

Var

entrada, entrada_dois, resultado, i: real
operacao,loop: caracter

Inicio
      repita

      Escreval("Escolha dentre as op��es")
      Escreval("1 - Soma")
      Escreval("2 - Subtra��o")
      Escreval("3 - Multiplica��o")
      Escreval("4 - Divis�o")
      leia(operacao)
      LimpaTela

 Escolha operacao
     caso "1"
     valores("")
     resultado <- entrada + entrada_dois
     escreval("")
     Escreval(entrada," ","+",entrada_dois," =",resultado)
     
     caso "2"
     valores("")
     resultado <- entrada - entrada_dois
     escreval("")
     Escreval(entrada," ","-",entrada_dois," =",resultado)
     
     caso "3"
     valores("")
     resultado <- entrada * entrada_dois
     escreval("")
     Escreval(entrada," ","*",entrada_dois," =",resultado)
     
     caso "4"
     valores("")
     
     se entrada = 0  entao
     escreval("")
     Escreval ("Opera��o invalida, n�o � possivel dividir por 0")
     senao
     
     se entrada_dois = 0 entao
     escreval("")
     Escreval ("Opera��o invalida, n�o � possivel dividir por 0")
     senao
     
     resultado <- entrada / entrada_dois
     Escreval(entrada," ","/" ,entrada_dois," =",resultado)
     fimse
     fimse
     
     outrocaso
     i <- 1
     
Fimescolha

se ( i = 1) entao

escreval("Opera��o invalida, deseja digitar novamente?")
escreval("Pressione s para reiniciar")
leia(loop)

senao

Escreval("Deseja realizar outra opera��o? ")
escreval("Pressione s para reiniciar")
leia(loop)
fimse


ate loop <> "s"
Fimalgoritmo

