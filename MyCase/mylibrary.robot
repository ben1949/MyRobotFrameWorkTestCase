*** Settings ***

*** Keywords ***
MyLib Add On 
    [Arguments]    ${a}    ${b}
    ${c}    add    ${a}    ${b}
    [Return]    ${c}
