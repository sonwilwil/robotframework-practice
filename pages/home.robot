*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://react-redux.realworld.io/
${signinMenu}    xpath://*[text()="Sign in"]
${newpostMenu}    xpath://*[@href="#editor"]
${profileMenu}    xpath://ul[@class="nav navbar-nav pull-xs-right"]//a[@href="#@wilson"]

*** Keywords ***
Start testcase
    Open Browser    ${url}    Chrome
    Maximize Browser Window
Click sign in Menu
    Click Element    ${signinMenu}
Click new post menu
    Click Element    ${newpostMenu}
Click profile menu
    Click Element    ${profileMenu}