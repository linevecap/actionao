*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String
Library    BuiltIn


Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding
    [Arguments]    ${Username}    ${Password}    ${Description}    ${Supplier}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${SeasonLabel}
    ...    ${SeasonYear}    ${Month}    ${SalesPerWeek}    ${BoxQty}              

    Go to the Dev environment
    Login with    ${Username}    ${Password}    
    Mendix Click    New Onboarding
    Mendix Click    Skip check and continue
    # Mendix Text    Dutch Description (Max 40 characters)    Test
    Mendix Text    English Description (Max 40 characters) *    ${Description}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}  

    # Click    //div[contains(@class, "prioritycontract ")]//child::input
    # Wait for x seconds    1s
    # Mendix Text    Priority from date*    12-03-2023
    # Mendix Text    Priority until date*    23-04-2023
    Mendix Dropdown    Assortment type*    label    ${AssortmentType}
    Mendix Dropdown    Category*    label    Personal Care
    Mendix Dropdown    Article group*    label    Health & Other Cosmetics
    Wait for x seconds    1s
    Mendix Dropdown    Material group*    label    First Aid
    Wait for x seconds    1s

    Mendix Dropdown    Season    label    ${SeasonLabel} 
    Mendix Text    Season Year*    ${SeasonYear}    
    Click Calender New Widget    ${Month}
    Mendix Text    Expected sales per week (pcs)    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    10s

    Log out
    
    Wait for x seconds    15s



