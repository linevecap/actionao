*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment repeat flow QAS
    [Arguments]    ${Username}    ${Password}    ${PriceSK}  
    
    Login with    ${Username}    ${Password}
    Mendix Task Inbox    2
    # Click    (//div[contains(@class, "mx-name-checkBox1")])[12]//child::input
    # Fill Text    (//div[contains(@class, "mx-name-checkBox1")])[12]//following::input    ${PriceSK}
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s