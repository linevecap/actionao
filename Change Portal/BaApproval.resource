*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Assistent Change Approval   
    
    Login with    ba1dev    \\8ZegOP
    Click    button.mx-name-actionButton10  
    Wait for x seconds    2s  
    Mendix Task Inbox    2
    Mendix Click    Approve
    Mendix Click    Yes
    Log out
    Wait for x seconds    60s
