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
        ${min} =  Set Variable  ${i}
    END
        Log to console  minimum number is ${i}
        #Should Be Equal  ${i}  1

Maximum Case
    ${i} =  Set Variable  ${EMPTY}
    FOR  ${i}  IN RANGE  1  10
        Exit For Loop If  '${i}' == '11'
        ${min} =  Set Variable  ${i}
    END
        Log to console  minimum number is ${i}
        #Should Be Equal  ${i}  1


