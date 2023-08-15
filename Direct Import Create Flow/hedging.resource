*** Settings ***
Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Hedging DI create/repeat flow

    Login with    treasurydev    6V/Et&6
    # Mendix Click    Add hedge label & link to contracts
    # Click    span.glyphicon-step-forward
    # Wait for x seconds    1s
    Click    (//div[contains(@class, "tr")]//following::td)[1]
    Wait for x seconds    1s
    Mendix Click    Add hedge label & link to contracts
    Wait for x seconds    2s
    Mendix Click    OK
    Click    .mx-name-menuBar1-3[title='Manage hedge labels']
    Click    (//div[contains(@class, "td")])[1]
    Wait for x seconds    1s
    Mendix Text    Value hedge    62
    Mendix Text    Hedge contract    47
    Mendix Text    Exchange rate per contract    5
    ${CurrentDate}    Get Current Date
    ${CurrentDate}    	Convert Date	${CurrentDate}	result_format=%d-%m-%Y  	    
    Mendix Text    Hedge maturity date    ${CurrentDate}        
    Mendix Click    Save
    Mendix Click    Submit
    Log out

    Wait for x seconds    10s

    # Click    (//div[@class = "tr"]//div[3]//span[text() = "${EMPTY}" ])[last()]
