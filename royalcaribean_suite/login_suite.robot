*** Settings ***
  
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser   https://www.royalcaribbean.com/    browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${width}    ${height}    Get Window Size  
      
      Log To Console    ${width} 
      Log To Console     ${height} 
      # 500    700
         
    Sleep    5s
    Click Element    //*[name()='svg']    
    # Click Element    //*[@class='email-capture_close']        
    # Click Element    //div[@class='email-capture__body']/*    
    Click Element    //span[text()='Sign In']   
    Click Element    //a[text()='Create an account']  
    Input Text    mat-input-3    Dennis 
    Input Text    mat-input-4    Richie 
    Click Element    //span[text()='Month']    
    Click Element    //span[contains(text(),'March')]    
    Click Element    //span[text()='Day']    
    Click Element    //span[contains(text(),'17')]    
    Input Text    mat-input-5    2021 
    # Select From List By Label     Country/Region of residence       United States of America  
    Click Element    //span[text()='Country/Region of residence']
    Click Element    //span[contains(text(), ' India ')] 
    Input Text    //input[contains(@id,'mat-input-2')]    dennis2398@gmail.com
    Input Text    //input[contains(@id,'mat-input-6')]    Dennis@123 
    Click Element    //span[text()='Select one security question']    
    Click Element     //span[contains(text(),' What was the name of your first pet?')]  
    Input Text    //input[@id='mat-input-7']    appu 
    Click Element    //mat-checkbox[contains(@id,'mat-checkbox-2')] 
    Click Button    //button[text()=' Done '] 
    Click Button    //button[text()=' Sign in ']
    Input Text    //input[contains(@id,'mat-input-8')]    dennis2398@gmail.com
    Input Text    //input[contains(@id,'mat-input-9')]    Dennis@123
    Click Button    //button[text()=' Sign in '] 
    
                                            