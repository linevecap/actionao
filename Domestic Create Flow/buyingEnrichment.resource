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

    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    Select Options By    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::select)[13]    label    23,00
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s