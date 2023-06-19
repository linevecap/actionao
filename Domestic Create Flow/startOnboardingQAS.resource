*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start New Onboarding QAS
    [Arguments]    ${Username}    ${Password}    ${Description}    ${Supplier}    ${Quantity}    ${PricePerItem}
    ...    ${AssortmentType}    ${Category}    ${ArticleGroup}    ${MaterialCode}    ${Month}    
    ...    ${SalesPerWeek}    ${BoxQty}              

    Go to the QAS environment
    Login with    ${Username}    ${Password}    
    Mendix Click    New Onboarding
    Mendix Click    Skip check and continue

    Mendix Text    Description (Max 40 characters) *    ${Description}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem} 
    Mendix Dropdown    Category*    label    ${Category}
    Mendix Dropdown    Assortment type*    label    ${AssortmentType}
    Mendix Dropdown    Article group*    label    ${ArticleGroup}
    Mendix Dropdown    Material group code*    label    ${MaterialCode}
    Click Calender New Widget    ${Month}
    Mendix Text    Expected sales per week (pcs)    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Mendix Click    Start Onboarding
    Wait for x seconds    1s
    Mendix Click    Proceed

    Log out
    
    Wait for x seconds    15s



