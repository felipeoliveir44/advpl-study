#INCLUDE 'protheus.ch'

/*
Local -> Visivel apenas dentro da funcao onde foi criado
Private -> Visiavel na funcao onde ela foi criada e nas funcoes seguintes
Public -> Visivel em todas as funcoes a partir do momento em que foi criada
Static -> Visivel em todas as funcoes dentro do fonte onde ela foi criada
    - Pode ser declarada fora da funcao?

*/

User Function Func1()

Local cVar1 := "Local"
Private cVar2 := "Private"
U_Func2()

Return

User Function Func2()
alert(cVar2) // Private
alert(cVar1) // Local

Return
