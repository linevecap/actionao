*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Review Quotation DI repeat flow 2
    [Arguments]    ${SeasonYear}        ${Date}    ${SalesPerWeek}

    Login with    buyerdev    xGk<6Of
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Mendix Text    Season Year*    ${SeasonYear}

    #    This is the calendar button. Date should be a sunday 
    Click    //button[@class = "btn mx-button"]
    Click    //button[contains(@class, "mx-calendar-month-next")]//child::span
    Click    [aria-label='${Date}']

    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Wait for x seconds    1s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Log out
    
    Wait for x seconds    10s