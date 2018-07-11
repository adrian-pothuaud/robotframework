*** Settings ***
Documentation     A test suite with a single test
Resource          selenium.sample.resource.robot

*** Test Cases ***
Sample TC 1
    [Setup]                         Open Browser  http://www.google.fr
    Input Text                      id:lst-ib     robot framework
    Click Element                   id:hplogo
    Click Element                   name:btnK
    Wait Until Element is Visible   id:ires

*** [Teardown]    Close Browser ***
