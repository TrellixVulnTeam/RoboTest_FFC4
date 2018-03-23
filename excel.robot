*** Settings ***
Documentation    EXCELCREATION
Library     ExcelLibrary
*** Test Cases ***
Test title
    Create Excel Document      test1.xlsx
    Get List Sheet Names
    Write Excel Cell        1   1   Test Value  Sheet
    Save Excel Document     test1.xlsx
    Read Excel Cell


Test title1     # Behaviour Driven Test case
    Given Create Excel Document      test2.xlsx
    When Write Excel Cell        1   1   New test value  Sheet
    And Save Excel Document     test2.xlsx


*** Keywords ***
Provided precondition
    Setup system under test