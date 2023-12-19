*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource
Resource    ../NAS Create Flow Domestic/startOnboardingNASQASAssorti.resource

*** Keywords ***

Supplier Enrichment NAS Create Assorti QAS
    [Arguments]    ${Username}    ${Password}    ${Specification}    
    ...    ${ContentQty}    ${ContentUnit}    ${CountryOfProd}
    ...    ${GrossWeight}    ${NetWeight}    ${Length}    ${Width}    ${Height}    
    ...    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}    ${VDC1}    ${VDC2}    ${VDC3}
    ...    ${VDC1.2}    ${VDC2.2}    ${VDC3.2}    ${VDC1.3}    ${VDC2.3}    ${VDC3.3}
    # ...    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}            
    ...    ${SupplierArticleNr}    ${SohDate}    
    
    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Mendix Click    NAS Tasks
    Task Inbox   Supplier Enrichment 1
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    Mendix Text    Article gross weight* (KG)    ${GrossWeight}
    Mendix Text    Article net weight* (KG)    ${NetWeight}
    Mendix Text    Article length (cm)*    ${Length}
    Mendix Text    Article width (cm)*    ${Width}
    Mendix Text    Article height (cm)*    ${Height}
    Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    # Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    
    # Variant 1
    Mendix Click    Add Variant
    Fill Random EAN NAS   
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Click    (//button[text() = 'Save'])[2]
    Fill Text    (//span[text() = 'Type']//following::input)[1]    ${VDC1}
    Fill Text    (//span[text() = 'Size']//following::input)[1]    ${VDC2}
    Mendix Click    Add Variant Defining Characteristic
    Select Options By    (//label[text() = 'VDC']//following::select)[1]    label    Scent
    Mendix Click    Close
    Fill Text    (//span[text() = 'Scent']//following::input)[1]    ${VDC3}
    Fill Text    (//label[text() = "Quantity per box"]//following::input)[5]    6
    Mendix Click    Save
    Wait for x seconds    2s

    # Variant 2
    Mendix Click    Add Variant
    Fill Random EAN NAS   
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Click    (//button[text() = 'Save'])[2]
    Fill Text    (//span[text() = 'Type']//following::input)[1]    ${VDC1.2}
    Fill Text    (//span[text() = 'Size']//following::input)[1]    ${VDC2.2}
    Mendix Click    Add Variant Defining Characteristic
    Select Options By    (//label[text() = 'VDC']//following::select)[1]    label    Scent
    Mendix Click    Close
    Fill Text    (//span[text() = 'Scent']//following::input)[1]    ${VDC3.2}
    Fill Text    (//label[text() = "Quantity per box"]//following::input)[6]    6
    Mendix Click    Save
    Wait for x seconds    2s
    
    # Variant 3
    Mendix Click    Add Variant
    Fill Random EAN NAS   
    Wait for x seconds    1s
    Relevant packaging languages
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Click    (//button[text() = 'Save'])[2]
    Fill Text    (//span[text() = 'Type']//following::input)[1]    ${VDC1.3}
    Fill Text    (//span[text() = 'Size']//following::input)[1]    ${VDC2.3}
    Mendix Click    Add Variant Defining Characteristic
    Select Options By    (//label[text() = 'VDC']//following::select)[1]    label    Scent
    Mendix Click    Close
    Fill Text    (//span[text() = 'Scent']//following::input)[1]    ${VDC3.3}
    Fill Text    (//label[text() = "Quantity per box"]//following::input)[7]    6
    Mendix Click    Save
    Wait for x seconds    2s


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