*** Settings ***
Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Hedging DI create/repeat flow

    Go to the Dev environment
    Login with    DirectImportSupportDev    IzG\]`LX'j5\(2
    # Mendix Click    Add hedge label & link to contracts
    # Click    span.glyphicon-step-forward
    # Wait for x seconds    1s
    
    Click    ((//div[contains(@class, "navbar")])[3]//child::li)[3]
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
    Mendix Click    Submit
    Log out

    Wait for x seconds    10s

    # Click    (//div[@class = "tr"]//div[3]//span[text() = "${EMPTY}" ])[last()]
