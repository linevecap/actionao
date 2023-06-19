*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps DI create flow
    [Arguments]    ${Brand}    ${ICPE}    
    Login with    comopsdev    TM1Gv~s
    Mendix Task Inbox    2
    Mendix Dropdown Extended    Brand*    ${Brand}
    Mendix Dropdown    ICPE*    label    ${ICPE}
    Mendix Click    Approve
    Mendix Click    OK
    Log out