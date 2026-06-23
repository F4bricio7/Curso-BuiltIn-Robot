*** Settings ***

*** Variables ***

*** Keywords ***
Definir Nome e Idade
    ${Nome}=    Set Variable    Fabricio
    ${Idade}=   Set Variable    21
    RETURN      ${Nome}     ${Idade}        
    
*** Test Cases ***
#Exercício 1
Utilizar dados
    ${Nome}     ${Idade}=   Definir Nome e Idade
    Log To Console     ${Nome}
    Log To Console     ${Idade}