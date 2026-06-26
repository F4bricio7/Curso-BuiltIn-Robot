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
Validação Se A Variável É Vazia Ou Não
    ${vazio}=    Set Variable    ${EMPTY}
    Should Be Empty    ${vazio}


#Exercício 2
Validação Se O Valor Da Variável É Igual
    Should Be Equal    ${NOME}    Fabricio


#Exercício 3
Converte Para Inteiro Antes De Comparar
    Should Be Equal As Integers    ${IDADE}    ${IDADE_TEXTO}


#Exercício 4
Converte Para String Antes De Comparar
    Should Be Equal As Strings    ${IDADE}    ${IDADE_TEXTO}


#Exercício 5
Validação True Ou False
    Should Be True    ${ATIVO}


#Exercício 6
Validação Utilizando Expressão Regular
    Should Match Regexp    ${EMAIL}    .*@.*\.com


#Exercício 7
Conta Quantas Vezes Um Valor Aparece
    Should Contain X Times    ${LISTA}    Robot    2