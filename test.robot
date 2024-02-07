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
Resource    NAS Create Flow DI/reviewQuotationNasCreate.resource
Resource    NAS Create Flow DI/checkQuotationCreate.resource
Resource    NAS Create Flow DI/HobApprovalDI.resource
Resource    NAS Create Flow DI/checkQuotationCreate.resource
Resource    NAS Create Flow DI/checkQuotationCreateQAS.resource
Resource    NAS Create Flow DI/reviewQuotationCreateQAS.resource
Resource    NAS Create Flow DI/HobApprovalDIQAS.resource
Resource    NAS Create Flow DI/SE1DIQAS.resource
Resource    NAS Create Flow DI/HedgingDIQAS.resource
Resource    NAS Create Flow DI/ValidateClassigcationCreateQAS.resource
Resource    NAS Create Flow DI/buyingEnrichementDIQAS.resource
Resource    NAS Create Flow DI/SE1DI.resource
Resource    NAS Create Flow Domestic/HOBApprovalNASCreate.resource
Resource    NAS Create Flow Domestic/directorApprovalNASCreate.resource
Resource    NAS Create Flow Domestic/juniorBuyerApprovalNAS.resource
Resource    NAS Create Flow Domestic/startOnboardingNASCreateDevelopmentItem.resource
Resource    NAS Create Flow Domestic/SE1NASCreateDevelopmentitem.resource
Resource    NAS Create Flow DI/HedgingDI.resource
Resource    NAS Create Flow DI/ValidateClassigcationCreateQAS.resource
Resource    NAS Create Flow DI/reviewQuatatonCreateDevelopmentItem.resource
Resource    NAS Create Flow DI/SE1DIDevelopmentItem.resource
Resource    NAS Create Flow DI/buyingEnrichmentDI.resource

Library    BuiltIn

# Suite Setup     Go to the Dev environment
# Test Setup      
# Test Teardown     Log out
    
*** Test Cases ***

Happy domestic create flow

    # Start New Onboarding    buyerdev    xGk<6Of    Linda regressie    Meeki BV    10000    10    Season    Halloween    2024    februari    2024    25    100    12
    Supplier Enrichment 1    supplier1dev    E~K5fKT    No    Linda regressie    10    7    5    5    5    1    LTR    China    Testnr    01-04-2024    Natural fabric    Cotton    100    Not Applicable
    Buying Enrichment    ba1dev    o\]4I>;f    Linda regressie    2    4    6    8    10    12    11    9    10    10    7    5    5
    Buyer Approval    buyerdev    xGk<6Of    
    # Supplier Enrichment 2    supplier1dev    E~K5fKT    No    22042123    50    9    7    3    4    500    190    
    # Final Check ComOps    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids   

Happy domestic repeat flow

    # Start New Onboarding repeat flow    buyerdev    xGk<6Of    2568955    Meeki BV    10000    10    maart    2024    10   
    # Supplier Enrichment 1 repeat flow    supplier1dev    E~K5fKT    No    Linda regressie    Testnr    01-04-2024    No    20    2,124    10,213    15,15    20,212    420    190    Food    Fish    100    ASC        
    # Buying Enrichment repeat flow    ba1dev    o\]4I>;f    
    Buyer Approval    buyerdev    xGk<6Of
    Final Check ComOps repeat flow    comopsdev    TM1Gv~s

Happy direct import create flow
    
    # Check Quotation DI create flow    tree.jpg    DI contract create   BANATOYS CO.,LIMITED    5000    3,15    China    2836200000    12    14    Bombay    Linda regressie    10    10    10    14-07-2024    50    10    10    10    5
    # Review Quotation DI create flow    augustus    2024    04    4000
    # Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable
    # Hedging DI create/repeat flow
    # Validate Classification    
    Buying Enrichment DI create flow    DI contract create    10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 DI create flow    No    
    Final Check ComOps DI create flow    Adidas    1450 - Highly flammable solids        

Happy direct import repeat flow
    
    Check Quotation DI repeat flow    2568955    tree.jpg    fleuril    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    50    10    10    10    5
    Review Quotation DI repeat flow    mei    2024    12    10000
    Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    40    2,4    10    15    20    400    190    Natural fabric    Cotton    100    Not Applicable
    Hedging DI create/repeat flow
    Validate Classification 
    Buying Enrichment DI repeat flow    
    Final Check ComOps DI repeat flow

Change Portal
    Start a change request
    # Buying Assistent Change Approval
    # HoB Change Approval
    # Director Change Approval

NAS Create Flow Domestic
    Start Onboarding NAS Create    buyerdev    xGk<6Of    Meeki BV    bug BA    EUR    10000    11    Stocklots    maart    2024    31    100    6 
    # Start Onboarding NAS Create FU    buyerdev    xGk<6Of    Meeki BV    Linda regressie    EUR    10    Fixed Unlimited    februari    2024    25    100    6 
    Supplier Enrichment NAS Create    supplier1dev    E~K5fKT    bug BA bug BA      1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-06-2024
    # Buying Enrichment NAS create flow    due date HOB     10    10    10    10    10    10    10    10    10    10    10    10    10
    # Supplier Enrichment 2 NAS Create    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190
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
    # Start Onboarding NAS Create QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Linda 1 ENG   EUR    10000    1    Stocklots    februari    2024    25    100    6 
    # Start Onboarding NAS Create FU QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Linda test QAS    EUR    10    Fixed Unlimited    december    2023    24    100    6 
    # Supplier Enrichment NAS Create QAS    contact@supplier1.abc    s3O$M@|    Linda 7/2 regressie    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-11-2023
    Buying Enrichment NAS create flow QAS    Linda 7/2 regressie NL    10    10    10    10    10    10    10    10    10    10    10    10    10
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
    # Supplier Enrichment NAS Create    contact@supplier1.abc    s3O$M@|    NAS article Hazardous2 31/10     1    LTR    Germany    5    4    10    10    10    Dissipative chemical    Other gas    100    Not Applicable    Testnr    29-11-2023
    # Supplier Enrichment 1 NAS Developtment Item QAS    contact@supplier1.abc    s3O$M@|    epc 4521 development     1    LTR    Germany    5    4,13    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-12-2023
    Buying Enrichment NAS create flow QAS    epc 4521 development   10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 NAS Create QAS    contact@supplier1.abc    s3O$M@|    2204212300    No    50    9    7    3    4    500    190

NAS Create Deposit article QAS
    Start Onboarding NAS Deposit QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Linda test deposit     15000    EUR    10    Stocklots    100    februari    2024    25    100    6 

NAS Create Direct Import
    Check Quotation create    sun.png    Linda due date  BANATOYS CO.,LIMITED    100000    11    China    2836200000    12    14    Bombay    Linda due date 1    10    10    10    01-09-2024    50    10    10    10    10    5
    # Review Quotation Nas Create    Stocklots    februari    2024    25    500    10
    Supplier Enrichment Direct Import    sourcingagentdev    5lC(i)R@=9g?    1    LTR    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-11-2024
    HOB Approval DI    hobdev    A:B51gC
    # Hedging DI
    Validate Classification
    Buying Enrichment DI create flow    Linda due date    10    10    10    10    10    10    10    10    10    10    10    10    10


NAS Create Direct Import Development Item
    # Check Quotation create    sun.png    Linda DI 2  BANATOYS CO.,LIMITED    100000    11    China    2836200000    12    14    Bombay    Linda due date 1    10    10    10    01-09-2024    50    10    10    10    10    5
    # Review Quotation Nas Create Development Item    Stocklots    februari    2024    25    500    10
    # Supplier Enrichment Direct Import Development Item    sourcingagentdev    5lC(i)R@=9g?    1    LTR    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-11-2024
    # HOB Approval DI    hobdev    A:B51gC
    # Hedging DI
    # Validate Classification
    # Buying Enrichment DI    Linda due date    10    10    10    10    10    10    10    10    10    10    10    10    10
    Supplier Enrichment 2 NAS Create    sourcingagentdev    5lC(i)R@=9g?    No    2204212300    50    9    7    3    4    500    190
    # Buyer Approval    buyerdev    xGk<6Of
    # Final Check ComOps    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids

NAS Create Direct Import QAS    
    # Check Quotation create QAS    sun.png    Linda SAP block  Banatoys    10000    1    China    2836200000    12    14    Fuzhou    Linda hedging article 5    10    10    10    14-07-2024    50    10    10    10    10    5  
    # Review Quotation Create QAS    Stocklots    februari    2024    25    500    10
    HOB Approval DI QAS    hob@action.nl    Wh<9QUr
    Supplier Enrichment Direct Import QAS    sourcingagent@action.nl    0G_yAB9    1    LTR    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-11-2023
    Hedging DI QAS
    Validate Classification QAS
    Buying Enrichment DI QAS    Linda SAP    10    10    10    10    10    10    10    10    10    10    10    10    10

NAS Create eCom
    Start Onboarding NAS Create    buyer3@action.nl    6,K&f>r    Meeki BV    test eCom 50000 4    EUR    50000    11    Stocklots    maart    2024    31    100    6
    Supplier Enrichment NAS Create    supplier1dev    E~K5fKT    test eCom test 4     1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-12-2023
    Buying Enrichment NAS create flow    test eCom test 4     10    10    10    10    10    10    10    10    10    10    10    10    10
    HOB Approval NAS Create    hobdev    A:B51gC
    # director Approval NAS Create    buyingdirectordev    bb}Z7Z.
    Supplier Enrichment 2 NAS Create    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190
    Final Check ComOps NAS Create    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids

NAS Create Junior Buyer
    Start Onboarding NAS Create    jrbuyerdev    s9H;-&E    Meeki BV    2 jr buyer approval    EUR    10000    20    Stocklots    maart    2024    31    100    6
    Junior Buyer Approval NAS Create    buyerdev    xGk<6Of

NAS Create Development Item
    # Start Onboarding NAS Development Item    buyerdev    xGk<6Of    Meeki BV    linda development     10000    EUR    10    Stocklots    februari    2024    25    100    6 
    # Supplier Enrichment NAS Create    supplier1dev    E~K5fKT    test eCom test 4     1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-12-2023
    Supplier Enrichment 1 NAS Developtment Item    supplier1dev    E~K5fKT    linda development     1    LTR    Germany    5    4,13    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-06-2024

    


