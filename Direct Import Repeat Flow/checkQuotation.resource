*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Check Quotation DI repeat flow    
    [Arguments]    ${ArticleNumber}    ${path}    ${Supplier}    ${Quantity}    ${PricePerItem}
    ...    ${ImportDuty}    ${AntiDump}    ${FOBPort}    ${ProdDescription}
    ...    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}              

    Login with    sourcingagentdev    5lC(i)R@=9g?
    Mendix Click    Create Quotation
    Mendix Text    Article number    ${ArticleNumber}
    Mendix Click    Check number and continue
    Set Browser Timeout    30s
    Mendix Click    Add Photos
    Upload Picture    ${path}
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}   
    Mendix Text    Price per item (USD ex. VAT)*    ${PricePerItem}
    Mendix Text    Import duty rate (%)*    ${ImportDuty}     
    Mendix Text    Anti dump duty*    ${AntiDump}
    Mendix Dropdown    FOB port*    label    ${FOBPort} 
    Fill Text    (//li[contains(@class, "mx-name-index-0")]//child::input)[1]    Test    
    Fill Product Description    Product specification*    ${ProdDescription}
    ${CurrentDate}    Get Current Date    increment=24:00:00       
    ${CurrentDate}    	Convert Date	${CurrentDate}	result_format=%d-%m-%Y
    Mendix Text    First possible shipping date (ETD)*    ${CurrentDate}
    # Mendix Text    First possible shipping date (ETD)*    ${ETDdate}
    Mendix Text    Container quantity 20*    10        
    Mendix Text    Container quantity 40*    10
    Mendix Text    Container quantity HQ*    10
    Logistics Data DI Check Quotation    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}
    Wait for x seconds    1s
    Mendix Click    Submit
    Wait for x seconds    1s
    Mendix Click    OK
    Wait for x seconds    1s
    Log out

    Wait for x seconds    10s  
 
