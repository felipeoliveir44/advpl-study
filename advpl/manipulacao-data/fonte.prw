#INCLUDE 'protheus.ch'

/*

****** ValType - Retorna o tipo da variavel
    C: Character (Caractere/String)
    D: Date (Data)
    L: Logical (Lógico/Booleano)
    N: Numeric (Numérico)
    A: Array (Array)
    U: Undefined (Indefinido)

Date() - Retorna data atual

DTOC() - Converte uma data para uma string no formato "dd/mm/yyyy"

CTOD() - Converte uma string para data no formato "dd/mm/yyyy"

DOW() - Retorna o dia da semana

DTos() - Converte uma data para uma string no formato "yyyymmdd"

STod() - Converte uma string no formato "yyyymmdd" para uma data

Time() - Retorna hora atual no formato "HH:MM"

*/

user function manipulacaoData()
    // Retorna data atual
    Local dData := Date()
    alert(dData)

    // DTOC
    Local cDataString := DTOC(dData)
    alert(ValType(cDataString))

    // CTOC
    Local cData := "06/15/23"
    Local dDataConvertida := CTOD(cData)
    alert(dDataConvertida)
    alert(ValType(dDataConvertida))


    // Manipulacao e calculos com datas
    Local dAmanha := dData + 1  // Data de amanhã
    Local dOntem := dData - 1   // Data de ontem

    //CDow
    Local cDiaSemana := CDow(dData)
    alert(cDiaSemana)

    // Dtos
    Local cDataDTOS := DTos(dData)
    alert("Data DTOS: " + cDataDTOS)

    // SToD
    Local cDataSTOD := "20240619"
    Local dDataSTOD := STod(cDataSTOD)
    alert("Data STOD: " + cDataSTOD)

    // Time
    Local cHora := Time()
    alert(cHora)

return
