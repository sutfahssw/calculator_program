*** Settings ***
Suite Setup   Log to console   ${scalarStart}
Suite Teardown  Log to console  ${scalarStop}

*** Variable ***
${scalarStart}  Welcome!
${scalarStop}  Thankyou

*** Keywords ***


*** Test Case ***

Equation 
    ${a} =  Set Variable  2
    
    FOR  ${var}  IN RANGE  1  5
        ${x} =  evaluate  ${a} + ${var}
        Log to console  default is ${x}
        
        ${b} =  Evaluate  ${x} * 2
        Log To Console  defalt multiply two is ${b} (b)
        Log To Console  ----------( b - 1 )-----------
        
        ${c} =  Evaluate  ${b} - 1
        Log To Console  answer is ${c}
        Log To Console  --------------------------

        IF  '${c}' == '9'
            Exit For Loop
        END  
    END
        Log To Console  The desired answer is ${c}
        #Should Be Equal  ${c}  9
        
    




