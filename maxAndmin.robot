*** Settings ***
Suite Setup   Log to console   ${scalarStart}
Suite Teardown  Log to console  ${scalarStop}

*** Variable ***
${scalarStart}  Welcome!
${scalarStop}  Thankyou

*** Keywords ***

*** Test Cases ***
Minimum Case
    ${i} =  Set Variable  ${EMPTY}
    FOR  ${i}  IN RANGE  1  10
        Exit For Loop If  '${i}' == '1'
    END
        Log to console  minimum number is ${i}
        #Should Be Equal  ${i}  1
        Should Be Equal As Integers  ${i}  1

Maximum Case
    ${i} =  Set Variable  ${EMPTY}
    FOR  ${i}  IN RANGE  1  10
        Exit For Loop If  '${i}' == '10'
    END
        Log to console  maximum number is ${i}
        Should Be Equal As Integers  ${i}  10


