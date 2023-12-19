*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Create
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Description}    ${Currency}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}    ${BoxQty}          

    Go to the Dev environment
    Login with    ${Username}    ${Password} 
    Mendix Click    NAS Tasks
    Mendix Click    Onboard Article
    Mendix Click    Skip check and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    English Description (Max 40 characters) *    ${Description}
    # Mendix Dropdown    Currency*    label    ${Currency}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (${Currency} ex. VAT)*    ${PricePerItem}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}
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
    Mendix Click    Save
    Wait for x seconds    2s
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay}
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    2s
    Mendix Click    Proceed
    Wait for x seconds    6s

    Log out

    Wait for x seconds    20s
    
