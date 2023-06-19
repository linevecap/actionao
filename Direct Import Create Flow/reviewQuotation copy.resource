*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI create flow 2
    [Arguments]        ${Date}    ${SalesPerWeek}
# ${AssortmentType}    ${ArticleGroup}    ${MaterialCode}

    Login with    buyerdev    xGk<6Of
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Click    //label[text() = "Assortment type*"]
    Press Down
    Wait for x seconds    1s
    Click    //label[text() = "Article group*"]
    Press Down
    Press Enter
    Wait for x seconds    1s
    Click    //label[text() = "Material group code*"]
    Press Down
    Wait for x seconds    1s
    # Select Options By    (//label[text() = "Assortment type*"]//following::select[1])    index    2    
    # Mendix Dropdown        Assortment type*    label   21955048183431170
    # Wait for x seconds    10s
    # Mendix Dropdown    Assortment type*    label    ${AssortmentType}   
    # Mendix Dropdown    Article group*    value    ${ArticleGroup}
    # Mendix Dropdown    Material group code*    value    ${MaterialCode}
    Click Calender 2    ${Date}    
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Log out
    
    Wait for x seconds    10s