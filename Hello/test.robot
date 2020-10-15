*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Neilton
    Should Be Equal     ${result}   Olá Neilton, bem vindo ao curso básico de Robot Framework

