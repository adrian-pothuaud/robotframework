*** Settings ***
Library    Selenium2Library  
Library    SikuliLibrary  

Documentation    *DddPassport*    
...    
...    Robotframework Resource    
...    Author: 3DS ENOVIA Conf&Change APD2    
...    
...    Keywords for 3DPassport
*** Keywords ***
Create 3DPassport Account
    [Arguments]    ${link}    ${email}    ${id}    ${firstname}    ${lastname}    ${password}
    ...    ${country}
    [Documentation]    *Create 3DPassport Account*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Create a 3DPassport Account with the given credentials
    [Tags]    3DPassport    Web
    Open Browser    ${link}
    Wait Until Element Is Visible    class:go-register    10    go register not found
    Click Element    class:go-register
    Wait Until Element Is Visible    name:data[email]    10    register form not found (email field)
    Selenium2Library.Input Text    name:data[email]    ${email}
    Selenium2Library.Input Text    name:data[username]    ${id}
    Selenium2Library.Input Text    name:data[firstName]    ${firstname}
    Selenium2Library.Input Text    name:data[lastName]    ${lastname}
    Selenium2Library.Input Text    name:data[password]    ${password}
    Selenium2Library.Input Text    name:data[password_confirm]    ${password}
    Press Special Key    TAB
    Type With Modifiers    ${country}
    Submit Form    class:register-form
    Sleep    5    wait after register form validated
    Close Browser