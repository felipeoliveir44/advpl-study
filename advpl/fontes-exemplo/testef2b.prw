/*/{Protheus.doc} testeF2B

Fonte teste para comparação de desempenho entre Json e Array com base na tabela F2B

@type  Function
@author user
@since 06/08/2025
@version 1.0
/*/
User Function F2BJson()

    Local oJson := JsonObject():new() as json
    Local oJsonUsr := JsonObject():new() as json
    Local oModel            as object
    Local aCampos           := {} as array
    Local nX               as numeric   
    Local aCampUsr := {} as array
    local nStart

    RpcSetType(3)
    RPCSetEnv( 'T1', 'XIFIS26',,, "FIS")

    nStart := seconds()

    oModel := FWLoadModel("FISA160")
    aCampos := FWSX3Util():GetAllFields("F2B")

    // JSON

    For nX := 1 to Len(aCampos)
        oJson[aCampos[nX]] := JsonObject():New() // Cria um objeto para cada campo
        oJson[aCampos[nX]]["ponteiro"] := "F2B->" + aCampos[nX] // Adiciona o ponteiro
        oJson[aCampos[nX]]["nome"] := aCampos[nX] // Adiciona o nome do campo
    Next

    oJsonUsr := F2BGrvAux(oJson)

    conout("------------------------------------------------------------")
    conout("tempo de aScan - Json:" + cValTochar(seconds() - nStart))	
    nStart := 0

    // Array
    nStart := seconds()
    aCampUsr := testArray(aCampos)

    conout("------------------------------------------------------------")
    conout("tempo de aScan - Array:" + cValTochar(seconds() - nStart))	

Return

User Function F2BArray()

    Local oJson := JsonObject():new() as json
    Local oJsonUsr := JsonObject():new() as json
    Local oModel            as object
    Local aCampos           := {} as array
    Local nX               as numeric   
    Local aCampUsr := {} as array
    local nStart

    RpcSetType(3)
    RPCSetEnv( 'T1', 'XIFIS26',,, "FIS")

    nStart := seconds()

    oModel := FWLoadModel("FISA160")
    aCampos := FWSX3Util():GetAllFields("F2B")

    // Array
    nStart := seconds()
    aCampUsr := testArray(aCampos)

    conout("------------------------------------------------------------")
    conout("tempo de aScan - Array:" + cValTochar(seconds() - nStart))	

Return

Static Function F2BGrvAux(oJson)

    Local aCampPers := {} as array
    Local oJsonOld := JsonObject():new() as json
    Local oJsonNew := JsonObject():new() as json
    Local aProp := oJson:GetNames()
    Local nX as numeric

    

    Local aCamposF2B := {"F2B_FILIAL", "F2B_ID", "F2B_REGRA",;
                        "F2B_DESC", "F2B_TRIB", "F2B_DTRIB",;
                        "F2B_VIGINI", "F2B_VIGFIM", "F2B_RBASE",;
                        "F2B_DBASE", "F2B_RALIQ", "F2B_DALIQ",;
                        "F2B_PEROD", "F2B_DOD", "F2B_PERFPA",;
                        "F2B_DPA", "F2B_PERFOP", "F2B_DOP",;
                        "F2B_PERFPR", "F2B_DPR", "F2B_RFIN",;
                        "F2B_DFIN", "F2B_RAPUR", "F2B_DAPUR",;
                        "F2B_RND", "F2B_RBASES", "F2B_DBASES",;
                        "F2B_ALTERA", "F2B_DTALT", "F2B_HRALT",;
                        "F2B_TRBMAJ", "F2B_DETMAJ", "F2B_DEDDEP",;
                        "F2B_DETDEP", "F2B_DEDPRO", "F2B_DETPRO",;
                        "F2B_CODESC", "F2B_DESESC", "F2B_MAXMIN",;
                        "F2B_RGGUIA", "F2B_DRGUIA", "F2B_VLRMIN",;
                        "F2B_VLRMAX", "F2B_OPRMIN", "F2B_OPRMAX",;
                        "F2B_RDBASE", "F2B_ACMIN",  "F2B_ACMAX",;
                        "F2B_RCUSTO", "F2B_DCUSTO", "F2B_STATUS",;
                        "F2B_TPREGR", "F2B_TBCONF", "F2B_CONREG",; 
                        "F2B_ORIGEM", "F2B_CHVMD5";
                        }
    

    For nX := 1 To Len(aCamposF2B)
        oJsonOld[aCamposF2B[nX]] := "F2B->" + aCamposF2B[nX]
    Next

    For nX := 1 To Len(aProp)
        If !oJsonOld:hasProperty(aProp[nX])
            aadd(aCampPers, aProp[nX])
            oJsonNew["campos"] := aCampPers
        EndIf
    Next

Return oJsonNew


Static Function testArray(aCampos)

    Local aCampsUsr := {}
    Local nI as numeric
    Local aFieldsF2B := {"F2B_FILIAL", "F2B_ID", "F2B_REGRA",;
                        "F2B_DESC", "F2B_TRIB", "F2B_DTRIB",;
                        "F2B_VIGINI", "F2B_VIGFIM", "F2B_RBASE",;
                        "F2B_DBASE", "F2B_RALIQ", "F2B_DALIQ",;
                        "F2B_PEROD", "F2B_DOD", "F2B_PERFPA",;
                        "F2B_DPA", "F2B_PERFOP", "F2B_DOP",;
                        "F2B_PERFPR", "F2B_DPR", "F2B_RFIN",;
                        "F2B_DFIN", "F2B_RAPUR", "F2B_DAPUR",;
                        "F2B_RND", "F2B_ALTERA", "F2B_DTALT",;
                        "F2B_HRALT", "F2B_RBASES", "F2B_DBASES",;
                        "F2B_TRBMAJ", "F2B_DETMAJ", "F2B_DEDDEP",;
                        "F2B_DETDEP", "F2B_DEDPRO", "F2B_DETPRO",;
                        "F2B_CODESC", "F2B_DESESC", "F2B_MAXMIN",;
                        "F2B_RGGUIA", "F2B_DRGUIA", "F2B_VLRMIN",;
                        "F2B_VLRMAX", "F2B_OPRMIN", "F2B_OPRMAX",;
                        "F2B_ORIGEM", "F2B_CHVMD5", "F2B_RDBASE",;
                        "F2B_RCUSTO", "F2B_DCUSTO", "F2B_STATUS",;
                        "F2B_TPREGR", "F2B_TBCONF", "F2B_CONREG",;
                        "F2B_ACMAX", "F2B_ACMIN";
                        }


    For nI := 1 To Len(aCampos)
        If aScan(aFieldsF2B, {|x| x == aCampos[nI]}) == 0
            aAdd(aCampsUsr, aCampos[nI]) 
        EndIf
    Next

    FwFreeArray(aFieldsF2B)

    

Return aCampsUsr

