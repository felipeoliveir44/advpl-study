#INCLUDE 'protheus.ch'

/* 
Char: Utilizado para gravar informações de caracter (String)
Number: Utilizado para numeros
Date: Utilizado para data
Logical: Utilizado para boolean, no ADVPL é representado por .T. ou .F.
Array: Utilizado para coleção de dados
Block/codeblock: Utilizado para coleção de comandos que podem ser macroexecutados, ou seja, é como um array porem o codeblock grava uma coleção de comandos
Object: Utilizado para um objeto para criar uma interface
Null: Utilizado para nulo

Tambem é utilizado o Local (Qual seu escopo)
É uma boa prática, caso o tipo da sua váriavel seja char, utilizar o c no inicio do nome da váriavel
A boa prática se extende para os outros tipos de variaveis, como numero, date etc (N, D, etc)

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

	cNome := "Luiz" + 10 // Erro, pois não é possivel juntar dois tipos diferentes em uma variavel

Return
