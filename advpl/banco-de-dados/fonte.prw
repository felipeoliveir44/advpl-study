#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*
DbSetOrder - Localiza um indice
    * Todo indice no protheus, começa na filial

DbSeek - Varrer a tabela
FXWFilial - Filial atual, que estiver logado no sistema


*/
user function banco0001()
    // Faz referencia a tabela que queremos usar
    // -> é o item que faz referencia
    // GetArea - Pega a area de referencia (Trazer a SB1)
    Local aArea := SB1 -> (GetArea())

    // Abrir a tabela
    // 1° parametro - Colocamos o nome da tabela
    DbSelectArea("SB1")
    SB1 -> (DbSetOrder(1))
    SB1 -> (DbGoTop())

    if SB1 -> (DbSeek(FXWFilial("SB1" + "000002")))
        alert(SB1 -> B1_DESC)
    endif

    // Sair da tabela
    RestArea(aArea)

return

User Function criar_bd()
    // Variaveis 
    Local aStruct := {}
    Local cTable := "tbproduto"
    Local cRdd   := 'TOPCONN'

    // Abre conexao com BD
    nHwnd := TCLink()
    
    // Conectou ao banco
    if nHwnd >= 0
        conout("Conectado")
    endif

    // Estrutura da tabelas
    aadd(aStruct, {"id", "N", 10, 0})
    aadd(aStruct, {"produto", "C", 10, 0})
    aadd(aStruct, {"quantidade", "N", 100, 0})
    aadd(aStruct, {"preco", "N", 30, 2})

    // Cria tabela
    dbCreate(cTable, aStruct, cRdd)
    
Return

User Function sistema()

    Local cTable := "tbproduto"
    Local cAlias := "TBPRODUTO"
    Local cId    := 4
    Local cProduto := "" 
    Local cQuantidade := "" 
    Local cPreco := "" 

    TCLink()
    DbUseArea(.F., 'TOPCONN', cTable, (cAlias), .F., .T.)

    alert(alias())

    if Alias() == cAlias
        alert("current workarea: " + cAlias)
    else 
        alert("erro")
    endif

    DbSelectArea("TBPRODUTO") // Seleciona a tabela
    (TBPRODUTO)->(DbAppend(.F.))

    cProduto    := FWInputBox("Digite o nome do produto", "", "")
    cQuantidade := FWInputBox("Digite a quantidade de produtos", "", "")
    cPreco      := FWInputBox("Digite o preço do produto", "Digite o preço do produto", "")

    nQuantidade := Val(cQuantidade)
    nPreco      := Val(cPreco)


    (TBPRODUTO)->ID := cId
    (TBPRODUTO)->PRODUTO := cProduto
    (TBPRODUTO)->QUANTIDADE := nQuantidade
    (TBPRODUTO)->PRECO      := nPreco
    MsUnlock()              // Desbloqueia para gravação
    DbCommit()              // Salva o registro
    alert("Registro cadastrado com sucesso!")

    

     

Return
