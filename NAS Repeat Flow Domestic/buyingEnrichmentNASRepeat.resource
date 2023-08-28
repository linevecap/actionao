*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment NAS Repeat flow
    # [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    # ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}
    # ...    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}
    # ...    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}

    Go to the Dev environment
    Login with    buyerdev    xGk<6Of
    Mendix Click    NAS Tasks
    Task Inbox   Buying Enrichment
    # Click Brick
    # Mendix Dropdown    Advertising ban*    label    No 
    Mendix Click    Submit
    Log out

    Wait for x seconds    10s