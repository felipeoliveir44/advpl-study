#INCLUDE 'protheus.ch'

// Ex - Faça a soma de dois numeros e imprima na tela

User Function soma()
    Local cNumber1 := FWInputBox("Entrada de dados", "Digite o primeiro número", "")
    Local cNumber2 := FWInputBox("Entrada de dados", "Digite o segundo número", "")
    // Convertendo as strings em números
    Local nNumber1 := Val(cNumber1)
    Local nNumber2 := Val(cNumber2)
    Local nResult := nNumber1 + nNumber2
    Alert( "O resultado da soma é: " + Str(nResult) )
Return
