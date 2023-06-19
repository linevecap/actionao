*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Final Check ComOps DI repeat flow

    Login with    comopsdev    TM1Gv~s
    Mendix Task Inbox    2
    Mendix Click    Approve
    Mendix Click    OK
    Log out