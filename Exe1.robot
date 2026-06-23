*** Settings ***

*** Variables ***
${Cor}  vermelho

*** Keywords ***

### Keyword do exercício 2
Definindo A Rua
    VAR     ${Rua}      12 de Agosto
    Set Test Variable   ${Rua} 
*** Test Cases ***

### Exercício 1 (falha proposital)
Set Da Variável
    VAR    ${Nome}     Fabricio

Log Da Variável
    log     ${Nome}

### Exercício 2
Alterar A Variável Pelo Escopo De Teste
    Definindo A Rua 
    Log     ${Rua}

### Exercício 3
Mudando Escopo Da Variavel Para Global
    VAR     ${Numero}   1234
    Set Global Variable     ${Numero}

Fazendo Log Da Variavel Global
    Log     ${Numero}

### Exercício 3
Log Da Variavel Defininda Em "Variables"
    Log     ${Cor}