*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI repeat flow
    [Arguments]       ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}
    
    Go to the Dev environment
    Login with    buyerdev    xGk<6Of
    
    Task Inbox    Review Quotation
    # Mendix Text    Season Year*    ${SeasonYear}
    Wait for x seconds    5s
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay} 
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Log out
    
    Wait for x seconds    10s