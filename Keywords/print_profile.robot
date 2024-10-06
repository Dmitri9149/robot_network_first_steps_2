*** Settings ***

*** Test Cases ***
My Way To Print Profile
    ${first}=    Set Variable    Dmitri 
    ${last}=    Set Variable    Dmitri
    ${title}=    Set Variable    title 
    Change Value    ${title}    New Title  
    Print Profile    ${first}    ${last}    ${title}
My Addition
    ${sum}=  Add  2  3
    Should be equal as integers  5  ${sum}

#    ${sum}=    Addition    5     5
#    Should Be Equal As Integers    10    ${sum}    

#   Syntax error in expression (see Keys): ${value}=    Evaluate    ${first}  +  ${second}
#   to be: Evaluate    ${first} + ${second}  (less spaces around + )
    Run Keyword And Expect Error    Evaluating expression '5' failed: ValueError: dictionary update sequence element #0 has length 1; 2 is required
    ...            Addition    5    5
    

*** Keywords ***
Print Profile 
    [Arguments]    ${firstName}     ${lastName}     ${title}
    Log To Console    \nPROFILE 
    Log To Console    First Name: "${firstName}"
    Log To Console    Last Name: "${lastName}"
    Log To Console    Title: "${title}"
Addition 
    [Arguments]    ${first}    ${second}
    ${value}=    Evaluate    ${first}  +  ${second}
    RETURN    ${value}
Add
  [Arguments]    ${value1}    ${value2}
  ${value}=  Evaluate  ${value1} + ${value2}
  RETURN  ${value}

Change Value
    [Arguments]    ${original}    ${new}
    RETURN    ${new}