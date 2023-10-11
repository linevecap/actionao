*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Validate Classification
    [Arguments]    

    Login with    DirectImportSupportDev    IzG\]`LX'j5\(2
    # Mendix Task Inbox    2
    Task Inbox    Validate Classification
    Mendix Click    Submit
    Mendix Click    OK
    Log out

    Wait for x seconds    10s