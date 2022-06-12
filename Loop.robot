*** Settings ***
Library    String
Library    BuiltIn
Library    Selenium2Library
*** Test Cases ***
TC1
    FOR    ${i}    IN RANGE    1    11    #i=1  i<11
        Log To Console    ${i}
        
    END

TC2
    @{a}=    Create List    1    2    3    4    5    #list
    FOR    ${i}    IN    @{a}
        Log To Console    ${i}
        Exit For Loop If    ${i}>2    #index 0 1 2
    END

TC3
    ${cond}=    Set Variable    True    #if - else   แบบ1
    Run Keyword If    ${cond}
    ...    UserKeyword1   
    ...  ELSE
    ...    UserKeyword2    

TC4
    ${cond}=    Set Variable    False    #${cond} = False
    Run Keyword If    ${cond}    UserKeyword1   ELSE    UserKeyword2   #if - else   แบบ2


TC5
    ${fn}=    Set Variable    Kamal
    ${ln}=    Set Variable    Girdher
    Log To Console    ${fn}${SPACE}${ln}
TC6
    [Template]    F1
    A    b
    C    d
    

    
*** Keywords ***
UserKeyword1
    Log To Console    This is function 1
UserKeyword2
    Log To Console    This is function 2
F1
    [Arguments]    ${f}    ${l}
    Log To Console    ${f}${SPACE}${l}