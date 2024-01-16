*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 NAS Developtment Item QAS
    [Arguments]    ${Username}    ${Password}    ${Specification}    
    ...    ${ContentQty}    ${ContentUnit}    ${CountryOfProd}
    ...    ${GrossWeight}    ${NetWeight}    ${Length}    ${Width}    ${Height}    
    ...    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    # ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}            
    ...    ${SupplierArticleNr}    ${SohDate}    
           

    Go to the QAS environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    5s
    # Mendix Task Inbox    2
    Mendix Click    NAS Tasks
    Task Inbox   Supplier Enrichment 1
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    Mendix Text    Article gross weight* (KG)    ${GrossWeight}
    Mendix Text    Article net weight* (KG)     ${NetWeight}
    Mendix Text    Article length (cm)*    ${Length}
    Mendix Text    Article width (cm)*    ${Width}
    Mendix Text    Article height (cm)*    ${Height}
    Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    # Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    # Mendix Click    Add Variant
    # Fill Random EAN NAS
    # Wait for x seconds    5s
    # Fill Text    (//label[text() = "Quantity per box"]//following::input)[5]    6   
    # Wait for x seconds    2s
    # Fill Text    (//span[text() = "Value"]//following::input)[1]    Red
    # Mendix Click    Save
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Text    Stock On Hand Date*    ${SohDate}   
    Mendix Click    Submit Enrichment
    Wait for x seconds    2s
    Mendix Click    Continue
    Wait for x seconds    2s
    Mendix Click    OK
    Log out

    Wait for x seconds    10s