*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}  ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    maximize browser window


Enter Username
    [Arguments]     ${username}
    Input Text      ${txt_loginUserName}        ${username}

Enter Password
    [Arguments]     ${password}
    Input Text      ${txt_loginPassword}        ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Succesful Login
    title should be    Dashboard / nopCommerce administration

close my Browser
    close all browsers
