#INCLUDE 'protheus.ch'

// Ex - Fa�a a soma de dois numeros e imprima na tela

User Function soma()
    Local cNumber1 := FWInputBox("Entrada de dados", "Digite o primeiro n�mero", "")
    Local cNumber2 := FWInputBox("Entrada de dados", "Digite o segundo n�mero", "")
    // Convertendo as strings em n�meros
    Local nNumber1 := Val(cNumber1)
    Local nNumber2 := Val(cNumber2)
    Local nResult := nNumber1 + nNumber2
    Alert( "O resultado da soma �: " + Str(nResult) )
Return
