*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding repeat flow
    [Arguments]    ${Username}    ${Password}    ${ArticleNumber}    ${Supplier}    ${Quantity}    ${PricePerItem}    ${SSDMonth}    ${SSDYear}    ${SSDDay}       

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Mendix Click    New Onboarding
    Mendix Text    Article number    ${ArticleNumber}
    Mendix Click    Check number and continue
    Set Browser Timeout    180s
    # Mendix Text    English Description (Max 40 characters) *    ${Description}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}      
    # Mendix Dropdown    Assortment type*    label    Fixed Unlimited  
    # Mendix Text    Season Year*    ${SeasonYear}
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay}
    Wait for x seconds    2s
    Mendix Text    Agreed (inner) box quantity    19
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    5s

    Log out
    
    Wait for x seconds    10s