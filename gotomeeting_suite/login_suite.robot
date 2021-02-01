** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Test Cases ***
TC3_validCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.gotomeeting.com/en-in   browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //a[@class='button button--primary button--small'] 
    Input Text    name=FirstName    amina    
    Input Text    name=LastName    S R
    Input Text    name=Email    amina45@gmail.com 
    Input Text    name=PhoneNumber    3456789082
    Select From List By Label    name=JobTitle  Engineering 
    Input Text    name=Password    Welcome@12345 
    Scroll Element Into View   //button[text()='Sign Up']  
    Click Element    //input[@value='10-99']
    Click Element    xpath=//button[text()='Sign Up']
    