*** Settings ***

*** Variables ***

*** Keywords ***
#Keyword do exercício 1
Definir Nome e Idade
    ${Nome}=    Set Variable    Fabricio
    ${Idade}=   Set Variable    21
    RETURN      ${Nome}     ${Idade}

#Keyword do exercício 2
Receber Dados e Fazer o Log
    [Arguments]     ${Nome}     ${Idade}
    Log To Console  ${Nome}
    Log To Console  ${Idade}        

 #Keyword do exercício 2
${Nome} Tem ${Idade} Anos
    Log To Console  ${Nome}
    Log To Console  ${Idade}

*** Test Cases ***
#Exercício 1
Recebe Dados
    ${Nome}     ${Idade}=   Definir Nome e Idade
    Log To Console     ${Nome}
    Log To Console     ${Idade}

#Exercício 2
Mandando Dados
    Receber Dados e Fazer o Log  Crstiano Ronaldo  41

#Exercício 3
Mandando Dados Pelo o Nome Da Keyword
    Fabricio Tem 21 Anos
