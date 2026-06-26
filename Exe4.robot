*** Settings ***

*** Variables ***
${IDADE}    20
${NOTA}     8
*** Test Cases ***
#Exercício 1
Teste IF
    IF    ${IDADE} >= 18
        Log To Console    Você é maior de idade.
    END

#Exercício 2
Teste ELSE IF
    IF    ${NOTA} >= 9
        Log To Console    Nota exelente!
    ELSE IF    ${NOTA} >= 7
        Log To Console    Muito bem!
    ELSE IF    ${NOTA} >= 5
        Log To Console    Aprovado!
    ELSE
        Log To Console    Reprovado!
    END