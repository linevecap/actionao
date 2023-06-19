*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

HoB Change Approval  
    
    Login with    hobdev    A:B51gC
    Click    button.mx-name-actionButton10 
    Wait for x seconds    2s   
    Mendix Task Inbox    2
    Mendix Click    Approve
    Mendix Click    Yes
    Log out
    Wait for x seconds    60s
    