*** Settings ***

Library    Browser
Library    FakerLibrary
Library    String

Resource    ../Functions/functions.resource
Resource    ../Homepage/homepage.resource

*** Keywords ***

Start Onboarding NAS Repeat
    [Arguments]    ${Username}    ${Password}    ${Supplier}    ${Quantity}    ${PricePerItem}
    ...    ${SeasonYear}    ${Month}    ${SalesPerWeek}    ${BoxQty}    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}
    # ...    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}
    # ...    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}          

    Go to the Dev environment
    Login with    ${Username}    ${Password} 
    Mendix Click    NAS Tasks
    Mendix Click    Onboard Article
    Click    (//button[text() = "Search"])[2]
    Mendix Dropdown Extended    Supplier*    ${Supplier}
    Mendix Text    Quantity*    ${Quantity}
    Mendix Text    Price per item (EUR ex. VAT)*    ${PricePerItem}
    Mendix Text    Season Year*    ${SeasonYear}
    Click Calender New Widget    ${Month}
    Mendix Text    Expected sales per week (pcs)*    ${SalesPerWeek}
    Mendix Text    Agreed (inner) box quantity*    ${BoxQty}
    Wait for x seconds    2s
    Selling Price    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}    
    # VAT NAS BAE    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT} 
    Mendix Click    Start Onboarding
    Wait for x seconds    2s

    Log out
    
