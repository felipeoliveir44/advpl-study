#INCLUDE 'protheus.ch'

/* 
Char: Utilizado para gravar informa��es de caracter (String)
Number: Utilizado para numeros
Date: Utilizado para data
Logical: Utilizado para boolean, no ADVPL � representado por .T. ou .F.
Array: Utilizado para cole��o de dados
Block/codeblock: Utilizado para cole��o de comandos que podem ser macroexecutados, ou seja, � como um array porem o codeblock grava uma cole��o de comandos
Object: Utilizado para um objeto para criar uma interface
Null: Utilizado para nulo

Tambem � utilizado o Local (Qual seu escopo)
� uma boa pr�tica, caso o tipo da sua v�riavel seja char, utilizar o c no inicio do nome da v�riavel
A boa pr�tica se extende para os outros tipos de variaveis, como numero, date etc (N, D, etc)

A funcao CTOD transforma um caracter em uma data
*/


User Function varTipos()

	Local cNome := "Luiz Felipe"
	Local nNumero := 0
	Local dData := CTOD("12/06/2024")
	Local lLogical := .T.
	Local aArray := {"Nome", 10, .F.}
	Local bBloco := {||5+10}
	Local oObjeto := nil // Nil = null
	Local xNull := nil

	alert(cNome)

	cNome := 10

	alert(cNome)

	cNome := "Luiz" + "10"
	alert(cNome)

	cNome := "Luiz" + 10 // Erro, pois n�o � possivel juntar dois tipos diferentes em uma variavel

Return
