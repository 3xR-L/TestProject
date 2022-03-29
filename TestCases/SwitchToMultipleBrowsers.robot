*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MultipleBrowsersTest
    open browser    https://www.google.com.mx/  chrome
    maximize browser window


    sleep    2


    open browser    https://www.bing.com.mx/  chrome
    maximize browser window

    switch browser    1
    ${title}=    get title
    log to console    ${title}

    switch browser    2
    ${title2}=    get title
    log to console    ${title2}

    sleep    2
    close all browsers