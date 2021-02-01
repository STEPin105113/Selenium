*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary

*** Test Cases ***
TC3_InvalidCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.redbus.in/    browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=i-icon-profile 
    Click Element    id=signInLink  
    Select Frame    //iframe[@class='modalframe']
    Input Text    id=mobileNoInp    9087654567 
 
            