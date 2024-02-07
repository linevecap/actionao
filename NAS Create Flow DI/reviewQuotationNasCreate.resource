*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation Nas Create
    [Arguments]    ${AssortmentType}    ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}    ${BoxQty}
    
    Go to the Dev environment
    Login with    buyerdev    xGk<6Of
    Mendix Click    NAS Tasks
    Wait for x seconds    2s
    Task Inbox    Review Quotation   
    # Mendix Text    Season Year*    ${SeasonYear}
    Mendix Click    Approve Quotation
    Wait for x seconds    2s
    Mendix Click    Skip check and continue
    Wait for x seconds    5s
    Mendix Dropdown    Buyer*    text    Buyer 1
    Mendix Dropdown    Assortment type*    label    ${AssortmentType}
    # Mendix Dropdown    Category*    text    Personal Care
    Wait for x seconds    1s
    Mendix Dropdown    Article group*    text    Health & Other Cosmetics
    Wait for x seconds    1s
    Mendix Dropdown    Material group*    text    First Aid
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Click    (//button[text() = 'Select all'])[2]
    Wait for x seconds    1s
    Click    (//button[text() = 'Save'])
    Wait for x seconds    2s
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay} 
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    4s
    Log out
    
    Wait for x seconds    10s