*** Settings ***
Resource        Homepage/homepage.resource
Resource        Functions/functions.resource
Resource    Direct Import Repeat Flow/reviewQuotation copy.resource
Resource    Direct Import Create Flow/reviewQuotation copy.resource
Resource    Domestic Repeat Flow/startRepeatOnboarding copy.resource
Resource    Domestic Create Flow/startOnboarding copy.resource
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

# Suite Setup     Go to the Dev environment
# Test Setup      
# Test Teardown     Log out

*** Test Cases ***

# Happy direct import create flow
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    20-05-2023    50    10    10    10    5
#     Review Quotation DI create flow    07-05-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No     

# Happy direct import create flow 2
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    06-05-2023    50    10    10    10    5
#     Review Quotation DI create flow    07-05-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No    
 

# Happy direct import create flow
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    11-06-2023    50    10    10    10    5
#     Review Quotation DI create flow 2    11-06-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No    

# Happy direct import create flow
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    21-05-2023    50    10    10    10    5
#     Review Quotation DI create flow 2    21-05-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No    

# Happy direct import create flow
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    28-05-2023    50    10    10    10    5
#     Review Quotation DI create flow 2    28-05-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No    

# Happy direct import create flow
    
#     Check Quotation DI create flow    tree.jpg    Test Automation DI article 21/4    PLAYGO TOYS ENTERPRISES LTD.    10000    10    China    2836200000    12    14    Bombay    Test Automation RuleZ!    10    10    10    04-06-2023    50    10    10    10    5
#     Review Quotation DI create flow 2    04-06-2023    10000
#     Supplier Enrichment 1 DI create flow    No    10    5    1    LTR    Testfactory    Street 123    Testnr    5    1000    180    Natural fabric    Cotton    100    Not Applicable    
#     Buying Enrichment DI create flow    10    10    10    10    10    10    10    10    10    10
#     Hedging DI create/repeat flow
#     Supplier Enrichment 2 DI create flow    No    

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    06-05-2023    50    10    10    10    5
#     Review Quotation DI repeat flow    2023    23-04-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    07-05-2023    50    10    10    10    5
#     Review Quotation DI repeat flow    2023    07-05-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    20-05-2023    50    10    10    10    5
#     Review Quotation DI repeat flow 2    2023    14-05-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    21-05-2023    50    10    10    10    5
#     Review Quotation DI repeat flow 2    2023    21-05-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    28-05-2023    50    10    10    10    5
#     Review Quotation DI repeat flow 2    2023    28-05-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow

# Happy direct import repeat flow
    
#     Check Quotation DI repeat flow    2568955    tree.jpg    PLAYGO TOYS ENTERPRISES LTD.    10000    10    10    10    Bangkok    Test Automation RuleZ!    04-06-2023    50    10    10    10    5
#     Review Quotation DI repeat flow 2    2023    04-06-2023    10000
#     Supplier Enrichment 1 DI repeat flow    No    Testnr    No    Testfactory    Street 123    5    4000    180    Natural fabric    Cotton    100    Not Applicable
#     Buying Enrichment DI repeat flow    
#     Hedging DI create/repeat flow