*** Settings ***
library     SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/ 

*** Keywords ***
Nova sessão
    Open Browser                    ${url}              firefox

Encerra sessão
    Close Browser