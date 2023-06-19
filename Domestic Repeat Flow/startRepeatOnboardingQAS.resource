*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding repeat flow QAS
    [Arguments]    ${Username}    ${Password}    ${ArticleNumber}    ${Supplier}    ${Quantity}    ${PricePerItem}    ${Month}       

    Go to the QAS environment
    Login with    ${Username}    ${Password}
    Mendix Click    New Onboarding
    Mendix Text    Article number    ${ArticleNumber}
    Mendix Click    Check number and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}        
    Click Calender New Widget    ${Month}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    
    Log out
    
    Wait for x seconds    15s