*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx    sheet_name=Hoja1

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExcel using ${username} And ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login button
    Error message should be visible