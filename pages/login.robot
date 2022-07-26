*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${emailTextbox}    xpath://*[@type="email"]
${passTextbox}    xpath://*[@type="password"]
${submitBtn}    xpath://*[@type="submit"]
${errorMsg}    xpath://*[@class="error-messages"]

${email}    wilwilson@yopmail.com
${pass}    admin123

*** Keywords ***
Type email
    Input Text    ${emailTextbox}    ${email}
Type password
    Input Password    ${passTextbox}    ${pass}
Click submit Button
    Click Button    ${submitBtn}        
Type unregis email
    Input Text    ${emailTextbox}    hahaha@gmail.com
Error message should be present
    Wait Until Element Is Visible    ${errorMsg}
    Page Should Contain    invalid
Your feed tab should be present
    Set Browser Implicit Wait    2000
    Page Should Contain    Your Feed
    