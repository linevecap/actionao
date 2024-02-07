*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Development Item
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Description}    ${Quantity}    ${Currency}    ${PricePerItem}
    ...    ${AssortmentType}    ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}    ${BoxQty}          

    Go to the DEV environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    5s 
    Mendix Click    NAS Tasks
    Wait for x seconds    5s
    Mendix Click    Onboard Article
    Mendix Click    Skip check and continue
    Wait for x seconds    2s
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    English Description (Max 40 characters) *    ${Description}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Dropdown    Currency*    text    ${Currency}
    Mendix Text    Price per item (${Currency} ex. VAT)*    ${PricePerItem}
    # Mendix Dropdown    Sourcing type*    label    Domestic
    # Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}
    Check Checkbox    (//input[@type="checkbox"])[1]
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
    # Deselect N/A Language
    # Wait for x seconds    1s
    Mendix Click    Save
    # Click    //button[text() = 'Save']
    Wait for x seconds    2s
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay}
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    2s
    Mendix Click    Proceed
    Wait for x seconds    10s

    Log out

    Wait for x seconds    120s
    