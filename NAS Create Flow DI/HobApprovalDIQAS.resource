*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

HOB Approval DI QAS
    [Arguments]    ${Username}    ${Password}

    Go to the QAS environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    2s
    Mendix Click    NAS Tasks
    Wait for x seconds    2s
    Task Inbox    HOB Approval
    Mendix Click    Approve Contract
    Mendix Click    OK
    Wait for x seconds    5s
    Log out

    Wait for x seconds    60s

