*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window

    #Use right click action on an element
    open context menu   xpath:/html/body/div[1]/section/div/div/div/p/span
    sleep    3

    #Double click action on an element
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    3

    #Drag and Drop action on an element
    go to    https://testpages.herokuapp.com/styled/drag-drop-javascript.html
    maximize browser window
    drag and drop    id:draggable1    id:droppable2
    sleep    5

    close browser
