*** Settings ***
Documentation    Sample Test Suite
...    this test suite is for sample purpose only.
Library    Dialogs

*** Variables ***
${var1}    1    

*** Test Cases ***
First
    Log    Hello Robot !
    Log    This is a Sample Test Case with log actions
    
Second
    Should Be Equal    ${var1}    1    
*** Keyword ***