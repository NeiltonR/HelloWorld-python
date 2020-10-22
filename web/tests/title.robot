*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Deve comparar o título
    Title Should Be     Training Wheels Protocol