*** Settings ***
Documentation    ReturnTypeExample
Resource        returnSup.robot     # To call a internal resource file in robotframework
Variables       data.py     # to access the external files
Library        Res.py

*** Test Cases ***
Addition
    ${s}        Add     @{a}[0]   ${e}
    Log     ${s}

Subtraction
    ${s}        Subtract     10   55
    Log     ${s}

ResAdd
    ${g}    m1   45   67
    Log     ${g}
