*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 DI create flow
    [Arguments]    ${Samples}        ${GrossWeight}    ${NetWeight}
    ...    ${ContentQty}    ${ContentUnit}    ${FactoryName}    ${FactoryAddress}         
    ...    ${SupplierArticleNr}    ${GrossWeight}    ${PalletQty}    ${PalletHeight}        ${Materials}
    ...    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           
    

    Login with    sourcingagentdev    5lC(i)R@=9g?

    Task Inbox    Supplier Article Enrichment
    Mendix Dropdown    All samples available*    label    ${Samples}
    Fill Text    (//div[contains(@class, "mx-name-textBox10 mx-textbox form-group no-columns")])[1]/child::input    ${GrossWeight}
    Fill Text    (//div[contains(@class, "mx-name-textBox4 mx-textbox form-group no-columns")])[1]/child::input    ${NetWeight}
    # Mendix Text    Article gross weight (kg)*    ${GrossWeight}
    # Mendix Text    Article net weight (kg)*    ${NetWeight}
    Wait for x seconds    1s
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    Language on packaging
    Wait for x seconds    1s
    Mendix Click    Select all
    Wait for x seconds    1s
    Deselect N/A Language
    Wait for x seconds    1s
    Save Language
    Mendix Text    Factory name*    ${FactoryName}
    Mendix Text    Factory address*    ${FactoryAddress}       
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Logistics Data DI SE1    ${GrossWeight}    ${PalletQty}    ${PalletHeight}
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Mendix Click    Submit Enrichment
    Mendix Click    OK
    Log out

    Wait for x seconds    10s