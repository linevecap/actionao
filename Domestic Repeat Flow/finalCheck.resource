*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps repeat flow
    [Arguments]    ${Username}    ${Password}    

    Login with    ${Username}    ${Password}
    Mendix Task Inbox    2
    Mendix Click    Approve
    Mendix Click    OK
    Log out