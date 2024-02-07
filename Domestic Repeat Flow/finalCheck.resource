*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps repeat flow
    [Arguments]    ${Username}    ${Password}    

    Go to the Dev environment
    Login with    ${Username}    ${Password}
    Task Inbox    Final Article Check
    Mendix Click    Approve
    Mendix Click    OK
    Log out