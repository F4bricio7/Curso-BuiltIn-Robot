*** Settings ***
Library    BuiltIn

*** Variables ***
${NOME}          Fabricio
${IDADE}         25
${IDADE_TEXTO}   25
${ATIVO}         ${TRUE}
${EMAIL}         fabricio@email.com
${TEXTO}         Seremos hexa em 2026!
${LISTA}         Robot    Python    Robot    Java

*** Test Cases ***

#Execício 1
Validação se a variável é vazia ou não
    ${vazio}=    Set Variable    ${EMPTY}
    Should Be Empty    ${vazio}


#Exercício 2
Validação se o valor da variável é igual
    Should Be Equal    ${NOME}    Fabricio


#Exercício 3
Converte para inteiro antes de comparar
    Should Be Equal As Integers    ${IDADE}    ${IDADE_TEXTO}


#Exercício 4
Converte para string antes de comparar
    Should Be Equal As Strings    ${IDADE}    ${IDADE_TEXTO}


#Exercício 5
Validação True ou False
    Should Be True    ${ATIVO}


#Exercício 6
Validação utilizando Expressão Regular
    Should Match Regexp    ${EMAIL}    .*@.*\.com


#Exercício 7
Conta quantas vezes um valor aparece
    Should Contain X Times    ${LISTA}    Robot    2