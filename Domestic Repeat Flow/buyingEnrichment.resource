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
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s