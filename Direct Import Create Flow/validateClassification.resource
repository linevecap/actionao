*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Validate Classification
    [Arguments]    

    Go to the Dev environment
    Login with    DirectImportSupportDev    IzG\]`LX'j5\(2
    Wait for x seconds    2s
    Mendix Click    NAS Tasks
    Wait for x seconds    2s
    # Mendix Task Inbox    2
    Task Inbox    Validate Classification
    Mendix Click    Approve
    Mendix Click    OK
    Wait for x seconds    2s
    Log out

    Wait for x seconds    10s