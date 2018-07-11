*** Settings ***
Documentation     A test suite containing tests
...
...               These tests are data-driven by their nature. They use a single
...               keyword, specified with Test Template setting, that is called
...               with different arguments to cover different scenarios.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.
Test Template     Login With Credentials
Resource          datadriven.sample.resource.robot

*** Test Cases ***               USER NAME        PASSWORD
Invalid Username                 invalid          valid
Invalid Password                 valid            invalid
Invalid Username And Password    invalid          invalid
Valid Username                   valid            invalid
Valid Password                   invalid          valid
Valid Username And Password      valid            valid

*** Keywords ***
Login With Credentials
    [Arguments]        ${username}    ${password}
    Should Be Equal    ${username}    ${password}
