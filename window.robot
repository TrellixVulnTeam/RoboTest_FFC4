*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Switch Window
    Open Browser    http://www.naukri.com   gc
    Select Window   Amazon
    Maximize Browser Window
    Close Window

