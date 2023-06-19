*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1
    [Arguments]    ${Username}    ${Password}    ${Samples}    ${Specification}    ${GrossWeight}    ${NetWeight}
    ...    ${Length}    ${Width}    ${Height}    ${ContentQty}    ${ContentUnit}
    ...    ${CountryOfProd}
    # ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}            
    ...    ${SupplierArticleNr}    ${SohDate}    ${Materials}
    ...    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           

    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Mendix Dropdown    All samples available*    label    ${Samples}
    Mendix Click    Add EAN
    Fill Random EAN    
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Article gross weight (kg)*    ${GrossWeight}
    Mendix Text    Article net weight (kg)*    ${NetWeight}
    Mendix Text    Article length (cm)*    ${Length}
    Mendix Text    Article width (cm)*    ${Width}
    Mendix Text    Article height (cm)*    ${Height}
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    Language on packaging
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Deselect N/A Language
    Wait for x seconds    1s
    Save Language
    # Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Text    Stock On Hand Date*    ${SohDate}   
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Wait for x seconds    5s
    Mendix Click    Submit Enrichment
    Mendix Click    Proceed
    Set Browser Timeout    15s
    Mendix Click    OK
    Log out

    Wait for x seconds    10s