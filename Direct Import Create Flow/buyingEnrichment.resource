*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment DI create flow
    [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}

    Login with    buyerdev    xGk<6Of
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}    
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s