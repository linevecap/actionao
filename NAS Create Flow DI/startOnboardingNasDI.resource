*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Create DI
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Description}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${Month}    ${SalesPerWeek}    ${BoxQty}          

    Go to the Dev environment
    Login with    ${Username}    ${Password} 
    Mendix Click    NAS Tasks
    Mendix Click    Onboard Article
    Mendix Click    Skip check and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Description (Max 40 characters) *    ${Description}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Dropdown    Sourcing type*    label    Direct Import
    Mendix Text    Price per item (USD ex. VAT)*    ${PricePerItem}
    Mendix Dropdown    Assortment type*    label    ${AssortmentType}
    Mendix Dropdown    Category*    text    Personal Care
    Wait for x seconds    1s
    Mendix Dropdown    Article group*    text    Health & Other Cosmetics
    Wait for x seconds    1s
    Mendix Dropdown    Material group*    text    First Aid
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Click    (//button[text() = 'Select all'])[2]
    Wait for x seconds    1s
    Deselect N/A Language
    Wait for x seconds    1s
    Click    (//button[text() = 'Save'])[2]
    Wait for x seconds    2s
    Click Calender New Widget    ${Month}
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Submit
    Wait for x seconds    1s

    Log out
    
