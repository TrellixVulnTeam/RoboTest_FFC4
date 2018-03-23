*** Settings ***
Documentation    Suite description
Force Tags      t1      t2  #   will be used if we wish or not in test cases
Default Tags        t3      #   will be used if we donot provide [Tags]

*** Test Cases ***
Test title
    [Documentation]        Convert to Binary
    [Tags]      binary
    ${x}=       Convert to Binary       10
    Log     ${x}




