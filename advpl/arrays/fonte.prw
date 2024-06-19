#INCLUDE 'protheus.ch'
/*
Uma matriz � um array bidimensional - Um array de arrays
Os principais m�todos de manipula��o de arrays s�o:

AADD - Permite a inser��o de um item em um array ja existente
LEN - Retorna a quantidade de elementos no array
AINS - Permite a inser��o de um elemento em qualquer posi��o do array (Insere um valor nulo)
ADel - Permite a exclusao de um elemento do array, tornando o ultimo valor null
ASize - Utilizado para redimensionar um array



*/


User function arrays()
	Local aArray := {"Luiz", 100, .T.}
	// Acessando o valor 1 do array
	alert(aArray[1])

	// Adicionando "Felipe" no array
	// 1� parametro - Array que ser� modificado, 2� parametro - Valor que ser� adicionado
	AADD(aArray, "Felipe")

	// Iterando sobre o array
	iterarArray(aArray)

	aIns(aArray, 3)
	alert(Len(aArray))

	// Clonando o array
	aArray2 := AClone(aArray)
	alert("Iterando clone do array")
	iterarArray(aArray2)

	// Deletando o ultimo indice do array
	aDel(aArray, 2) // Deletando o 100
	alert("Deletando array")
	iterarArray(aArray)

	// Redimensionando para contar apenas 2 valores
	aSize(aArray, 2)
	iterarArray(aArray)

return

Static function iterarArray(paramArray)
	Local i

	for i := 1 to Len(paramArray)
		alert(paramArray[i])
	next
return

