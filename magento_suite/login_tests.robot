*** Settings ***
Library    DateTime    
Library    SeleniumLibrary    
Library    OperatingSystem        

*** Tasks ***
TC1_ValidCredential
    Log To Console   amina
    Log    aminasr 
    ${date}    Get Current Date 
    Log To Console      ${date} 


TC3_InvalidCredential 
    Log To Console   ${OUTPUT_DIR}${/}driver      
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://magento.com/    browser=ff  
    Maximize Browser Window 
    Click Element    link=My Account
    Input Text    id=email    balaji0017@gmail.com    
    Input Password    id=pass    welcome@12345 
    Click Element     name=send  
    Title Should Be    My Account
    Click Link    link=Log Out 
    Close Browser                     