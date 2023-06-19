*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 repeat flow
    [Arguments]    ${Username}    ${Password}    ${Samples}    ${Specification}    
    ...    ${SupplierArticleNr}    ${SohDate}    ${MSDS}    ${Materials}
    ...    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           

    Login with    ${Username}    ${Password}    
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Mendix Dropdown    All samples available*    label    ${Samples}
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Text    Stock On Hand Date*    ${SohDate}   
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Mendix Click    Add material
    Mendix Click Material repeat flow    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Wait for x seconds    3s
    Mendix Click    Submit Enrichment
    Wait for x seconds    1s
    Mendix Click    Proceed
    Wait for x seconds    1s
    Mendix Click    OK
    Log out

    Wait for x seconds    10s