*** Settings ***
Resource        Homepage/homepage.resource
Resource        Functions/functions.resource
Resource    Domestic Create Flow/startOnboarding.resource
Resource    Domestic Create Flow/startOnboardingQAS.resource
Resource    Domestic Create Flow/SE1.resource
Resource    Domestic Create Flow/SE1QAS.resource
Resource    Domestic Create Flow/buyingEnrichment.resource
Resource    Domestic Create Flow/buyingEnrichmentQAS.resource
Resource    Domestic Create Flow/SE2.resource
Resource    Domestic Create Flow/SE2QAS.resource
Resource    Domestic Create Flow/HOBapproval.resource
Resource    Domestic Create Flow/finalCheck.resource
Resource    Domestic Repeat Flow/startRepeatOnboarding.resource
Resource    Domestic Repeat Flow/startRepeatOnboardingQAS.resource
Resource    Domestic Repeat Flow/SE1.resource
Resource    Domestic Repeat Flow/SE1QAS.resource
Resource    Domestic Repeat Flow/buyingEnrichment.resource
Resource    Domestic Repeat Flow/buyingEnrichmentQAS.resource
Resource    Domestic Repeat Flow/finalCheck.resource
Resource    Direct Import Create Flow/checkQuotation.resource
Resource    Direct Import Create Flow/reviewQuotation.resource
Resource    Direct Import Create Flow/SE1.resource
Resource    Direct Import Create Flow/buyingEnrichment.resource
Resource    Direct Import Create Flow/hedging.resource
Resource    Direct Import Create Flow/SE2.resource
Resource    Direct Import Create Flow/finalCheck.resource
Resource    Direct Import Repeat Flow/checkQuotation.resource
Resource    Direct Import Repeat Flow/reviewQuotation.resource
Resource    Direct Import Repeat Flow/SE1.resource
Resource    Direct Import Repeat Flow/buyingEnrichment.resource
Resource    Direct Import Repeat Flow/finalCheck.resource
Resource    Change Portal/startChangeRequest.resource
Resource    Change Portal/BaApproval.resource
Resource    Change Portal/HoBApproval.resource
Resource    Change Portal/DirectorApproval.resource
Resource    NAS Create Flow Domestic/startOnboardingNAS.resource
Resource    NAS Create Flow DI/startOnboardingNasDI.resource
Resource    NAS Create Flow Domestic/SE1NAScreate.resource
Resource    Domestic Create Flow/buyerApproval.resource
Resource    NAS Create Flow Domestic/startOnboardingNASQAS.resource
Resource    Direct Import Create Flow/validateClassification.resource
Resource    NAS Create Flow Domestic/buyingEnrichmentNASCreate.resource
Resource    NAS Repeat Flow Domestic/startOnboardingNASRepeat.resource
Resource    NAS Repeat Flow Domestic/buyingEnrichmentNASRepeat.resource
Resource    NAS Repeat Flow Domestic/SE1NASrepeat.resource
Resource    NAS Create Flow Domestic/SE2NAScreate.resource
Resource    NAS Create Flow Domestic/finalCheckNAScreate.resource
Resource    NAS Repeat Flow Domestic/SE2NASrepeat.resource
Resource    NAS Repeat Flow Domestic/finalCheckNASrepeat.resource
Resource    NAS Create Flow Domestic/SE1NAScreateQAS.resource 
Resource    NAS Create Flow Domestic/buyingEnrichmentNASCreateQAS.resource
Resource    NAS Create Flow Domestic/SE2NAScreateQAS.resource
Resource    NAS Create Flow Domestic/startOnboardingNASFU.resource
Resource    NAS Create Flow Domestic/startOnboardingNASFUQAS.resource
Resource    NAS Create Flow Domestic/finalCheckNAScreateQAS.resource
Resource    NAS Create Flow Domestic/startOnboardingNASQASAssorti.resource
Resource    NAS Create Flow Domestic/SE1NAScreateQASAssorti.resource
Resource    NAS Create Flow Domestic/SE2NAScreateQASHazardous.resource
Resource    NAS Create Flow Domestic/finalCheckNAScreateHazardous.resource
Resource    NAS Create Flow Domestic/startOnboardingNAScreateDevelopmentItemQAS.resource
Resource    NAS Create Flow Domestic/SE1NASCreateDevelopmentItemQAS.resource
Resource    NAS Create Flow Domestic/startOnboardingNAScreateDepositQAS.resource

Library    BuiltIn

# Suite Setup     Go to the Dev environment
# Test Setup      
# Test Teardown     Log out
    
*** Test Cases ***

Happy domestic create flow

    Start New Onboarding    buyerdev    xGk<6Of    2 Linda test 4534    Meeki BV    10000    10    Season    Halloween    2024    februari    2024    25    100    12
    Supplier Enrichment 1    supplier1dev    E~K5fKT    No    2 Linda test 4534    10    7    5    5    5    1    LTR    China    Testnr    26-12-2023    Natural fabric    Cotton    100    Not Applicable
    Buying Enrichment    ba1dev    o\]4I>;f    2 Linda test 4534    2    4    6    8    10    12    11    9    10    10    7    5    5
    Buyer Approval    buyerdev    xGk<6Of    
    # Supplier Enrichment 2    supplier1dev    E~K5fKT    No    22042123    50    9    7    3    4    500    190    
    # Final Check ComOps    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids   

Happy domestic repeat flow

    Start New Onboarding repeat flow    buyerdev    xGk<6Of    2568955    Meeki BV    10000    10    december    2023    24   
    Supplier Enrichment 1 repeat flow    supplier1dev    E~K5fKT    No    Test Automation RuleZ!    Testnr    26-12-2023    No    20    2,124    10,213    15,15    20,212    420    190    Food    Fish    100    ASC        
    Buying Enrichment repeat flow    ba1dev    o\]4I>;f    
    Buyer Approval    buyerdev    xGk<6Of
    Final Check ComOps repeat flow    comopsdev    TM1Gv~s

Happy direct import create flow
    
    Check Quotation DI create flow    tree.jpg    3.1 linda epc 4523   BANATOYS CO.,LIMITED    5000    3,15    China    2836200000    12    14    Bombay    3.1 Linda epc 4523    10    10    10    14-07-2024    50    10    10    10    5
    Review Quotation DI create flow    augustus    2024    11    4000
    # Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable
    # Hedging DI create/repeat flow
    # Validate Classification    
    # Buying Enrichment DI create flow    Test Automation DI article    10    10    10    10    10    10    10    10    10    10    10    10    10
    # Supplier Enrichment 2 DI create flow    No    
    # Final Check ComOps DI create flow    Adidas    1450 - Highly flammable solids        

Happy direct import repeat flow
    
    Check Quotation DI repeat flow    2568955    tree.jpg    fleuril    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    50    10    10    10    5
    Review Quotation DI repeat flow    mei    2024    12    10000
    # Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    40    2,4    10    15    20    400    190    Natural fabric    Cotton    100    Not Applicable
    # Hedging DI create/repeat flow
    # Validate Classification 
    # Buying Enrichment DI repeat flow    
    # Final Check ComOps DI repeat flow

Change Portal
    Start a change request
    # Buying Assistent Change Approval
    # HoB Change Approval
    # Director Change Approval

NAS Create Flow Domestic
    Start Onboarding NAS Create    buyerdev    xGk<6Of    Meeki BV    Linda test SAP timestamp    EUR    10000    10    Stocklots    februari    2024    25    100    6 
    # Start Onboarding NAS Create FU    buyerdev    xGk<6Of    Meeki BV    Linda test FU qty 1000    EUR    10    Fixed Unlimited    februari    2024    25    100    6 
    Supplier Enrichment NAS Create    supplier1dev    E~K5fKT    Linda test SAP timestamp     1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-12-2023
    Buying Enrichment NAS create flow    Linda test SAP timestamp    10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 NAS Create    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190
    # Final Check ComOps NAS Create    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids

NAS Repeat Flow Domestic
    Start Onboarding NAS Repeat    buyerdev    xGk<6Of    Meeki BV    10000    5    Flavour    2023    november    2023    12    6      10    10    10    10    10    10    10    10    10    10    10    10    10    
    Supplier Enrichment NAS Repeat    supplier1dev    E~K5fKT    Test Automation RuleZ!    1    LTR    Testnr    29-12-2023
    Buying Enrichment NAS Repeat flow  
    # Supplier Enrichment 2 NAS Repeat    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190   
    # Final Check ComOps NAS Repeat    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids 

NAS Create Flow Direct Import
    # Start Onboarding NAS Create DI    buyerdev    xGk<6Of    Mattel Brands    DI Linda test sap block    10000    11    Stocklots    september    2023    12    100    12
    Supplier Enrichment NAS Create    sourcingagentdev    5lC(i)R@=9g?    DI Linda test sap block    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-09-2023
    Buying Enrichment NAS create flow   DI Linda test sap block   10    10    10    10    10    10    10    10    10    10    10    10    10    

NAS Create Flow Domestic QAS
    # Start Onboarding NAS Create QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    2 Linda logistic data    EUR    10000    10    Stocklots    februari    2024    25    100    6 
    # Start Onboarding NAS Create FU QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Linda test QAS    EUR    10    Fixed Unlimited    december    2023    24    100    6 
    # Supplier Enrichment NAS Create QAS    contact@supplier1.abc    s3O$M@|    2 Linda logistic data    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-11-2023
    Buying Enrichment NAS create flow QAS    2 Linda logistic data    10    10    10    10    10    10    10    10    10    10    10    10    10
    # Supplier Enrichment 2 NAS Create QAS    contact@supplier1.abc    s3O$M@|    No    2204212300    50    9    7    3    4    500    190
    # Final Check ComOps NAS Create QAS    comops@action.nl    58l\]tIr    Adidas    1450 - Highly flammable solids

NAS Create Assorti Article QAS
    Start Onboarding NAS Create Assorti QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Test Assorti Automation 19/12    EUR    10000    10    Stocklots    Assorti    december    2023    24    100    6 
    Supplier Enrichment NAS Create Assorti QAS    contact@supplier1.abc    s3O$M@|    Test Automation RuleZ!    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    TestVDC1    TestVDC2    TestVDC3    TestVDC1.2    TestVDC2.2    TestVDC3.2    TestVDC1.3    TestVDC2.3    TestVDC3.3    Testnr    29-11-2023
    Buying Enrichment NAS create flow QAS    Test Automation    10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 NAS Create QAS    contact@supplier1.abc    s3O$M@|    No    2204212300    50    9    7    3    4    500    190
    Final Check ComOps NAS Create QAS    comops@action.nl    58l\]tIr    Adidas    1450 - Highly flammable solids

 Nas Create Hazardous article QAS
    Start Onboarding NAS Create QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    NAS article Hazardous2 31/10    15000    EUR    10    Stocklots    november    2023    12    100    6
    Supplier Enrichment NAS Create    contact@supplier1.abc    s3O$M@|    NAS article Hazardous2 31/10     1    LTR    Germany    5    4    10    10    10    Dissipative chemical    Other gas    100    Not Applicable    Testnr    29-11-2023
    Buying Enrichment NAS create flow QAS    NAS article Hazardous2 31/10    10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 Hazardous Create QAS    contact@supplier1.abc    s3O$M@|    No    2204212300    2. Gases    50    9    7    3    4    500    190
    Final Check Hazardous NAS Create QAS    comops@action.nl    58l]tIr    Adidas    Cartonized Candles    AEROSOL    1450   

Nas Create Development Item QAS
    Start Onboarding NAS Development Item QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    linda development     10000    EUR    10    Stocklots    februari    2024    25    100    6 
    Supplier Enrichment NAS Create    contact@supplier1.abc    s3O$M@|    NAS article Hazardous2 31/10     1    LTR    Germany    5    4    10    10    10    Dissipative chemical    Other gas    100    Not Applicable    Testnr    29-11-2023
    # Supplier Enrichment 1 NAS Developtment Item QAS    contact@supplier1.abc    s3O$M@|    epc 4521 development     1    LTR    Germany    5    4,13    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-12-2023
    Buying Enrichment NAS create flow QAS    epc 4521 development   10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 NAS Create QAS    contact@supplier1.abc    s3O$M@|    2204212300    No    50    9    7    3    4    500    190

NAS Create Deposit article QAS
    Start Onboarding NAS Deposit QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Linda     15000    10    Stocklots    100    november    2023    12    100    6 