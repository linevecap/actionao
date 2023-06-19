*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 DI repeat flow
    [Arguments]    ${Samples}        ${SupplierArticleNr}    ${MSDS}    ${FactoryName}
    ...    ${FactoryAddress}    ${GrossWeight}    ${PalletQty}    ${PalletHeight}    ${Materials}
    ...    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           

    Login with    sourcingagentdev    5lC(i)R@=9g?
    # Mendix Task Inbox    2
    Click    (//div[contains(@class, "tr")]//child::span[contains(@class, "td-text")])[1]
    Mendix Dropdown    All samples available*    label    ${Samples}
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Mendix Text    Factory name*    ${FactoryName}
    Mendix Text    Factory address*    ${FactoryAddress}
    Logistics Data DI repeat SE2    ${GrossWeight}    ${PalletQty}    ${PalletHeight}
    Mendix Click    Add material
    Mendix Click Material repeat flow    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Mendix Click    Submit Enrichment
    Mendix Click    OK
    Log out

    Wait for x seconds    10s  