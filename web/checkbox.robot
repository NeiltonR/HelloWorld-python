*** Settings ***
library     SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com/ 
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
    Open Browser                    ${url}              firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Close Browser

Marcando opção com CSS Selector
    Open Browser                    ${url}              firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    Checkbox Should Be Selected     ${check_ironman}
    Close Browser

Marcando opção com Xpath
    [tags]      ironman
    Open Browser                    ${url}              firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Close Browser