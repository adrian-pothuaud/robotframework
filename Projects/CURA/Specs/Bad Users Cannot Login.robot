*** Settings ***
Resource    ../Resources/CURA.robot
Library     Selenium2Library
Test Template    Behaviour

*** Keywords ***
Behaviour    [Arguments]    ${username}    ${password}
    
    Given login page is open
    
    When username ${username} and password ${password} are inserted
    and credentials are submitted
    
    Then bad login popup should appear

| *Test Case*                     | *username*        | *password*
| Invalid User Name               | Jane Doe          | ThisIsNotAPassword
| Invalid Password                | John Doe          | invalid
| Invalid User Name And Password  | Jane Doe          | invalid
