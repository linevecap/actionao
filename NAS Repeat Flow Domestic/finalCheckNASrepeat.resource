*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps NAS Repeat
    [Arguments]    ${Username}    ${Password}    ${Brand}    ${ICPE}   


    Login with    ${Username}    ${Password}   
    Mendix Click    NAS Tasks 
    Wait for x seconds    1s
    Task Inbox    Final Article Check
    Mendix Dropdown Extended    Brand*    ${Brand}
    Mendix Dropdown    ICPE*    label    ${ICPE}
    Mendix Click    Submit
    Log out