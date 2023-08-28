*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment NAS create flow QAS
    [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}
    ...    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}
    ...    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}

    Login with    buyer1@action.nl    9nT\[7cV
    # Login with    ba1dev    kG\)\(q9>
    Mendix Click    NAS Tasks
    Task Inbox   Buying Enrichment
    Click Brick
    Mendix Dropdown    Advertising ban*    label    No
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    VAT NAS BAE    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}    
    Mendix Click    Submit
    Log out

    Wait for x seconds    10s