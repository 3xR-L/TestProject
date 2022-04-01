*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    log to console    rows: ${rows}
    log to console    cols: ${cols}

    ${data}=     get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console    data: ${data}

    table column should contain    xpath://*[@id="HTML1"]/div[1]/table    2   Author
    table row should contain    xpath://*[@id="HTML1"]/div[1]/table    4    Learn JS

    table cell should contain    xpath://*[@id="HTML1"]/div[1]/table    5   2    Mukesh
    table header should contain    xpath://*[@id="HTML1"]/div[1]/table    BookName

    close browser