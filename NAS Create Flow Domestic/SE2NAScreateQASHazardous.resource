*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 2 Hazardous Create QAS
    [Arguments]    ${Username}    ${Password}    ${MSDS}    ${HSCode}    ${ADR}
    ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}    
    
    # Go to the QAS environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    5s
    # Mendix Task Inbox    2
    Mendix Click    NAS Tasks
    Task Inbox    Supplier Enrichment 2
    Mendix Dropdown Extended    HS code*    ${HSCode}
    Mendix Dropdown    ADR    label    ${ADR}
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}                
    Mendix Click    Submit Enrichment
    Log out

    Wait for x seconds    10s