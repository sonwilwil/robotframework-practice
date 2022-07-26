*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/editor.robot

*** Variables ***
${activeTab}    xpath://a[@class="nav-link active"]
${likeBtn}    xpath://button[@class="btn btn-sm btn-outline-primary"]
${unlikeBtn}    xpath://button[@class="btn btn-sm btn-primary"]
${favoritedTab}    xpath://a[text()="Favorited Articles"]
${myarticleTab}    xpath://a[text()="My Articles"]

${previewArticle}    xpath://*[@class="preview-link"]/h1



*** Keywords ***
Verify location on article tab
    Element Attribute Value Should Be    ${activeTab}    text    My Articles
Verify location on favorite tab
    Element Attribute Value Should Be    ${activeTab}    text    Favorited Articles
Click favorite tab
    Click Element    ${favoritedTab}
Click my article tab
    Click Element    ${myarticleTab}
Click like button
    Click Button    ${likeBtn}
Click unlike button
    Click Button    ${unlikeBtn}
Verify the article is present
    Element Should Contain    ${previewArticle}    ${teks}
Verify there is no article yet
    Page Should Contain    No articles are here... yet.
Click preview article
    Click Element    ${previewArticle}

