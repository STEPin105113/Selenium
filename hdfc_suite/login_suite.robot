*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary




*** Test Cases ***
TC3_InvalidCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://netbanking.hdfcbank.com/netbanking/    browser=ff  
    Maximize Browser Window 
    Set Selenium Implicit Wait    30s 
    Select Frame    name=login_page
    Input Text    name=fldLoginUserId    test123 
    Click Element    xpath=//img[@alt='continue'] 