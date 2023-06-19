*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps
    [Arguments]    ${Username}    ${Password}    ${Brand}    ${ICPE}    
    Login with    ${Username}    ${Password}    
    Task Inbox    Final Article Check
    Mendix Dropdown Extended    Brand*    ${Brand}
    Mendix Dropdown    ICPE*    label    ${ICPE}
    Mendix Click    Approve
    Mendix Click    OK
    Log out