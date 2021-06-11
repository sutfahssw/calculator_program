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
        #Log to console  ${i}
         IF  '${i}' == 1
            Log to console  Minimum number
            Should Be Equal  ${i}  1
            Exit For Loop
        END
    END

Maximum Case    
    ${i} =  Set Variable  ${EMPTY}
    FOR  ${i}  IN RANGE  1  10
    #Log to console  ${i}
    IF  '${i}' == 10 
            Log to console  Maximum    
            Should Be Equal  ${i}  10
            Exit For Loop
        END
    END

