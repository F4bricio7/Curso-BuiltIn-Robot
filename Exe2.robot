*** Settings ***

*** Variables ***

*** Keywords ***
#Keyword do exercício 1
Definir Nome E Idade
    ${NOME}=    Set Variable    Fabricio
    ${IDADE}=   Set Variable    21
    RETURN      ${NOME}     ${IDADE}

#Keyword do exercício 2
Receber Dados E Fazer O Log
    [Arguments]     ${NOME}     ${IDADE}
    Log To Console  ${NOME}
    Log To Console  ${IDADE}        

 #Keyword do exercício 2
${NOME} Tem ${IDADE} Anos
    Log To Console  ${NOME}
    Log To Console  ${IDADE}

*** Test Cases ***
#Exercício 1
Recebe Dados
    ${NOME}     ${IDADE}=   Definir NOME e IDADE
    Log To Console     ${NOME}
    Log To Console     ${IDADE}

#Exercício 2
Mandando Dados
    Receber Dados e Fazer o Log  Crstiano Ronaldo  41

#Exercício 3
Mandando Dados Pelo O Nome Da Keyword
    Fabricio Tem 21 Anos
