#INCLUDE 'protheus.ch'


User Function vldVenda()
    Local nEstoque := 10
    Local nVenda := 10

    If nEstoque > nVenda
        alert("Pedido liberado!")
    ElseIf nEstoque == nVenda
        alert("Pedido liberado! Mas sem estoque")
    Else 
        alert("Sem estoque!")
    Endif
Return

/*

Do case
    Case <Condicao>
        - Comando
    Case <Condicao>
        - Comando
    OtherWise (N�o obrigatorio)
        - Comando
EndCase

*/
User Function switchCase()
    Local nNumero := 9
    Do Case
        Case nNumero % 2 == 0
            msgAlert("O n�mero � par")
        Case nNumero % 2 != 0
            msgAlert("O n�mero � impar")
        Otherwise
            msgAlert("O n�mero � 0")
    EndCase
Return

