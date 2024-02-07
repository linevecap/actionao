*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

director Approval NAS Create
    [Arguments]    ${Username}    ${Password}

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Mendix Click    NAS Tasks
    Task Inbox    Buying Director Approval
    Mendix Click    Approve Contract
    Mendix Click    OK
    Wait for x seconds    5s
    Log out

    Wait for x seconds    10s

