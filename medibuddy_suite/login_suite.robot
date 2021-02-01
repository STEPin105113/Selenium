*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary



*** Test Cases ***
TC3_InvalidCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://medibuddy.in/    browser=ff  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Click Element    //a[text()='Signup']
    Input Text    name=firstName    amina
    Input Text    name=phone    6754345676
    Input Text    name=username    ami23@gmail.com 
    Input Text    name=password    Welcome@12345 
    Select Checkbox    xpath=//input[@type='checkbox'] 
    Click Element    xpath=//button[@type='submit']     