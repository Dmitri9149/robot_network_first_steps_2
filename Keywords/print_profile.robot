*** Settings ***

*** Test Cases ***
My Way To Print Profile
    ${first}=    Set Variable    Dmitri 
    ${last}=    Set Variable    Dmitri
    ${title}=    Set Variable    title    
    Print Profile    ${first}    ${last}    ${title}

*** Keywords ***
Print Profile 
    [Arguments]    ${firstName}     ${lastName}     ${title}
    Log To Console    \nProfile 
    Log To Console    First Name: "${firstName}"
    Log To Console    Last Name: "${lastName}"
    Log To Console    Title: "${title}"