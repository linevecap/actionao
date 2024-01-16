*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 2
    [Arguments]    ${Username}    ${Password}    ${MSDS}    ${HSCode}
    ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}    
    
    # Go to the Dev environment
    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Task Inbox    Supplier Article Enrichment 2
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Mendix Dropdown Extended    HS code*    ${HSCode}
    Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}                
    Mendix Click    Submit Enrichment
    Mendix Click    OK
    Log out

    Wait for x seconds    10s