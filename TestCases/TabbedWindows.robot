*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath://*[@id="Tabbed"]/a/button
    ${win1}=    get window titles
    log to console    ${win1}
    #Select a window with a title name
    switch window    title=Selenium
    sleep    2
    click link    /about/
    sleep    2
    close all browsers