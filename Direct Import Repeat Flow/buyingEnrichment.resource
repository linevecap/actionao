*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Buying Enrichment DI repeat flow

    Login with    buyerdev    xGk<6Of

    Task Inbox    Buying Article Enrichment
    Mendix Click    Approve
    Mendix Click    OK
    Log out

    Wait for x seconds    10s