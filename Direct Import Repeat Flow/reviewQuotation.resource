*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI repeat flow
    [Arguments]    ${SeasonYear}        ${Date}    ${SalesPerWeek}

    Login with    buyerdev    xGk<6Of
    Mendix Task Inbox    2
    Mendix Text    Season Year*    ${SeasonYear}

    #    This is the calendar button. Date should be a sunday 
    Click    //button[@class = "btn mx-button"]
    Click    [aria-label='${Date}']

    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Log out
    
    Wait for x seconds    10s