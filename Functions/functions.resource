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
    # Fill Text    (//label[text() = "${label}"]/following::input[1])[${occurrence}]    ${input}

Mendix Dropdown Extended
    [Arguments]    ${label}    ${value}    
    Click    (//label[text() = "${label}"]/following::span[text() = "Select an item from the dropdown.."])[1]
    Fill Text    //label[text() = "${label}"]/following::span[contains(@class, "search")]/input    ${value}    
    Click    //label[text() = "${label}"]/following::span[contains(@class, "results")]//div[text() = "${value}"]

Mendix Task Inbox
    [Arguments]    ${index}
    Click    (//div[@class = "tr"])[${index}]    

NAS Task Inbox
    [Arguments]    ${task}
    Click    (//span[text() = "${task}"])[1]

Mendix Click Material  
    [Arguments]    ${materials}    ${specificMaterial}    ${percentage}    ${certificate}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[1]    label    ${materials}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[2]    label    ${specificMaterial}
    Fill Text    (//li[contains(@class, "index-0")]//child::input)[5]    ${percentage}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[3]    label    ${certificate}

Mendix Click Material QAS  
    [Arguments]    ${materials}    ${specificMaterial}    ${percentage}    ${certificate}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[1]    label    ${materials}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[2]    label    ${specificMaterial}
    Fill Text    input.form-control[value='0,0']    ${percentage}
        # (//li[contains(@class, "index-0")]//child::input)[1]            
    # (//li[contains(@class, "index-0")]//div[contains(@class, "mx-name-textBox1 mx-textbox form-group no-columns")]//child::input)[1]
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[3]    label    ${certificate}

Mendix Click Material repeat flow
    [Arguments]    ${materials}    ${specificMaterial}    ${percentage}    ${certificate}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[1]    label    ${materials}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[2]    label    ${specificMaterial}
    Fill Text    (//li[contains(@class, "index-0")]//child::input)[4]    ${percentage}
    Select Options By    (//li[contains(@class, "index-0")]//child::select)[3]    label    ${certificate}
    
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

Save Language        
    Click    button.mx-name-selectButton1
    
Deselect N/A Language
    Click    tr.mx-name-index-6
    # Click    tr.mx-name-index-5
    # Click    tr.mx-name-index-4

Deselect N/A Language QAS
    Click    tr.mx-name-index-7

Click Calender
    [Arguments]    ${date}
    # Click    //div[contains(@class, "mx-name-datePicker1")]//following::button
    Click    .glyphicon-calendar
    # Click    //button[contains(@class, "mx-calendar-month-next")]//child::span
    Click    [aria-label='${date}']

Click Calender 2
    [Arguments]    ${date}
    # Click    //div[contains(@class, "mx-name-datePicker1")]//following::button
    Click    .glyphicon-calendar
    Click    //button[contains(@class, "mx-calendar-month-next")]//child::span
    Click    [aria-label='${date}']

Click Calender New Widget
    [Arguments]    ${Month}
    Select Options By    (//div[contains(@class, "react-datepicker")]//following::select)[1]    label    ${Month}
    Click    (//div[contains(@class, "react-datepicker")]//following::div[contains(@class, "day--weekend")])[8]

Fill EAN
    [Arguments]    ${EAN} 
    Fill Text    (//li[contains(@class, "mx-name-index-0")]//child::input)[1]    ${EAN}    
    Fill Text    (//li[contains(@class, "mx-name-index-0")]//child::input)[2]    Test 

Fill Random EAN
    ${EAN}    FakerLibrary.Ean 13      
    Fill Text    (//li[contains(@class, "mx-name-index-0")]//child::input)[1]    ${EAN}    
    Fill Text    (//li[contains(@class, "mx-name-index-0")]//child::input)[2]    Test 
    
Fill Product Description
    [Arguments]    ${label}    ${input}    
    Fill Text    (//label[text() = "${label}"]/following::textarea[1])    ${input}

Click Brick           
    Click    //div[contains(@class, "col-lg-auto col-md col")]//child::button
    Click    (//li[contains(@class, "mx-name-index-0")]//div[contains(@class, "mx-name-textBox2")])[2]
    # Click    (//li[contains(@class, "mx-name-index-0")])[4]

Selling Price
    [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}    ${PricePT}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[1]    ${PriceNL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[3]    ${PriceBE-VL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[5]    ${PriceBE-WL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[7]    ${PricDE}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[9]    ${PricFR}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[11]   ${PricLU}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[13]    ${PricAT}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[19]    ${PriceIT}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[21]    ${PriceES}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[23]    ${PriceSK}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[25]    ${PricePT}
    Wait for x seconds    1s

Selling Price QAS
    [Arguments]    ${PriceNL}    ${PriceBE-VL}    ${PriceBE-WL}    ${PricDE}    ${PricFR}    ${PricLU}
    ...    ${PricAT}    ${PriceIT}    ${PriceES}    ${PriceSK}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[2]    ${PriceNL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[5]    ${PriceBE-VL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[8]    ${PriceBE-WL}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[10]    ${PricDE}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[12]    ${PricFR}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[14]   ${PricLU}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[16]    ${PricAT}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[22]    ${PriceIT}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[24]    ${PriceES}
    Fill Text    (//div[contains(@class, "mx-dataview mx-name-dataView5 form-horizontal")]//following::input)[26]    ${PriceSK}
    Wait for x seconds    1s    

Logistics Data
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[2]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[3]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[4]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[5]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[11]    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[13]    ${PalletHeigth}
    Wait for x seconds    2s
              
Logistics Data DI Check Quotation
        [Arguments]    ${CartonQty}    ${BoxLength}    ${BoxWidth}    ${BoxHeight}    ${AgreedPalletEff}  
    Fill Text    //div[contains(@class, "mx-name-container15")]//child::input    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container17")]//child::input    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container18")]//child::input    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container19")]//child::input    ${BoxHeight}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container26")]//child::input    ${AgreedPalletEff}
    Wait for x seconds    2s

Logistics Data DI SE2
    [Arguments]    ${GrossWeight}    ${PalletQty}    ${PalletHeight}
    Fill Text    //div[contains(@class, "mx-name-container13")]//child::input    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container15")]//child::input    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    //div[contains(@class, "mx-name-container19")]//child::input    ${PalletHeight}
    Wait for x seconds    1s        

Logistics Data DI repeat SE2
    [Arguments]    ${GrossWeight}    ${PalletQty}    ${PalletHeight}
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//following::input)[2]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//following::input)[11]    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//following::input)[13]    ${PalletHeight}
    Wait for x seconds    1s

Logistics Data Change Request
    [Arguments]    ${CartonQty}    ${GrossWeight}    ${BoxLength}    ${BoxWidth}    ${BoxHeigth}    ${InnerQty}    ${InnerWeight}    
    ...    ${InnerBoxLength}    ${InnerBoxWidth}    ${InnerBoxHeight}    ${PalletQty}    ${PalletHeigth}    
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[1]    ${CartonQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[2]    ${GrossWeight}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[3]    ${BoxLength}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[4]    ${BoxWidth}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[5]    ${BoxHeigth}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[6]    ${InnerQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[7]    ${InnerWeight}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[8]    ${InnerBoxLength}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[9]    ${InnerBoxWidth}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[10]    ${InnerBoxHeight} 
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[11]    ${PalletQty}
    Wait for x seconds    1s
    Fill Text    (//div[contains(@class, "mx-name-container1 article-logistics-data")]//child::input)[13]    ${PalletHeigth}
    Wait for x seconds    2s
