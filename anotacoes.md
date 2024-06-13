# Camada do Protheus

1 - Banco de dados
2 - DBAcess e license server - Conexão com banco de dados e licença da TOTVS
3 - RPO e App Server - App server interpreta a linguagem ADVPL e o RPO (Repositorio de objetos) armazena as rotinas, telas, etc do protheus
4 - SmartClient - Frontend

# Links sobre

TOTVS | AdvPL | o que é e como tudo começou?
https://www.youtube.com/watch?v=m6libI67ueg
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 1	Tipos de Funções
https://www.youtube.com/watch?v=1ycuHz8fcAc
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 2	Variáveis
https://www.youtube.com/watch?v=35N6NU7jAOI
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 3	Tipo de Variáveis
https://www.youtube.com/watch?v=NkNoLLdxcqw
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 4	Estruturas de decisão
https://www.youtube.com/watch?v=tDNNtKyo7jI
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 5	Estrutura de repetição
https://www.youtube.com/watch?v=kDtegK1vwJ8
TOTVS | AdvPL | TL++| Seja um Desenvolvedor – Aula 6	Primeiras telas em ADVPL
https://www.youtube.com/watch?v=kWZmlnN2Ads
Linguagem ADVPL	
https://universidadetotvs.com.br/skin/atena/training/trail/821
Exercícios de fixação 1 ADVPL
https://www.youtube.com/watch?v=uLNulvakbGM
Exercícios de fixação 2 ADVPL		
https://www.youtube.com/watch?v=xzygRYJPqH4
Exercícios de fixação 3 ADVPL		
https://www.youtube.com/watch?v=rYq3kd2-p4g
Exercícios de fixação 4 ADVPL		
https://www.youtube.com/watch?v=JEfXMVW-0Lc
Utilizando execauto gravando dados no banco - ADVPL	
https://www.youtube.com/watch?v=QioGzA79jUY
Leitura de dados no banco com abertura de tabelas - ADVPL	
https://www.youtube.com/watch?v=fMjPEdvLgqo
Funções ADVPL PADL, PADR e PADC		
https://www.youtube.com/watch?v=i4kdnYbah0k
MVC Simples		
https://www.youtube.com/watch?v=NxtMvQ_zmW0
Utilizando layouts com ADVPL		
https://www.youtube.com/watch?v=QwPRNeB6mno

# VS Code

É necessário estar com o license server, appserver e dbaccess abertos

Na extensão da TOTVS no vs code, em nome do servidor:
curso_advpl
localhost
1234
achar o include na pasta d:/protheus

O nome do ambiente é environment

CTRL + F9 para compilar codigos ADVPL

F5 e digitar o fonte

- O arquivo JSON launch.json é necessário estar assim: 
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "totvs_language_debug",
            "request": "launch",
            "name": "Depuração TOTVS",
            "program": "${command:AskForProgramName}",
            "cwb": "${workspaceFolder}",
            "smartclientBin": "D:\\protheus\\Protheus\\bin\\smartclient\\smartclient.exe",
            "isMultiSession": true,
            "enableMultiThread": true,
            "enableTableSync": true
        }
    ]
}
```


# Tipos de funções

Temos 3 tipos de funções em ADVPL que são:
Function
User function
Static function

## Function()

São funcoes restritas ao desenvolvimento da área de inteligencia do protheus
Uma function() pode carregar ate 10 caracteres em seu nome

```advpl
Function MATA001CLI()
Alert('oi')
Return
```

Voce nao consegue desenvolver uma function sem autorização da TOTVS, funcoes sao funcoes padroes do protheus

## User function

São conhecidas como funcoes definidas pelo usuario, são tipos de funcoes implementados pelo ADVPL, para garantir que desenvolvimentos especificos nao realizadas pela Function() sobreponham as funcoes padroes do sistema

O ADVPL adiciona um "U_" antes do nome de uma user function, seguindo a regra de que o nome de uma funcao deve ter no máximo 10 caracteres, sendo 2 reservados para "U_"

Voce pode acessar uma user function por outras funcoes em uso pela aplicação, desde que sua chama utilize os caracteres "U_" em conjunto com o nome da funcao

## Static function

Funcoes ADVPL cuja visibilidade esta restrita as funcoes descritas no mesmo arquivo de codigo fonte (Mesmo arquivo PRW) no qual são definidas

```advpl
Function MATA001C()
	CriaSX1("MATA001C")
Return

Static Function CriaSX1()
Return
```

# Variaveis

Char: Utilizado para gravar informações de caracter (String)
Number: Utilizado para numeros
Date: Utilizado para data
Logical: Utilizado para boolean, no ADVPL é representado por .T. ou .F.
Array: Utilizado para coleção de dados
Block/codeblock: Utilizado para coleção de comandos que podem ser macroexecutados, ou seja, é como um array porem o codeblock grava uma coleção de comandos
Object: Utilizado para um objeto para criar uma interface
Null: Utilizado para nulo

Tambem é utilizado o Local (Qual seu escopo)

ADVPL possui uma tipagem fraca, ja o TL++ (Nome do arquivo = teste.tlpp) adiciona uma tipagem ao ADVPL
