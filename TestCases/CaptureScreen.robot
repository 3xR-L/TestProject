*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://mdlposgrados.cuvalles.udg.mx/login/index.php    chrome
    maximize browser window
    input text    id:username    promis21b5
    input text    id:password    gordo

    #capture element screenshot    xpath://*[@id="page-footer"]/div/div/div[2]/div[1]/img    C://Users//rully//PycharmProjects//TestProject//Logo.png
    #capture page screenshot    C://Users//rully//PycharmProjects//TestProject//LoginTC.png
    capture element screenshot    xpath://*[@id="page-footer"]/div/div/div[2]/div[1]/img    LogoNLocation.png
    capture page screenshot    LoginTCNLocation.png
