*** Settings ***
Library    SeleniumLibrary
Suite Setup    Navigate To Page
Suite Teardown    Close Browser

*** Test Cases ***
Use_Variables_And_Navigate_to_Page
    Comment    Use Variables In Navigation 

*** Keywords ***
Navigate To Page
    Open Browser    ${SiteUrl}    ${Browser}

*** Variables ***
${SiteUrl}    http://inv.beaufortfairmont.com
${Browser}    Chrome