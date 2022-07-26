*** Settings ***
Library    SeleniumLibrary
Resource    ./pages/home.robot    
Resource    ./pages/login.robot
Resource    ./pages/editor.robot
Resource    ./pages/profile.robot


*** Test Cases ***
Sign in with unregistered email
    home.Start testcase
    home.Click sign in Menu
    Location Should Contain    login
    login.Type unregis email
    login.Type password
    login.Click submit Button
    login.Error message should be present
Sign in with registered email
    Reload Page
    login.Type email
    login.Type password
    login.Click submit Button
    login.Your feed tab should be present
Create new post
    home.Click new post menu
    Location Should Contain    editor
    editor.Type article title
    editor.Type about
    editor.Type markdown
    editor.Type tags
    editor.Click publish button
    Set Browser Implicit Wait    2000
    editor.Verify the article is created
Mark unmark as favorite
    home.Click profile menu
    profile.Verify location on article tab
    profile.Verify the article is present
    profile.Click like button
    Set Browser Implicit Wait    2000
    profile.Click favorite tab
    profile.Verify location on favorite tab
    profile.Verify the article is present
    profile.Click unlike button
    profile.Click my article tab
    profile.Click favorite tab
    profile.Verify there is no article yet
Edit a post
    profile.Click my article tab
    profile.Click preview article
    editor.Click edit button
    editor.Verify location is on editor
    Set Browser Implicit Wait    3000
    editor.Type new article
    editor.Click publish button
    editor.Verify the article has been edited
    Sleep    3s
    editor.Click delete button
    Set Browser Implicit Wait    5000
    Close All Browsers
    
    