*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start a change request
    
    Go to the Dev environment
    Login with    supplier1dev    E~K5fKT     
    Click    //div[contains(@class, "mx-name-container5")]//a[contains(@class, "navigationTree5")]
    Wait for x seconds    2s
    Mendix Task Inbox    10 
    Fill Text    (//span[text() = "To order quantity (PC)"]/following::input[1])    200011
    Fill Text    (//span[text() = "Price per item (EUR)"]/following::input[1])    50
    # Fill Text    (//span[text() = "Start date price change"]/following::input[1])    20-03-2023  
    Wait for x seconds    1s  
    Fill Text    (//span[text() = "Stock on hand date"]/following::input[1])    20-03-2023
    Logistics Data Change Request    40    5    11    12    13    20    4    10    10    10    4000    169
    Mendix Click    Submit
    Mendix Click    OK
    Log out
    Wait for x seconds    60s

