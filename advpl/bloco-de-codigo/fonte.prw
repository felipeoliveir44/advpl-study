#INCLUDE 'protheus.ch'

/*

Bloco de codiigo � uma fun��o inline, onde podem ser declarados parametros
de entrada, e dentro dele podemos colocar uma ou mais expressoes separados por virgula

Para que serve os pipes? (||) - Serve para adicionar parametros
*/

user function bloco()
    Local bBloco := {|| alert("hello world")}

    // Executar bloco de c�digo
    EVal(bBloco)

    Local bBloco2 := {|cMsg| alert(cMsg)}
    EVal(bBloco2, "teste")
return
