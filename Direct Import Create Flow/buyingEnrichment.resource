*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment DI create flow
    [Arguments]    ${DescriptionNL}    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}

    Go to the Dev environment
    Login with    buyerdev    xGk<6Of
    Mendix Click    NAS Tasks
    # Mendix Task Inbox    2
    Task Inbox    Buying Article Enrichment
    Mendix Text    Dutch Description (Max 40 characters)*    ${DescriptionNL}
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    Mendix Click    Approve
    Wait for x seconds    5s
    Log out

    Wait for x seconds    10s