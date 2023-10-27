*** Settings ***

Library    Browser
Library    DateTime
Library    FakerLibrary

*** Keywords ***

Mendix Text   
    [Arguments]    ${label}    ${input}    
    Fill Text    (//label[text() = "${label}"]/following::input)[1]    ${input}

Mendix Click
    [Arguments]    ${label}    
    Click    //button[text() = "${label}"]

Mendix Dropdown
    [Arguments]    ${label}    ${attribute}    ${value}    
    Select Options By    (//label[text() = "${label}"]/following::select)[1]   ${attribute}    ${value}     

Mendix Dropdown Extended
    [Arguments]    ${label}    ${value}    
    Click    (//label[text() = "${label}"]/following::span[text() = "Select an item from the dropdown.."])[1]
    Fill Text    //label[text() = "${label}"]/following::span[contains(@class, "search")]/input    ${value}    
    Click    //label[text() = "${label}"]/following::span[contains(@class, "results")]//div[text() = "${value}"]

Mendix Task Inbox
    [Arguments]    ${index}
    Click    (//div[@class = "tr"])[${index}]    

Task Inbox
    [Arguments]    ${task}
    Click    (//span[text() = "${task}"])[1]

Mendix Click Material  
    [Arguments]    ${materials}    ${specificMaterial}    ${percentage}    ${certificate}
    Select Options By    (//span[text() = "Materials*"]//following::select)[1]    label    ${materials}
    Select Options By    (//span[text() = "Specific material*"]//following::select)[2]    label    ${specificMaterial}
    Fill Text    (//span[text() = "% Of article*"]//following::input)[1]    ${percentage}
    Select Options By    (//span[text() = "Sustainability certificate*"]//following::select)[3]    label    ${certificate}
    
Upload Picture
    [Arguments]    ${path}
    Upload File By Selector    //div[contains(@class, "mx-dataview-content")]//div[contains(@class, "filedropper__dropzone")]//child::input    ${path}
    Click    //div[contains(@class, "modal-content mx-window-content")]//button[contains(@class, "close")]
    
Wait for x seconds
    [Arguments]    ${seconds}
    Sleep    ${seconds}

Press Enter
    Keyboard Key    press    Enter

Press Down
    Keyboard Key    press    ArrowDown

Press Left
    Keyboard Key    press    ArrowLeft

Language on packaging
    Click    //label[text() = "Language on packaging*"]

Relevant packaging languages
    # Click    //label[text() = "Relevant packaging languages*"]
    Click    //button[contains(@class, "btn mx-button mx-referencesetselector-select-button")]

Save Language        
    Click    button.mx-name-selectButton1
    
Deselect N/A Language
    Click    //div[text() = "N/A"]

Deselect Other Language
    Click    //div[text() = "Other"]

Deselect N/A Language QAS
    Click    //div[text() = "N/A"]

Click Calender
    [Arguments]    ${date}
    Click    .glyphicon-calendar
    Click    [aria-label='${date}']

Click Calender 2
    [Arguments]    ${date}
    Click    .glyphicon-calendar
    Click    //button[contains(@class, "mx-calendar-month-next")]//child::span
    Click    [aria-label='${date}']

Click Calender New Widget
    [Arguments]    ${Month}    ${Year}    ${Day}    
    Select Options By    (//div[contains(@class, "react-datepicker")]//following::select)[1]    label    ${Month}
    Select Options By    (//div[contains(@class, "react-datepicker")]//following::select)[2]    label    ${Year}
    Click    //div[contains(@class, "0${Day}")]
    # Click    (//div[contains(@class, "react-datepicker")]//following::div[contains(@class, "day--weekend")])[8]

Fill EAN
    [Arguments]    ${EAN} 
    Wait for x seconds    2s
    Fill Text    (//label[text() = "EAN Code*"]//following::input)[1]    ${EAN}    
    Fill Text    (//label[text() = "EAN Code*"]//following::input)[2]    Test 

Fill Random EAN
    ${EAN}    FakerLibrary.Ean 13   
    Wait for x seconds    2s   
    Fill Text    (//label[text() = "EAN Code*"]//following::input)[1]    ${EAN}
    Fill Text    (//label[text() = "EAN Code*"]//following::input)[2]    Test 

Fill Random EAN NAS
    ${EAN}    FakerLibrary.Ean 13   
    Wait for x seconds    2s   
    Fill Text    (//label[text() = "EAN code"]//following::input)[1]    ${EAN}
    # Fill Text    (//label[text() = "EAN Code*"]//following::input)[2]    Test 
    
Fill Random EAN DI
    ${EAN}    FakerLibrary.Ean 13   
    Wait for x seconds    2s   
    Fill Text    (//label[text() = "EAN Code"]//following::input)[1]    ${EAN}
    # Fill Text    (//label[text() = "EAN Code"]//following::input)[2]    Test 

Fill Product Description
    [Arguments]    ${label}    ${input}    
    Fill Text    (//label[text() = "${label}"]/following::textarea[1])    ${input}

Click Brick        
    # Click    (//div[contains(@class, "mx-name-container1 form-group")]//child::button)[1]
    Click    (//label[text() = "Brick*"]//following::button)[1]
    Wait for x seconds    2s
    Click    (//div[text() = "First Aid, Health & Vitamins, Lifestyle & Other, Joints&Muscles"])[1]

Selling Price
    [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PriceAT}    ${PricePL}    ${PriceCZ}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}
    Fill Text    (//div[text() = "NL"]//following::input)[1]    ${PriceNL}
    Fill Text    (//div[text() = "BE-VL"]//following::input)[1]    ${PriceBE-VL}
    Fill Text    (//div[text() = "BE-WL"]//following::input)[1]    ${PriceBE-WL}
    Fill Text    (//div[text() = "DE"]//following::input)[1]    ${PricDE}
    Fill Text    (//div[text() = "FR"]//following::input)[1]    ${PricFR}
    Fill Text    (//div[text() = "LU"]//following::input)[1]   ${PricLU}
    Fill Text    (//div[text() = "AT"]//following::input)[1]    ${PriceAT}
    Fill Text    (//div[text() = "PL"]//following::input)[1]    ${PricePL}
    Fill Text    (//div[text() = "CZ"]//following::input)[1]    ${PriceCZ}
    Fill Text    (//div[text() = "IT"]//following::input)[1]    ${PriceIT}
    Fill Text    (//div[text() = "ES"]//following::input)[1]    ${PriceES}
    Fill Text    (//div[text() = "SK"]//following::input)[1]    ${PriceSK}
    Fill Text    (//div[text() = "PT"]//following::input)[1]    ${PricePT}
    Wait for x seconds    1s

Logistics Data
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//span[text() = "Quantity* (PC, max 50, no decimal):"]//following::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Gross weight* (KG, max 15, max 3 decimals):"]//following::input)[1]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container15")]//child::input    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Height of pallet* (CM, max 190 incl pallet):"]//following::input)[1]    ${PalletHeigth}
    Wait for x seconds    2s

Logistics Data Repeat
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//span[text() = "Quantity* (PC, max 50, no decimal):"]//following::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Gross weight* (KG, max 15, max 3 decimals):"]//following::input)[1]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Quantity* (PC) (no decimals):"]//following::input)[1]    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Height of pallet* (CM, max 190 incl pallet):"]//following::input)[1]    ${PalletHeigth}
    Wait for x seconds    2s
              
Logistics Data DI Check Quotation
        [Arguments]    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}  
    Fill Text    (//span[text() = "Quantity* (PC, max 50, no decimal):"]//following::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${BoxHeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Agreed pallet efficiency* (%):"]//following::input)[1]    ${AgreedPalletEff}
    Wait for x seconds    2s

Logistics Data DI SE1
    [Arguments]    ${GrossWeight}    ${PalletQty}    ${PalletHeight}
    Fill Text    (//span[text() = "Gross weight* (KG, max 15, max 3 decimals):"]//following::input)[1]    ${GrossWeight}
    Wait for x seconds    2s
    Fill Text    //div[contains(@class, "mx-name-container15")]//child::input    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Height of pallet* (CM, max 190 incl pallet):"]//following::input)[1]    ${PalletHeight}
    Wait for x seconds    1s        

Logistics Data DI SE1 Repeat
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//span[text() = "Quantity* (PC, max 50, no decimal):"]//following::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Gross weight* (KG, max 15, max 3 decimals):"]//following::input)[1]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-textBox17 mx-textbox form-group no-columns")]//child::input    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Height of pallet* (CM, max 190 incl pallet):"]//following::input)[1]    ${PalletHeigth}
    Wait for x seconds    2s

Logistics Data Change Request
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${InnerQty}    ${InnerWeight}    
    ...    ${InnerBoxLength}    ${InnerBoxWidth}    ${InnerBoxHeight}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//span[text() = "Quantity* (PC, max 50, no decimal):"]//following::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Gross weight* (KG, max 15, max 3 decimals):"]//following::input)[1]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${InnerQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Gross weight (KG, max 15, max 3 decimals):"]//following::input)[1]    ${InnerWeight}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[1]    ${InnerBoxLength}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[2]    ${InnerBoxWidth}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Box size* (L x W x H) in (CM):"]//following::input)[3]    ${InnerBoxHeight} 
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Quantity* (PC) (no decimals):"]//following::input)[1]    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//span[text() = "Height of pallet* (CM, max 190 incl pallet):"]//following::input)[1]    ${PalletHeigth}
    Wait for x seconds    2s

Input Text If Not Equal
    [Arguments]    ${locator}    ${expected_value}    ${label}    ${input}
    ${actual_value}    Get Text    ${locator}
    IF    '${actual_value}' != '${expected_value}'
        Mendix Text    ${label}    ${input}
    ELSE
        Skip   
    END    

VAT NAS BAE 
    [Arguments]    ${VATNL}    ${VATBE-VL}    ${VATBE-WL}    ${VATDE}    ${VATFR}    ${VATLU}
    ...    ${VATAT}    ${VATPL}    ${VATCZ}    ${VATIT}    ${VATES}    ${VATSK}    ${VATPT}
    Select Options By    (//div[contains(@class,  "col-lg-2 col-md-2 col")]//following::select)[1]    label    ${VATNL}
    Select Options By    (//div[text() = "BE-VL"]//following::select)[1]    label    ${VATBE-VL}
    Select Options By    (//div[text() = "BE-WL"]//following::select)[1]    label    ${VATBE-WL}
    Select Options By    (//div[text() = "DE"]//following::select)[1]    label    ${VATDE}
    Select Options By    (//div[text() = "FR"]//following::select)[1]    label    ${VATFR}
    Select Options By    (//div[text() = "LU"]//following::select)[1]    label   ${VATLU}
    Select Options By    (//div[text() = "AT"]//following::select)[1]    label    ${VATAT}
    Select Options By    (//div[text() = "PL"]//following::select)[1]    label    ${VATPL}
    Select Options By    (//div[text() = "CZ"]//following::select)[1]    label    ${VATCZ}
    Select Options By    (//div[text() = "IT"]//following::select)[1]    label    ${VATIT}
    Select Options By    (//div[text() = "ES"]//following::select)[1]    label    ${VATES}
    Select Options By    (//div[text() = "SK"]//following::select)[1]    label    ${VATSK}
    Select Options By    (//div[text() = "PT"]//following::select)[1]    label    ${VATPT}
    Wait for x seconds    1s