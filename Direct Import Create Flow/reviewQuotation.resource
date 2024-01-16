*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI create flow
    [Arguments]        ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}
# ${AssortmentType}    ${ArticleGroup}    ${MaterialCode}

    Go to the Dev environment
    Login with    buyerdev    xGk<6Of
    # Mendix Task Inbox    2
    Task Inbox    Review Quotation
    Mendix Dropdown    Assortment type*    label    Stocklots
    Select Options By    (//label[text() = "Category*"]//following::select)[4]    label    Personal Care
    Mendix Dropdown    Article group*    label    Health & Other Cosmetics
    Wait for x seconds    1s
    Mendix Dropdown    Material group*    label    First Aid
    Wait for x seconds    1s
    # Select Options By    (//label[text() = "Assortment type*"]//following::select[1])    index    2    
    # Mendix Dropdown        Assortment type*    label   21955048183431170
    # Wait for x seconds    10s
    # Mendix Dropdown    Assortment type*    label    ${AssortmentType}   
    # Mendix Dropdown    Article group*    value    ${ArticleGroup}
    # Mendix Dropdown    Material group code*    value    ${MaterialCode}
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay}    
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    8s
    Log out
    
    Wait for x seconds    10s