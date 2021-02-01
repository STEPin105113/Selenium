** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Test Cases ***
TC3_validCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=chrome  
    Maximize Browser Window
    ${linkcount}    Get Element Count    xpath=//a
    Log To Console    ${linkcount} 
    ${text}    Get Text    //a
    Log To Console    ${text}
    ${href}    Get Element Attribute    //a   href
    Log To Console     ${href}
TC2_GetWebElement
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${ele}    Get WebElement    //a
    Log To Console    ${ele}
    ${text}    Get Text    ${ele}
    Log To Console         ${text}
    
TC3_GetWebElementsTest
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${listofelements}    Get WebElement    //a
    ${text0}    Get Text    ${listofelements}[0]
    Log To Console       ${text0}
TC4_GetWebElementsTesting 
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=google chrome 
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${count}       Get Element Count    //a
    ${listofelement}    Get WebElement    //a
    FOR    ${i}    IN RANGE    0    ${count}
        ${listofelement}    Get WebElement    //a
        ${text}    Get Text    ${listofelement}[${i}]
        Log To Console    ${text}
        
        Log To Console    ${text}
        ${href}    Get Element Attribute    ${listofelement}[${i}]      href
        Log To Console        ${href} 
     END
TC5_GetWebElementsTesting
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=google chrome 
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${count}       Get Element Count    //a
    ${listOfElements}    Get WebElement    //a
         
    FOR    ${i}    IN RANGE    0    ${count}    
         ${text}    Get Text    ${listOfElements}[${i}]
        Log To Console    ${text}
        #${text}==image --> perform click 
        Run Keyword If    ${text}=='image'    Click Element    ${listOfElements}[${i}]
        Exit For Loop If    ${text}=='image' 
                    
    END
TC6_GetWebElementsTesting
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.google.com/  browser=google chrome 
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    ${listOfElement}    Get WebElements    //a
    FOR    ${ele}    IN RANGE    @{listOfElement}
       ${text}     Get Text    ${ele}
       Log To Console        ${text}
    END
        

       
             
    

         
    
                    