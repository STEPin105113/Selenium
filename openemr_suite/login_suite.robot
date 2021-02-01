*** Settings ***
  
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_ValidCredential      
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?si    browser=ff  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s 
    Input Text    authUser    admin    
    Input Password    clearPass    pass 
    Select From List By Label    name=languageChoice  English (Indian) 
    Click Element    xpath=//button[@type='submit'] 
    Page Should Contain    Flow Board
    Mouse Over    //span[@data-bind="text:lname"]
    Click Element    //li[text()='Logout']  
     
                   