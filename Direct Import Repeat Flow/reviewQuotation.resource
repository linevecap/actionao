*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI repeat flow
    [Arguments]    ${SeasonYear}        ${Month}    ${Year}    ${SalesPerWeek}

    Login with    buyerdev    xGk<6Of
    
    Task Inbox    Review Quotation
    Mendix Text    Season Year*    ${SeasonYear}
    Wait for x seconds    2s
    Click Calender New Widget    ${Month}    ${Year} 
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Log out
    
    Wait for x seconds    10s