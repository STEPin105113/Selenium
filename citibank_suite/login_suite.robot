*** Settings ***
Library    DateTime    
Library    SeleniumLibrary    
Library    OperatingSystem        


*** Test Cases ***
TC3_validCredential
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://online.citibank.co.in/   browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //a[contains(@title,'APPLY FOR CREDIT CARDS')]
    Switch Window    Online Credit Card Application Form | Citi India
               
    # Click Element    //a[contains(text(),'APPLY FOR CREDIT CARDS'])
    
    ${text}    Get Text     //h1[contains(text(),'Get')]
    Log To Console    ${text}
    log     ${text}
    Click Element    //a[contains(text(),'Travel')] 
    Input Text    Email_Id    ammu23@gmail.com 
    Input Text    mobile_number    9456789067 
    Select From List By Label    salutations-select-1598329735325    Mx.    
    Input Text    FirstName    ammu neeli 
    Select Radio Button    radioButton-radio-group-1598330658729        No 
    Input Text    Father_FirstName    menon
    Input Text    middleName-text-1598332596305    reghu    
    Input Text    lastName-text-1598332596311    S 
    Input Text    exist_dob_dd    12/11/1996     
    Input Text    panno   evJ34567d
    Input Text    others_KYC1    bv435654        
     
    Select Radio Button    radioButton-radio-group-1598348782413    Office
              
   
          