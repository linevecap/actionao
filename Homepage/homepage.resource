*** Settings ***

Library    Browser

*** Keywords ***


Go to the Dev environment
    Open Browser        https://article-onboarding-dev.cfapps.eu10.hana.ondemand.com/login.html
    Set Viewport Size    1500    720

Go to the QAS environment
    Open Browser        https://article-onboarding-qas.cfapps.eu20.hana.ondemand.com/login.html        
    Set Viewport Size    1500    720

Login with 
    [Arguments]    ${user}    ${password}
    Fill Text    input#usernameInput    ${user}
    Fill Text    input#passwordInput    ${password}
    Click    button#loginButton

Log out 
    Click    (//div[contains(@class, "region-user")]//child::span)[1]    
    Click    //span[text() = "Sign out"]
    # Click    (//div[contains(@class, "popupmenu-menu")]//child::span)[1]
    



