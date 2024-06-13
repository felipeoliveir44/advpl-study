

// Ex 2 - Simulação de um estoque e realizar uma venda e retirar a quantidade
// De produto do estoque

User Function exEstoque()
    Private nProdutoEstoque := 50
    Private cQuantidade := FWInputBox("Escolha a quantidade de produtos desejado", "", "")
    // Transformar em number
    Private cQuantidade := Val(cQuantidade)

    if nProdutoEstoque >= cQuantidade
        alert("Produto vendido pela quantidade: " + Str(cQuantidade))
        nProdutoEstoque := nProdutoEstoque - cQuantidade
        alert("Estoque atual: " + Str(nProdutoEstoque))
    ElseIf cQuantidade > nProdutoEstoque
        alert("Erro! Quantidade maior que o estoque")
    EndIf

Return
