*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment
    [Arguments]    ${Username}    ${Password}    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Task Inbox    Buying Article Enrichment
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    Mendix Click    Ready for Buyer Approval
    Mendix Click    OK
    Log out

    Wait for x seconds    10s