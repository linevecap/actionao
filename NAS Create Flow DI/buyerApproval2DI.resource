*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buyer Approval
    [Arguments]    ${Username}    ${Password}

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Mendix Click    NAS Tasks
    Wait for x seconds    2s
    Task Inbox    Buyer Approval 2
    Mendix Click    Approve
    Wait for x seconds    5s
    Log out

    Wait for x seconds    10s

