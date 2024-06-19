#INCLUDE 'protheus.ch'

/*

Bloco de codiigo é uma função inline, onde podem ser declarados parametros
de entrada, e dentro dele podemos colocar uma ou mais expressoes separados por virgula

Para que serve os pipes? (||) - Serve para adicionar parametros
*/

user function bloco()
    Local bBloco := {|| alert("hello world")}

    // Executar bloco de código
    EVal(bBloco)

    Local bBloco2 := {|cMsg| alert(cMsg)}
    EVal(bBloco2, "teste")
return
