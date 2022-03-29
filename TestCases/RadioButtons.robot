*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testpages.herokuapp.com/styled/basic-html-form-test.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds

    #Radio Buttons
    select radio button    radioval    rd1

    #Selecting checkbox
    select checkbox    cb1
    select checkbox    cb2

    unselect checkbox    cb2
