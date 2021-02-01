** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Test Cases ***
TC3_validCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser          browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.phptravels.net/ 
    # Click Element    link=USD   
    # Click Element    link=INR 
    # Click Element    //a[text()='INR']    
    ${ele}    Get WebElements    //a[text()='INR']
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    Sleep    5s          
    Click Element   //a[contains(@class,'text-center flights ')]
    Click Element    //div[@class='select2-container form-control']
        
    Press Keys    None    new york    
    # Input Text   xpath=//input[@class='select2-input']//input[@class='select2-input']        New York(EWR) 
    Click Element    xpath=//div[contains(text(),'EWR')] 
    Click Element    //span[text()='DXB']
    Press Keys    None    Sindal
    Click Element    //div[contains(text(),'CNL')]
    # Click Element    //input[@id='FlightsDateStart']
    # Execute Javascript    document.getElementById('FlightsDateStart').value='2021-01-30'
    ${ele}    Get WebElement    //input[@placeholder='Depart']
    Execute Javascript    arguments[0].value='2021-01-30'    ARGUMENTS    ${ele}
    
    FOR    ${1}    IN RANGE    1    4
       Click Element    xpath=(//button[text()='+'])[3]     
    END
     FOR    ${1}    IN RANGE    1    4
       Click Element    xpath=(//button[text()='+'])[5]     
    END
    Click Element    xpath=(//button[contains(text(),'Search')])[2] 
    Click Element    //button[contains(text(),'Book Now')]      
     ${text}     Get Text    xpath=(//h5[@class='float-none'])[2]
     Log To Console         ${text} 
                      
      
    # Click Element   //div[@id='s2id_location_from']     
    # Click Element    //span[contains(text(),'Business')]       
    