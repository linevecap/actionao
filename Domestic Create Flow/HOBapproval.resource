*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

HOB Approval
    [Arguments]    ${Username}    ${Password}

    Login with    ${Username}    ${Password}
    Click    (//div[contains(@class, "td-custom-content")])[3]//child::span
    Mendix Click    OK
    Log out

    Wait for x seconds    60s
