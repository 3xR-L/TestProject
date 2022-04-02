*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://admin-demo.nopcommerce.com/
${user}     admin@yourstore.com
${pwd}     admin

*** Test Cases ***
LogintTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter Username    ${user}
    Enter Password    ${pwd}
    Click SignIn
    sleep    2
    Verify Succesful Login
    close my Browser