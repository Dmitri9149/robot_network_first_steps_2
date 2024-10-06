*** Settings ***
Documentation    Learn how to check invoice manager page 
Library           SeleniumLibrary

*** Test Cases ***
Check invoice manager page 
    Comment    Learn how to check invoice manager page 
    Open Browser    http://inv.beaufortfairmont.com/    chrome
    Page Should Contain    Invoice Manager
#    Navigate to Invoice Page
    My Log to Console  




*** Keywords ***
My Log To Console 
    Log To Console    Invoice page checking !!
    
#    Navigate to Invoice Page     Open Browser    http://inv.beaufortfairmont.com/    chrome   
#    My Log To Console    Invoice page checking !! 
