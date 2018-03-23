*** Settings ***
Documentation    Selenium test demo with register functionality
Library     SeleniumLibrary
Test Template       Test positive registration

*** Keywords ***
Test positive registration
          [Arguments]       ${fname}    ${lname}    ${email}    ${pwd}  ${cpwd}
          Open Browser        http://www.magento.com      gc
          Maximize Browser Window
          sleep     3s
          Click Element     link: MY ACCOUNT        # or we can use Click Link keyword too
          sleep     3s
          Click Element     //*[text()='Register']
          Input Text        firstname       ${fname}
          Input Text        lastname        ${lname}
          Input Text        email_address   ${email}
          Select From List By Index     company_type        3   #to reads the list of values
          Select From List By Label     individual_role     Technical/developer     # to use 'Select by value' use the value in the inspect element
          Input Password        password        ${pwd}
          Input Password        confirmation        ${cpwd}
          Select Frame      //iframe[@role='presentation']
          Click Elememt     class:recaptcha-checkbox-checkmark
          Unselect Frame
          Close All Browsers

*** Test Cases ***
Login
[Setup]     Go Back
        Input Text      id:email

