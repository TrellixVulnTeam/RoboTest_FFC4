*** Settings ***
Documentation    Suite description


*** Keywords ***
Add
    [Arguments]     ${x}    ${y}
    ${k}    Evaluate    ${x} + ${y}
    [Return]        ${k}

Subtract
    [Arguments]     ${x}    ${y}
    ${k}    Evaluate    ${x} - ${y}
    [Return]        ${k}
