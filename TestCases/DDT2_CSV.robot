*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   file=../TestData/LoginData.csv
...    encoding=utf-8
...    dialect=excel
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithCSV using ${username} And ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login button
    Error message should be visible