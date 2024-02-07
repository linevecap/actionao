*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment Direct Import QAS
    [Arguments]    ${Username}    ${Password}    
    # ...    ${Specification}    
    ...    ${ContentQty}    ${ContentUnit}    
    # ...    ${CountryOfProd}
    ...    ${GrossWeight}    ${NetWeight}    ${Length}    ${Width}    ${Height}    
    ...    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    # ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}            
    ...    ${SupplierArticleNr}    ${SohDate}    
           
    Go to the QAS environment
    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Mendix Click    NAS Tasks
    Task Inbox   Supplier Enrichment 1
    # Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    Mendix Text    Article gross weight* (KG)    ${GrossWeight}
    Mendix Text    Article net weight* (KG)    ${NetWeight}
    Mendix Text    Article length (cm)*    ${Length}
    Mendix Text    Article width (cm)*    ${Width}
    Mendix Text    Article height (cm)*    ${Height}
    # Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    # Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Mendix Click    Add Variant
    Fill Random EAN NAS   
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Click    (//button[text() = "Save"])[2]
    Wait for x seconds    2s
    Fill Text    (//label[text() = "Quantity per box*"]//following::input)[5]    6
    Mendix Click    Save
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Text    Stock On Hand Date*    ${SohDate}   
    Mendix Click    Submit Enrichment
    Wait for x seconds    1s
    Mendix Click    Continue
    Wait for x seconds    1s
    Mendix Click    OK
    Wait for x seconds    2s
    Log out

    Wait for x seconds    10s