*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
testCase1
    Open Application        http://localhost:4723/wd/hub        platformName=Android    deviceName=samsung     browserName=chrome
    Go To Url       http://google.com

