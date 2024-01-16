*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check Hazardous NAS Create QAS
    [Arguments]    ${Username}    ${Password}    ${Brand}    ${Warehouse condition}    ${Storage requirement}    ${ICPE}   

    Go to the QAS environment
    Login with    ${Username}    ${Password}
    Wait for x seconds    5s   
    Mendix Click    NAS Tasks 
    Wait for x seconds    5s
    Task Inbox    Final Article Check
    Wait for x seconds    5s
    Mendix Dropdown Extended    Brand*    ${Brand}
    Mendix Dropdown    Warehouse condition    label    ${Warehouse condition}
    Mendix Dropdown    Storage requirement    label    ${Storage requirement}
    Wait for x seconds    2s
    Mendix Dropdown    ICPE*    label    ${ICPE}
    Mendix Click    Approve
    Log out