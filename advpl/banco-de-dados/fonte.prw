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

