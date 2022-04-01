*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    https://www.globalsqa.com/demo-site/   chrome
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console   ${AllLinksCount}

    @{LinkItems}    create list

    FOR  ${i}    IN RANGE    1   ${AllLinksCount}+1
        ${LinkText}=   get text   xpath://a[${i}]
        log to console   ${LinkText}
    END
