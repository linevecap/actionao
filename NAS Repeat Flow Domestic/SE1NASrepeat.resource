*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment NAS Repeat
    [Arguments]    ${Username}    ${Password}    ${Specification}    
    ...    ${ContentQty}    ${ContentUnit}          
    ...    ${SupplierArticleNr}    ${SohDate}    
           
    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Mendix Click    NAS Tasks
    Task Inbox   Supplier Enrichment 1
    Fill Product Description    Product Specification*    ${Specification}
    Mendix Text    Article content quantity*    ${ContentQty}    
    Mendix Dropdown    Article content unit*    label    ${ContentUnit}
    # Click    (//span[contains(@class, "glyphicon glyphicon-trash")])[2]
    # Click    (//span[contains(@class, "glyphicon glyphicon-trash")])[3]
    Mendix Click    Add Variant
    Fill Random EAN NAS   
    Fill Text    (//span[text() = "Value"]//following::input)[1]    Red
    Wait for x seconds    1s
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