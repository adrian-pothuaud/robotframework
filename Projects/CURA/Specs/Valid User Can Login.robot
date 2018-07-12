*** Settings ***
Resource    ../Resources/CURA.robot
Library     Selenium2Library

*** Variables ***
${username}    John Doe
${password}    ThisIsNotAPassword

*** Test Cases ***
Login
	Given login page is open
	When username ${username} and password ${password} are inserted
	and credentials are submitted
    
    Then bad login popup should appear
