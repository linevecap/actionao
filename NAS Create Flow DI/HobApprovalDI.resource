*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

HOB Approval DI
    [Arguments]    ${Username}    ${Password}

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    2s
    Mendix Click    NAS Tasks
    Task Inbox    HOB Approval
    Mendix Click    Approve Contract
    Mendix Click    OK
    Wait for x seconds    5s
    Log out

    Wait for x seconds    60s

