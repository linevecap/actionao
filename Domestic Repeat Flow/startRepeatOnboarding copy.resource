*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding repeat flow 2
    [Arguments]    ${Username}    ${Password}    ${ArticleNumber}    ${Supplier}    ${Quantity}    ${PricePerItem}    ${SeasonYear}    ${Date}       

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Mendix Click    New Onboarding
    Mendix Text    Article number    ${ArticleNumber}
    Mendix Click    Check number and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}      
    # Mendix Dropdown    Assortment type*    label    Fixed Unlimited  
    Mendix Text    Season Year*    ${SeasonYear}
    Click Calender 2    ${Date}
    Wait for x seconds    2s
    Mendix Text    Agreed (inner) box quantity    19
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    
    Log out
    
    Wait for x seconds    10s