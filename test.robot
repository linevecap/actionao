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

Library    BuiltIn

# Suite Setup     Go to the Dev environment
# Test Setup      
# Test Teardown     Log out
    
*** Test Cases ***

Happy domestic create flow

    Start New Onboarding    buyerdev    xGk<6Of    Test Automation article 05/10    Meeki BV    10000    10    Season    Halloween    2023    oktober    100    12
    Supplier Enrichment 1    supplier1dev    E~K5fKT    No    Test Automation RuleZ!    10    7    5    5    5    1    LTR    China    Testnr    26-10-2023    Natural fabric    Cotton    100    Not Applicable
    Buying Enrichment    ba1dev    o\]4I>;f    Test Automation article 09/10 NL    2    4    6    8    10    12    11    9    10    10    7    5    5
    Buyer Approval    buyerdev    xGk<6Of    
    # Supplier Enrichment 2    supplier1dev    E~K5fKT    No    22042123    50    9    7    3    4    500    190    
    # Final Check ComOps    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids   

Happy domestic repeat flow

    Start New Onboarding repeat flow    buyerdev    xGk<6Of    2568955    Meeki BV    10000    10    2023    oktober   
    Supplier Enrichment 1 repeat flow    supplier1dev    E~K5fKT    No    Test Automation RuleZ!    Testnr    26-10-2023    No    20    2,124    10,213    15,15    20,212    420    190    Food    Fish    100    ASC        
    Buying Enrichment repeat flow    ba1dev    o\]4I>;f    
    Buyer Approval    buyerdev    xGk<6Of
    # Final Check ComOps repeat flow    comopsdev    TM1Gv~s

Happy direct import create flow
    
    Check Quotation DI create flow    tree.jpg    Test Automation DI article 06/10    BANATOYS CO.,LIMITED    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    10-11-2023    50    10    10    10    5
    Review Quotation DI create flow    december    500
    # Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable
    # Validate Classification    
    # Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10    10    10    10
    # Hedging DI create/repeat flow
    # Supplier Enrichment 2 DI create flow    No    
    # Final Check ComOps DI create flow    Adidas    1450 - Highly flammable solids        

Happy direct import repeat flow
    
    Check Quotation DI repeat flow    2568955    tree.jpg    fleuril    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    50    10    10    10    5
    # Review Quotation DI repeat flow    2023    september    10000
    # Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    40    2,4    10    15    20    400    190    Natural fabric    Cotton    100    Not Applicable
    # Validate Classification 
    # Buying Enrichment DI repeat flow    
    # Hedging DI create/repeat flow
    # Final Check ComOps DI repeat flow

Regression test create domestic QAS
    Start New Onboarding QAS    buyer1@action.nl    9nT\[7cV    ferrero nutella biscuits 304 g    Kapimex B.V.    4000    2,13    In/Out    Personal Care    Health & Other Cosmetics    010101    augustus    10000    10
    Supplier Enrichment 1 QAS    contact@supplier1.abc    s3O$M@|    No    Test Test Test    0,038    0,032    21,5    17,5    7,5    0,032    KG    France    110    Regressie    19-08-2023    Food    Palm oil    100    Not Applicable
    # HOB Approval    hob@action.nl    Wh<9QUr  
    # Buying Enrichment QAS    buyer1@action.nl    9nT\[7cV    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    5,99    
    # Supplier Enrichment 2 QAS    contact@supplier1.abc    s3O$M@|    No    19053191    20    4,822    21,82    29    32,154    640    190  
    # Final Check ComOps    comops@action.nl    58l\]tIr    Adidas    1510 - Storage of combustible materials, products or substances in covered warehouses   

Regression test repeat domestic QAS
    Start New Onboarding repeat flow QAS    buyer1@action.nl    9nT\[7cV    2568955    Kapimex B.V.    1000    1,4820    augustus   
    Supplier Enrichment 1 repeat flow QAS    contact@supplier1.abc    s3O$M@|    No    Test Automation RuleZ!    regressie repeat    30-08-2023    Already provided    Other    Other    100    Not applicable        
    # Buying Enrichment repeat flow QAS    buyer1@action.nl    9nT\[7cV    3,49
    # Final Check ComOps repeat flow    comops@action.nl    58l\]tIr

Change Portal
    Start a change request
    Buying Assistent Change Approval
    HoB Change Approval
    Director Change Approval

Nas Create Flow Domestic
    Start Onboarding NAS Create    buyerdev    xGk<6Of    Meeki BV    Test Automation 09/10    10000    10    Stocklots    oktober    100    6 
    Supplier Enrichment NAS Create    supplier1dev    E~K5fKT    Test Automation RuleZ!    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-10-2023
    Buying Enrichment NAS create flow    10    10    10    10    10    10    10    10    10    10    10    10    10
    # Supplier Enrichment 2 NAS Create    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190
    # Final Check ComOps NAS Create    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids

NAS Repeat Flow Domestic
    Start Onboarding NAS Repeat    buyerdev    xGk<6Of    Meeki BV    10000    10    Flavour    2023    oktober    100    6      10    10    10    10    10    10    10    10    10    10    10    10    10    
    Supplier Enrichment NAS Repeat    supplier1dev    E~K5fKT    Test Automation RuleZ!    1    LTR    Testnr    29-10-2023
    # Buying Enrichment NAS Repeat flow  
    # Supplier Enrichment 2 NAS Repeat    supplier1dev    E~K5fKT    No    2204212300    50    9    7    3    4    500    190   
    # Final Check ComOps NAS Repeat    comopsdev    TM1Gv~s    Adidas    1450 - Highly flammable solids 

Nas Create Flow Domestic QAS
    Start Onboarding NAS Create QAS    buyer1@action.nl    9nT\[7cV    Kapimex B.V.    Test Automation 03/10    10000    10    Stocklots    oktober    100    6 
    # Supplier Enrichment NAS Create QAS    contact@supplier1.abc    s3O$M@|    Test Automation RuleZ!    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    29-10-2023
    # Buying Enrichment NAS create flow QAS    10    10    10    10    10    10    10    10    10    10    10    10    10
    # Supplier Enrichment 2 NAS Create QAS    contact@supplier1.abc    s3O$M@|    No    2204212300    50    9    7    3    4    500    190

NAS Create Flow Direct Import
    Start Onboarding NAS Create DI    buyerdev    xGk<6Of    Mattel Brands    Test Automation 6/9    10000    11    Stocklots    september    100    12
    Supplier Enrichment NAS Create    sourcingagentdev    5lC(i)R@=9g?    Test Automation RuleZ!    1    LTR    Germany    5    4    10    10    10    Food    Palm oil    100    Not Applicable    Testnr    19-09-2023
    Buying Enrichment NAS create flow    10    10    10    10    10    10    10    10    10    10    10    10    10    
    