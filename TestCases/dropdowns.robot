*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testpages.herokuapp.com/styled/basic-html-form-test.html

*** Test Cases ***
Handling DrpDowns and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    # Selecting a value from a dropdown
    select from list by label    dropdown   Drop Down Item 2
    sleep    3
    select from list by index    dropdown   3
    sleep    3
    select from list by value    dropdown    dd5

    #List box
    select from list by label    multipleselect[]    Selection Item 2
    sleep    3
    select from list by label    multipleselect[]    Selection Item 3
    sleep    3

    unselect from list by label    multipleselect[]    Selection Item 4