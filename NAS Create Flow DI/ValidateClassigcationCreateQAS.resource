*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Validate Classification QAS
    [Arguments]    

    Go to the QAS environment
    Login with    DirectImportSupportQAS    v2{tf|p!qeWN
    Mendix Click    NAS Tasks
    Wait for x seconds    2s
    Task Inbox    Validate Classification
    Mendix Click    Approve
    Log out

    Wait for x seconds    10s