** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary




*** Test Cases ***
TC3_InvalidCredential 
       
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://www.jcpenney.com/   browser=ff  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    searchInputId   Acdc Mens Crew Neck Short Sleeve Music Graphic T-Shirt 
    Click Element    xpath=//button[@data-automation-id ='searchIconBlock']
    Click Button    large
     
    Select From List By Label    quantity   2   
    # Click Element    //button[@class="gwoO1 _3YR5_ kkuXk"]    
    Click Element    xpath=//p[@data-automation-id="addToCart"]
    
    Click Element    //button[text()='View Cart & Checkout']
    Click Element    //button[text()='Remove']     
 
    # Click Element     xpath=//p[@data-automation-id='at-panel-checkout-button']        
    ${actualtitle}    get Title
    Log To Console      ${actualtitle}
    Log     ${actualtitle}  
    ${currenturl}    get Title
    Log To Console      ${currenturl}
    Log     ${currenturl} 
         