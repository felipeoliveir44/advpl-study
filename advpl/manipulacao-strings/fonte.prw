#INCLUDE 'protheus.ch'

/*

SubStr() - Extrai uma parte da string
    * 1° parametro - Variavel que deseja modificar
    2° parametro -  posição inicial de qual caracter deseja modificar (Em ADVPL o indice começa do 1)
    3° parametro - Quantos caracteres deseja pegar (A 1 letra conta)

StrZero() - Adiciona zeros a esquerda de um numero para que tenha um comprimento especifico
    * 1° parametro - Numero desejado
    2° parametro - Quantos numeros essa string irá ter
    No exemplo, utilizando 2, ainda falta 6 caracteres para formar uma string
    de 7 caracteres, sendo assim, irá adicionar 6 zeros a esquerda para formar a string completa

Upper() e lower() - Transforma a string para caixa alta ou caixa baixa

StrTran() - Substitui todas as ocorrencias de substring dentro de uma string por outra substring

At() - Retorna a posicao da primeira ocorrencia de uma substring em uma string

AllTrim, LTrim, RTrim
    * Alltrim - Remove espacos a esquerda e direita
    LTrim - Remove espacos a esquerda
    RTrim - remove espacos a direita

Len() - Retorna o comprimento da string





*/

user function manipulacaoString()
    // SubStr
    Local cString := "advpl"
    // Sintaxe - cSubString := substr(cString, nStart, nLenght)
    Local cSubString := SubStr(cString, 2, 3)

    alert(cSubString)

    Local testeSubString := "pegarADVPL"
    Local testeSubStringCortada := SubStr(testeSubString,6,5)
    
    alert(testeSubStringCortada)

    // StrZero
    Local cNumber1 := StrZero(2, 7) // 6 zeros 
    Local cNumber2 := StrZero(232, 5) // 2 zeros
    alert(cNumber1)
    alert(cNumber2)

    // Upper e lower case
    Local cUpperCase := Upper("advpl")
    Local cLowerCase := Lower("ADVPL")
    alert(cUpperCase)
    alert(cLowerCase)

    // StrTran
    // Sintaxe - StrTran(cString, cSearch, cReplace)
    Local cStrTran := "ADVPL é legal legal legal"
    Local cStrTranReplace := StrTran(cStrTran, "legal", "incrivel")
    alert(cStrTran)
    alert(cStrTranReplace)

    // At
    // Sintaxe - At(cSearch, cString)
    Local atExample := At("legal", cStrTran)
    alert(atExample) // pos = 9

    // Alltrim, LTrim, RTrim
    Local cStringTrim := " teste all trim "
    Local cAllTrimExample := AllTrim(cStringTrim)
    alert(cAllTrimExample)

    // Len 
    Local nLenght := Len(cStringTrim)
    alert(nLenght)


return

