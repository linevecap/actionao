*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 2 DI create flow
    [Arguments]    ${MSDS}        

    Login with    sourcingagentdev    5lC(i)R@=9g?
    # Mendix Task Inbox    2
    Task Inbox    Supplier Article Enrichment 2
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Mendix Click    Submit Enrichment
    Mendix Click    OK
    Log out

    Wait for x seconds    10s
