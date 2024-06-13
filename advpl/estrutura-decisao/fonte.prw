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

