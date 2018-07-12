*** Setting ***
Library    Selenium2Library
Resource    ../SETTINGS.robot

Documentation    *VariantManagement*    
...    
...    Robotframework Resource    
...    Author: 3DS ENOVIA Conf&Change APD2    
...    
...    Keywords for VariantManagement
*** Keyword ***
Go to category
    [Arguments]    ${category}
    [Documentation]    *Go to given category*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    go to the given category in variant management application
    [Tags]    VariantManagement    Web
    Run Keyword If    '${category}'=="product lines"    Click Element    css:div.group:nth-child(4) > div:nth-child(2) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > label:nth-child(1)    
    
Login
    [Arguments]    ${link}    ${username}    ${password}
    [Documentation]    *Open Variant Management Application*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Open Variant Management Application and login with the given credentials
    [Tags]    VariantManagement    Web
    Open Browser    ${enovama_link}
    Maximize Browser Window
    Wait Until Element Is Visible    name:username    30    Username field not found
    Selenium2Library.Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Submit Form    class:login-form
    Wait Until Element Is Visible    id:input_search_div    30    Search bar not found
    Wait Until Element Is Visible    class:profile    30    Me menu not found
    Wait Until Element Is Visible    class:add    30    Plus menu not found
    Run Keyword And Ignore Error    Click Element    css:.ds-coachmark-close
    Sleep    10    wait after login (3DSpace)

Create Product Line
    [Arguments]    ${name}
    [Documentation]    *Create Product Line*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Create a new Product Line with the given name
    [Tags]    3DSpace    Web    VariantManagement
    Select Frame    id:content
    Click Element    css:td.menu-button:nth-child(1) > img:nth-child(1)
    Click Element    css:div.menu-panel:nth-child(7) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(1) > a:nth-child(1) > label:nth-child(2)