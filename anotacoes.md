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

# Roadmap sobre ADVPL

1. Conhecimento Básico de Protheus

Entender o que é o Protheus e como ele funciona é fundamental:
- [x] O que é o Protheus 
- [x] Arquitetura do Protheus (App Server, RPO, etc.) 
- [ ] Principais módulos do Protheus

2. Ambiente de Desenvolvimento

Configurar e familiarizar-se com o ambiente de desenvolvimento:
- [x] Instalação e configuração do App Server 
- [x] Configuração do ambiente de desenvolvimento (por exemplo, Totvs Developer Studio)
- [ ] Conhecer e navegar no RPO 

3. Fundamentos de Programação 

Antes de mergulhar no ADVPL, é importante ter uma base sólida em programação. Isso inclui:
- [x] Estruturas de dados (variáveis, arrays, etc.) 
- [x] Estruturas de controle (if, loops, etc.) 
- [x] Conceitos de funções e procedimentos 

4. Sintaxe Básica do ADVPL

Aprender a sintaxe e os conceitos básicos do ADVPL:
- [x] Declaração de variáveis e tipos de dados
- [ ] Operadores aritméticos e lógicos
- [ ] Estruturas de controle de fluxo (If, For, While)

5. Funções e Procedimentos

- [ ] Entender como criar e utilizar funções e procedimentos em ADVPL:
- [ ] Declaração de funções (User Function)
- [ ] Passagem de parâmetros e retorno de valores
- [ ] Escopo de variáveis

6. Manipulação de Dados

Aprender a trabalhar com dados em ADVPL:
- [ ] Manipulação de strings
- [ ] Manipulação de datas
- [ ] Arrays e matrizes

7. Acesso a Banco de Dados

Trabalhar com o banco de dados utilizando ADVPL:
- [ ] Estruturas de tabelas do Protheus
- [ ] Comandos básicos de SQL em ADVPL (DBSelect, DBAppend, DBCommit)
- [ ] Criação de consultas e manipulação de registros

8. Interfaces de Usuário
- [ ] Desenvolver e customizar interfaces de usuário no Protheus:
- [ ] Criação de telas e diálogos
- [ ] Manipulação de elementos da interface (botões, campos, etc.)
- [ ] Eventos de interface (OnClick, OnChange, etc.)

9. Relatórios

Gerar e customizar relatórios em ADVPL:
- [ ] Criação de relatórios básicos
- [ ] Formatação e agrupamento de dados
- [ ] Exportação de relatórios para diferentes formatos (PDF, Excel, etc.)

10. Boas Práticas e Debugging

Adotar boas práticas de desenvolvimento e depuração:
- [ ] Organização e modularização do código
- [ ] Comentários e documentação
- [ ] Uso de ferramentas de debugging

11. Recursos Avançados

Explorar recursos mais avançados e específicos do ADVPL:
- [ ] Web Services e integração com outros sistemas
- [ ] Manipulação de arquivos
- [ ] Criação de bibliotecas e componentes reutilizáveis

# VS Code

É necessário estar com o license server, appserver e dbaccess abertos

Na extensão da TOTVS no VS Code, em nome do servidor:
```
curso_advpl
localhost
1234
achar o include na pasta d:/protheus

O nome do ambiente é environment

CTRL + F9 para compilar codigos ADVPL

F5 e digitar o fonte

```

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

``` advpl
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
```

Utilizando TL++ para tipagem

``` advpl
User Function tipagemForte()
    Local cTexto as Character
    cTexto = "Luiz"
    alert(cTexto)
Return
```


## Sobre operadores de comparação: 

``` advpl

// O método ConOut exibe uma mensagem no console de saída durante a execução do programa

Local nValor1 := 10
Local nValor2 := 20

// Igualdade
If nValor1 == nValor2
    ConOut("Os valores são iguais")
Else
    ConOut("Os valores são diferentes")
EndIf

// Diferente
If nValor1 != nValor2
    ConOut("Os valores são diferentes")
Else
    ConOut("Os valores são iguais")
EndIf

// Maior que
If nValor1 > nValor2
    ConOut("nValor1 é maior que nValor2")
Else
    ConOut("nValor1 não é maior que nValor2")
EndIf

// Menor que
If nValor1 < nValor2
    ConOut("nValor1 é menor que nValor2")
Else
    ConOut("nValor1 não é menor que nValor2")
EndIf

// Maior ou igual a
If nValor1 >= nValor2
    ConOut("nValor1 é maior ou igual a nValor2")
Else
    ConOut("nValor1 é menor que nValor2")
EndIf

// Menor ou igual a
If nValor1 <= nValor2
    ConOut("nValor1 é menor ou igual a nValor2")
Else
    ConOut("nValor1 é maior que nValor2")
EndIf

```
## Sobre operadores aritméticos

``` advpl

Local nA := 10
Local nB := 5
Local nResultado

// Adição
nResultado := nA + nB
ConOut("Resultado da Adição: " + Str(nResultado))

// Subtração
nResultado := nA - nB
ConOut("Resultado da Subtração: " + Str(nResultado))

// Multiplicação
nResultado := nA * nB
ConOut("Resultado da Multiplicação: " + Str(nResultado))

// Divisão
nResultado := nA / nB
ConOut("Resultado da Divisão: " + Str(nResultado))

// Divisão inteira
nResultado := nA // nB
ConOut("Resultado da Divisão Inteira: " + Str(nResultado))

// Módulo
nResultado := nA % nB
ConOut("Resultado do Módulo: " + Str(nResultado))

```

## Sobre operadores lógicos

``` advpl

Local lA := .T. // Verdadeiro
Local lB := .F. // Falso
Local lResultado

// E lógico
lResultado := lA .AND. lB
ConOut("Resultado do E lógico: " + If(lResultado, "Verdadeiro", "Falso"))

// Ou lógico
lResultado := lA .OR. lB
ConOut("Resultado do Ou lógico: " + If(lResultado, "Verdadeiro", "Falso"))

// Não lógico
lResultado := .NOT. lA
ConOut("Resultado do Não lógico: " + If(lResultado, "Verdadeiro", "Falso"))

```


