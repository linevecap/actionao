*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Check Quotation create QAS    
    [Arguments]    ${path}    ${Description1}    ${Supplier}    ${Quantity}    ${PricePerItem}    ${CountryOfProd}
    ...    ${HSCode}    ${ImportDuty}    ${AntiDump}    ${FOBPort}    ${ProdDescription}    ${Length}    ${Width}    ${Height}
    ...    ${ETD}    ${CartonQty}    ${CartonGrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}              

    Go to the QAS environment
    Login with    sourcingagent@action.nl    0G_yAB9
    Mendix Click    NAS Tasks
    Wait for x seconds    3s
    Mendix Click    Create Quotation
    Wait for x seconds    2s
    Mendix Click    Add photos
    # Mendix Text    Suggested article number
    Mendix Text    English Description (Max 40 characters) *    ${Description1}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}   
    Mendix Text    Price per item (USD ex. VAT)*    ${PricePerItem}
    # Fill Text    (//label[text() = "Supplier article number"]/following::input[1])[1]    testnr
    Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    Mendix Dropdown Extended    HS code*    ${HSCode}
    Mendix Text    Import duty rate (%)*    ${ImportDuty}     
    Mendix Text    Anti dump duty (%)*    ${AntiDump}
    Mendix Dropdown    FOB port*    label    ${FOBPort}
    Fill Product Description    Product Specification*    ${ProdDescription}
    Mendix Text    First possible shipping date (ETD)*    ${ETD}
    Mendix Text    Container quantity 20*    10        
    Mendix Text    Container quantity 40*    10
    Mendix Text    Container quantity HQ*    10
    Logistics Data DI Check Quotation NAS    ${CartonQty}    ${CartonGrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}
    Mendix Click    Submit Quotation
    # Mendix Click    OK
    Log out

    Wait for x seconds    20s  
 

