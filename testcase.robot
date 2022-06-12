
*** Variables ***
@{list}    1    2    3
&{dict1}    a=1    b=2    c=3    #key=value



*** Keywords ***
CommonFunction1
    [Arguments]    ${message}
    Log    ${message}

CommonFunction2
    Log    test message 1
    Log    test message 2
    Log    test message 3




*** Test Cases ***
TC1
    CommonFunction1    test message 1
    CommonFunction1    test message 2
    CommonFunction1    test message 3

TC2
    CommonFunction2

TC3
    ${a} =    Set Variable    100
    ${b} =    Set Variable    Kamal
    Log To Console    ${a}
    Log To Console    ${b}

TC4
    ${a} =    Set Variable If    1==1    Kamal    Girdher
    Log To Console    ${a}

    ${a} =    Set Variable If    1==2    Kamal    Girdher
    Log To Console    ${a}

TC5
    Log To Console    ${list}    #list
    Log To Console    ${list[2]}
    Log To Console    ${dict1}    #json
    Log To Console    ${dict1['a']}

