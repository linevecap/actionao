*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 repeat flow QAS
    [Arguments]    ${Username}    ${Password}    ${Samples}    ${Specification}    
    ...    ${SupplierArticleNr}    ${SohDate}    ${MSDS}    
    # ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}     
    ...    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           

    Login with    ${Username}    ${Password}    
    Mendix Task Inbox    2
    Mendix Dropdown    All samples available*    label    ${Samples}
    Mendix Click    Add EAN
    Fill Text    (//li[contains(@class, "mx-name-index-1")]//child::input)[1]    8711293393236     
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Text    Stock On Hand Date*    ${SohDate}   
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    # Logistics Data    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth} 
    Mendix Click    Add material
    Mendix Click Material repeat flow    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Wait for x seconds    2s
    Mendix Click    Submit Enrichment
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    1s
    Mendix Click    OK
    Log out

    Wait for x seconds    10s





