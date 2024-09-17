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

      Escreval("Escolha dentre as opções")
      Escreval("1 - Soma")
      Escreval("2 - Subtração")
      Escreval("3 - Multiplicação")
      Escreval("4 - Divisão")
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
     Escreval ("Operação invalida, não é possivel dividir por 0")
     senao
     
     se entrada_dois = 0 entao
     escreval("")
     Escreval ("Operação invalida, não é possivel dividir por 0")
     senao
     
     resultado <- entrada / entrada_dois
     Escreval(entrada," ","/" ,entrada_dois," =",resultado)
     fimse
     fimse
     
     outrocaso
     i <- 1
     
Fimescolha

se ( i = 1) entao

escreval("Operação invalida, deseja digitar novamente?")
escreval("Pressione s para reiniciar")
leia(loop)

senao

Escreval("Deseja realizar outra operação? ")
escreval("Pressione s para reiniciar")
leia(loop)
fimse


ate loop <> "s"
Fimalgoritmo

