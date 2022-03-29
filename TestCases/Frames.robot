*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Testing Frames
    open browser    https://www.quackit.com/html/templates/frames/frames_example_6.html    chrome
    maximize browser window

    select frame    topNav  #id name xpath
    click link    menu_2.html
    unselect frame

    select frame    menu
    click link    green.html
    unselect frame

    select frame    content
    click link    content.html
    unselect frame

    sleep    1
    close browser