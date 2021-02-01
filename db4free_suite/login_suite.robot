** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Test Cases ***
TC3_validCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.db4free.net/  browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Click Element   //b[contains(text(),'phpMyAdmin')]
    Sleep    5s 
    ${title}    Get Title
    Log To Console    ${title}
    Switch Window    phpMyAdmin
    Input Text    input_username    admin
    Input Password    pma_password    Password@234    
    Click Element    input_go    
    ${error}    Get Text     //div[contains(text(),'cannot')    
    Log To Console    ${error}    
    log     ${error}    
          
        
    Close Window 
      
        