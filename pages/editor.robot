*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${articleTextbox}    xpath://*[@placeholder="Article Title"]
${aboutTextbox}    xpath://*[@placeholder="What's this article about?"]
${markdownTextbox}    xpath://*[@placeholder="Write your article (in markdown)"]
${tagsTextbox}    xpath://*[@placeholder="Enter tags"]
${publishBtn}    xpath://*[@type="button"]

${editBtn}    xpath://*[text()=" Edit Article"]
${deleteBtn}    xpath://*[text()=" Delete Article"]

${titleArticle}    xpath://*[@class="container"]/h1

${teks}    test
${teks2}    lalala

*** Keywords ***
Type article title
    Input Text    ${articleTextbox}    ${teks}
Type about
    Input Text    ${aboutTextbox}    ${teks}
Type markdown
    Input Text    ${markdownTextbox}    ${teks}
Type tags
    Input Text    ${tagsTextbox}    ${teks}
Click publish button
    Click Button    ${publishBtn}
Verify the article is created
    Page Should Contain Element    ${titleArticle}
    Element Should Contain    ${titleArticle}    ${teks}
Click delete button
    Click Element    ${deleteBtn}
Click edit button
    Click Element    ${editBtn}
Type new article
    Clear Element Text    ${articleTextbox}    
    Set Browser Implicit Wait    2000
    Input Text    ${articleTextbox}    ${teks2}
    Input Text    ${aboutTextbox}    ${teks2}
    Input Text    ${markdownTextbox}    ${teks2}
    Input Text    ${tagsTextbox}    ${teks2}
Verify the article has been edited 
    Page Should Contain Element    ${titleArticle}
    Element Should Contain    ${titleArticle}    ${teks2}
Verify location is on editor
    Location Should Contain    ${teks}