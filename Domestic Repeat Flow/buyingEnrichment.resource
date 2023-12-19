*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment repeat flow
    [Arguments]    ${Username}    ${Password}   
    
    Login with    ${Username}    ${Password}
    # Mendix Task Inbox    2
    Task Inbox    Buying Article Enrichment
    Mendix Click    (//input[contains(@type, 'checkbox')])[13]
    Mendix Click    Ready for Buyer Approval
    Mendix Click    OK
    Log out

    Wait for x seconds    10s