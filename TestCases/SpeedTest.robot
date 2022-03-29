*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest

    ${speed}=  get selenium speed
    log to console  ${speed}

    #open browser    http://demowebshop.tricentis.com/register   chrome
    open browser    http://10.140.81.3/SiSDAE/login.html   chrome
    maximize browser window

    set selenium speed    1 seconds
    #select radio button    Gender   M
    #input text    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/div[1]/input    Raúl
    #input text    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/div[2]/div[1]/input    Romero
    #input text    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/div[2]/div[2]/input    López
    #input text    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/div[3]/div[1]/input    1234567
    #input text    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/div[3]/div[2]/input    rullyromero@hotmail.com
    #click button    xpath://*[@id="newCoordiModal"]/div/div/div[2]/div[1]/div/div/div[2]/div/form/button
    sleep    2



    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email    anhc@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword    davidjohn

    log to console  ${speed}
