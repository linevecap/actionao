*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Supplier Enrichment 1 DI repeat flow
    [Arguments]    ${Samples}        ${SupplierArticleNr}    ${MSDS}    ${FactoryName}
    ...    ${FactoryAddress}    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}    ${Materials}
    ...    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}           

    Login with    sourcingagentdev    5lC(i)R@=9g?
    Task Inbox    Supplier Article Enrichment
    Mendix Dropdown    All samples available*    label    ${Samples}
    Mendix Text    Supplier Article Number*    ${SupplierArticleNr}
    Mendix Dropdown    Is MSDS needed yes/no*    label    ${MSDS}
    Mendix Text    Factory name*    ${FactoryName}
    Mendix Text    Factory address*    ${FactoryAddress}
    Logistics Data DI SE1 Repeat    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${PalletQty}    ${PalletHeight}
    Mendix Click    Add material
    Mendix Click Material    ${Materials}    ${SpecificMaterial}    ${PercentageOfArticle}    ${SustainabilityCertificate}
    Mendix Click    Submit Enrichment
    Mendix Click    OK
    Log out

    Wait for x seconds    10s  