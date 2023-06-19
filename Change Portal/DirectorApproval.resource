*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Director Change Approval
    Login with    buyingdirectordev    bb\}Z7Z.
    Click    button.mx-name-actionButton10  
    Wait for x seconds    2s  
    Mendix Task Inbox    2
    Mendix Click    Approve
    Mendix Click    Yes
    Log out
