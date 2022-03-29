*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  https://mdlposgrados.cuvalles.udg.mx/login/index.php
${browser}    chrome
*** Test Cases ***
TC1
    #Keywords with arguments and returning a valuew
    ${PageTitle}=   launchBrowser    ${url}   ${browser}
    log to console    ${PageTitle}
    log    ${PageTitle}
    input text    id:username    promis21b5
    input text    id:password    gordo
