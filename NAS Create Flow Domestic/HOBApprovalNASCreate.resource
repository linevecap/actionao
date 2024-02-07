*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

HOB Approval NAS Create
    [Arguments]    ${Username}    ${Password}

    Login with    ${Username}    ${Password}
    Mendix Click    NAS Tasks
    Task Inbox    HOB Approval
    Mendix Click    Approve Contract
    Mendix Click    OK
    Log out

    Wait for x seconds    10s
