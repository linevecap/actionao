*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Deposit QAS
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Description}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${deposit quantity}    ${SSDMonth}    ${SSDYear}    ${SSDDay}    ${SalesPerWeek}    ${BoxQty}          

    Go to the QAS environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    5s 
    Mendix Click    NAS Tasks
    Wait for x seconds    5s
    Mendix Click    Onboard Article
    Mendix Click    Skip check and continue
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    English Description (Max 40 characters) *    ${Description}
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
    Wait for x seconds    1s
    Mendix Dropdown    Deposit type    text    Deposit NL bottle € 0,15
    Wait for x seconds    2s
    Mendix Text    Deposit quantity (pcs)    ${deposit quantity}
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
