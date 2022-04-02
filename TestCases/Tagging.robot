*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]    regression
    log to console  This is user reg test
    log to console  user registration test is over
TC2 LoginTest
    [Tags]    sanity
    log to console  This is login test
    log to console  login test is over
TC3 Change user settings
    [Tags]    regression
    log to console  This is change user settings test
    log to console  change user settings test is over
TC4 Logout Test
    [Tags]    sanity
    log to console  This is logout test
    log to console  logout test is over

