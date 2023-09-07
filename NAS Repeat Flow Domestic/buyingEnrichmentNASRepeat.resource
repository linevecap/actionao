*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment NAS Repeat flow
    # [Arguments]    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}
    # ...    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}
    # ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    # ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}


    Login with    buyerdev    xGk<6Of
    Mendix Click    NAS Tasks
    Task Inbox   Buying Enrichment
    # Click Brick

    VAT NAS BAE    21,00    21,00    21,00    19,00    20,00    16,00    20,00    23,00    21,00    22,00    21,00    20,00    23,00
    Mendix Click    Approve
    Log out

    Wait for x seconds    10s