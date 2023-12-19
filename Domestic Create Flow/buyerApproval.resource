*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buyer Approval
    [Arguments]    ${Username}    ${Password}

    Login with    ${Username}    ${Password}
    Task Inbox    Buyer Article Approval
    Mendix Click    Approve and Release Contract
    Mendix Click    OK
    Wait for x seconds    5s
    Log out

    Wait for x seconds    10s

