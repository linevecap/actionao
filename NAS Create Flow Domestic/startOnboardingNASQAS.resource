*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Create QAS
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Description}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}    ${BoxQty}          

    Go to the QAS environment
    Login with    ${Username}    ${Password} 
    Mendix Click    NAS Tasks
    Mendix Click    Onboard Article
    Mendix Click    Skip check and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Description (Max 40 characters) *    ${Description}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Dropdown    Sourcing type*    label    Domestic
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
    Deselect N/A Language
    Wait for x seconds    1s
    Click    //button[text() = 'Save']
    Wait for x seconds    2s
    Click Calender New Widget    ${SSDMonth}    ${SSDYear}    ${SSDDay}
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    2s
    Mendix Click    Proceed
    Wait for x seconds    5s
    Mendix Click    OK
    Wait for x seconds    2s

    Log out
    
