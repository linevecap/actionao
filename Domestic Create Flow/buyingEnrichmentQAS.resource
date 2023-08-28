*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment QAS
    [Arguments]    ${Username}    ${Password}    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}

    Login with    ${Username}    ${Password}
    Mendix Task Inbox    2
    Click    //div[contains(@class, "col-lg-auto col-md col")]//child::button
    Click    (//div[contains(@class, "mx-listview mx-name-listView3 listview-lined listview-hover mx-listview-clickable")]//child::li)[1]
    Mendix Dropdown    Advertising ban*    label    No
    Mendix Dropdown    Shelfcard size*    label    Big
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s