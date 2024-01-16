*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Check Quotation DI create flow    
    [Arguments]    ${path}    ${Description1}    ${Supplier}    ${Quantity}    ${PricePerItem}    ${CountryOfProd}
    ...    ${HSCode}    ${ImportDuty}    ${AntiDump}    ${FOBPort}    ${ProdDescription}    ${Length}    ${Width}    ${Height}
    ...    ${ETD}    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}              

    Go to the Dev environment
    Login with    sourcingagentdev    5lC(i)R@=9g?
    Mendix Click    Create Quotation
    Mendix Click    Skip check and continue  
    Mendix Click    Add Photos
    # Upload Picture    ${path}
    Mendix Text    English Description (Max 40 characters) *    ${Description1}
    # Mendix Text    English Description (Max 40 characters) *    ${Description2}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}   
    Mendix Text    Price per item (USD ex. VAT)*    ${PricePerItem}
    # Fill Text    (//label[text() = "Supplier article number"]/following::input[1])[1]    testnr
    Mendix Dropdown Extended    Country of production*    ${CountryOfProd}
    Mendix Dropdown Extended    HS code*    ${HSCode}
    Mendix Text    Import duty rate (%)*    ${ImportDuty}     
    Mendix Text    Anti dump duty*    ${AntiDump}
    Mendix Dropdown    FOB port*    label    ${FOBPort}
    Mendix Click    Add EAN   
    Fill Random EAN DI
    Fill Product Description    Product specification*    ${ProdDescription}
    Mendix Text    Article length (cm)*    ${Length}
    Mendix Text    Article width (cm)*    ${Width}
    Mendix Text    Article height (cm)*    ${Height}
    Mendix Text    First possible shipping date (ETD)*    ${ETD}
    Mendix Text    Container quantity 20*    10        
    Mendix Text    Container quantity 40*    10
    Mendix Text    Container quantity HQ*    10
    Logistics Data DI Check Quotation    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}
    Mendix Click    Submit
    Mendix Click    OK
    Log out

    Wait for x seconds    10s  
 

