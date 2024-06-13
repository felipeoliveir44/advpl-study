#INCLUDE 'protheus.ch'

/*
 -- Utilizando while

While <condicao>
    - Comando
    [Opcional] exit - Força a saida do laço // loop - força que o inicio seja executado novamente
End

-- Utilizando for

For nInicio To nFim [Stop incremento]
    - Comando
    [Opcional] exit - Força a saida do laço // loop - força que o inicio seja executado novamente
Next
*/

User Function exWhile()

    Local nCont := 1

    While nCont <= 10
    
        if nCont == 5
            exit
        End

        if nCont % 2 == 0
            nCont ++
            loop
        Endif

        alert(nCont)
        nCont++
    End

Return

User Function exFor()
    Local nInicio := 0
    Local nFim := 10

    for nInicio := 1 to nFim
        alert(nInicio)
    next
Return
