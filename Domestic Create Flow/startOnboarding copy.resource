*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding 2
    [Arguments]    ${Username}    ${Password}    ${Description}    ${Supplier}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${SeasonLabel}
    ...    ${SeasonYear}    ${Date}    ${SalesPerWeek}    ${BoxQty}              

    Go to the Dev environment
    Login with    ${Username}    ${Password}    
    Mendix Click    New Onboarding
    Mendix Click    Skip check and continue

    Mendix Text    Description (Max 40 characters) *    ${Description}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}  

    # Click    //div[contains(@class, "prioritycontract ")]//child::input
    # Wait for x seconds    1s
    # Mendix Text    Priority from date*    12-03-2023
    # Mendix Text    Priority until date*    23-04-2023
    Mendix Dropdown    Category*    label    Personal Care
    Mendix Dropdown    Assortment type*    label    ${AssortmentType}
    Click    //label[text() = "Article group*"]
    Press Down
    Press Enter
    Wait for x seconds    1s
    Click    //label[text() = "Material group code*"]
    Press Down
    Wait for x seconds    1s
    # Mendix Dropdown    Article group*    label    ${ArticleGroup}
    # Mendix Dropdown    Material group code*    label    ${MaterialCode}
    Mendix Dropdown    Season    label    ${SeasonLabel} 
    Mendix Text    Season Year*    ${SeasonYear}    
    Click Calender 2    ${Date}
    Mendix Text    Expected sales per week (pcs)    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed

    Log out
    
    Wait for x seconds    10s



