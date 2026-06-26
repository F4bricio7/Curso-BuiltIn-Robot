*** Settings ***

*** Variables ***
${COR}  vermelho

*** Keywords ***

### Keyword do exercício 2
Definindo A RUA
    VAR     ${RUA}      12 de Agosto
    Set Test Variable   ${RUA} 
*** Test Cases ***

### Exercício 1 (falha proposital)
Set Da Variável
    VAR    ${NOME}     Fabricio

Log Da Variável
    log     ${NOME}

### Exercício 2
Alterar A Variável Pelo Escopo De Teste
    Definindo A Rua 
    Log     ${RUA}

### Exercício 3
Mudando Escopo Da Variavel Para Global
    VAR     ${NUMERO}   1234
    Set Global Variable     ${NUMERO}

Fazendo Log Da Variavel Global
    Log     ${NUMERO}

### Exercício 3
Log Da Variavel Defininda Em "Variables"
    Log     ${COR}