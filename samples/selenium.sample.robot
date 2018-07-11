*** Settings ***
Documentation     A test suite with a single test
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          sample1.resource.robot

*** Test Cases ***
Sample TC 1
    Open Browser  http://www.google.fr
    [Teardown]    Close Browser
