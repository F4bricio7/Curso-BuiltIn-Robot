*** Settings ***
*** Variables ***
*** Keywords ***
*** Test Cases ***
#Exercício 1
Teste 1 - FOR
    @{FRUTAS}=    Create List    Maçã    Banana    Uva    Laranja

    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    Fruta: ${fruta}
    END

#Exercício 2
Teste 2 - Exit For Loop If

    FOR    ${numero}    IN RANGE    1    11
        Log To Console    Número: ${numero}
        Exit For Loop If    ${numero} == 6
    END

    Log To Console    Laço encerrado.

#Exercício 3
Teste 3 - Exit For Loop

    FOR    ${numero}    IN RANGE    1    11
        Log To Console    Número: ${numero}

        IF    ${numero} == 4
            Exit For Loop
        END
    END

    Log To Console    O FOR foi encerrado.