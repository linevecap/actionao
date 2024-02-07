*** Settings ***
Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Hedging DI QAS

    Go to the QAS environment
    Login with    DirectImportSupportQAS    v2{tf|p!qeWN
    # Mendix Click    Add hedge label & link to contracts
    # Click    span.glyphicon-step-forward
    # Wait for x seconds    1s
    
    Click    a.mx-name-menuBar1-3[title='[NAS] Hedge contract table']
    Wait for x seconds    1s

    # Click top row of hedging list
    Click    (//div[contains(@class, "tr")]//following::td)[1]

    Mendix Click    Add hedge label & link to contracts
    Wait for x seconds    2s
    Mendix Click    OK
    Click    a.mx-name-menuBar1-4[title='Manage hedge labels']
    Click    (//div[contains(@class, "td")])[1]
    Wait for x seconds    1s
    # Mendix Click    Add hedge contract
    Mendix Text    Hedge rate    62
    # Mendix Text    Hedge contract    47
    # Mendix Text    Exchange rate per contract    5
    # ${CurrentDate}    Get Current Date
    # ${CurrentDate}    	Convert Date	${CurrentDate}	result_format=%d-%m-%Y  	    
    # Mendix Text    Hedge maturity date    ${CurrentDate}        
    # Mendix Click    Save
    Mendix Click    [NAS] Submit
    Mendix Click    Proceed
    Mendix Click    OK
    Log out

    Wait for x seconds    10s

    # Click    (//div[@class = "tr"]//div[3]//span[text() = "${EMPTY}" ])[last()]
