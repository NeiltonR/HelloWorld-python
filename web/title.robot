*** Settings ***
library     SeleniumLibrary


*** Test Cases ***
Deve comparar o título
    Open Browser        http://training-wheels-protocol.herokuapp.com/      firefox
    Title Should Be     Training Wheels Protocol
    Close Browser