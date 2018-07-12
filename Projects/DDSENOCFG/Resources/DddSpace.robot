*** Setting ***
Library    Selenium2Library

Documentation    *DddSpace*    
...    
...    Robotframework Resource    
...    Author: 3DS ENOVIA Conf&Change APD2    
...    
...    Keywords for 3DSpace
*** Keyword ***
Create Member As Admin
    [Arguments]    ${id}
    [Documentation]    *Create 3DSpace Member*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Create new Member in 3DSpace (should be logged as ADMIN)
    ...    with Leader role on 3DS Collab Space and ds internal licence
    [Tags]    3DSpace    Web    ADMIN
    Click Element    css:#ENOConfiguration > label:nth-child(1)
    Wait Until Element is Visible    css:li.menu:nth-child(17) > ul:nth-child(2) > li:nth-child(1) > a:nth-child(1) > label:nth-child(1)    10    Go to manage pno label not found
    Sleep    5    Wait before clicking "Manage P&O"
    Click Element    css:li.menu:nth-child(17) > ul:nth-child(2) > li:nth-child(1) > a:nth-child(1) > label:nth-child(1)
    Sleep    5    wait manage pno page
    Select Frame    id:content
    Wait Until Element is Visible    css:.page-title > h2    10    Manage Users title not found
    Wait Until Element is Visible    name:portalDisplay    5    Portal Display frame not found
    Select Frame    name:portalDisplay
    Click Element    css:.tab-inactive
    Select Frame    name:APPXPPerson
    Select Frame    id:sommaire
    Wait Until Element is Visible    id:PLM_ExternalID    10    user id field not found
    Selenium2Library.Input Text    id:PLM_ExternalID    ${id}
    Sleep    1    Wait before collapse already assigned licences
    Click Element    id:lics_section1_img
    Sleep    1    Wait before expand available licences
    Click Element    id:lics_Available_img
    Sleep    1    Wait before input in licence filter
    Selenium2Library.Input Text    id:lic_filter    ds internal
    Sleep    3    Wait before looking for internal licence check
    Wait Until Element is Visible    id:lic_InternalDS_chk    5    Internal check not found
    Sleep    1    Wait before select licence
    Select Checkbox    id:lic_InternalDS_chk
    Sleep    2    Wait before select role
    Select Checkbox    id:3DS,Collab,Space!!VPLMProjectLeader
    Click Element    css:.buttons > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > a:nth-child(1)
    Wait Until Element is Visible    css:#hidethisone > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > img:nth-child(1)    120    popup after creation request not found

Login
    [Arguments]    ${link}    ${username}    ${password}
    [Documentation]    *Open 3DSpace Application*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Open 3DSpace Application and login with the given credentials
    [Tags]    3DSpace    Web
    Open Browser    ${link}
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

Logout
    [Documentation]    *Quit 3DSpace Application*
    ...
    ...    Robotframework Custom Keyword
    ...
    ...    Author: 3DS ENOVIA Conf&Change APD2
    ...
    ...    Log out from 3DSpace Application
    [Tags]    3DSpace    Web
    Unselect Frame
    Click Element    css:.profile
    Wait Until Element is Visible    css:li.item:nth-child(7) > div:nth-child(1) > span:nth-child(1)    5    Logout not found in Me menu
    Click Element    css:li.item:nth-child(7) > div:nth-child(1) > span:nth-child(1)
    Run Keyword And Ignore Error    Wait Until Element is Visible    css:.dddxp-logo    15    login panel not found
    Run Keyword And Ignore Error     Wait Until Element is Visible    css:body > h1:nth-child(1)    15    not logged out
    Close Browser
