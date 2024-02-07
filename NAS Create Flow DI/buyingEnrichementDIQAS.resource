*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment DI QAS
    [Arguments]    ${DescriptionNL}    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}

    Go to the QAS environment
    Login with    buyer1@action.nl    9nT\[7cV
    Mendix Click    NAS Tasks
    Task Inbox    Buying Enrichment
    Mendix Text    Dutch Description (Max 40 characters)*    ${DescriptionNL}
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    Select Options By    (//div[text() = 'LU']//following::select)[1]    label    17,00
    Mendix Click    Approve
    Wait for x seconds    5s
    Log out

    Wait for x seconds    10s