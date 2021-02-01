** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Test Cases ***
TC3_validCredential 
        
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser          browser=chrome  
    Maximize Browser Window
    Go To   https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    # Set Selenium Implicit Wait    30s
     ${weight}    ${height}    Get Window Size  
      
      Log To Console    ${weight} 
      Log To Console     ${height} 
        
         500    700    
    
    Table Should Contain    //table[@id='example']   Brenden Wagner
    ${table}    Get Table Cell    //table[@id='example']   1    2
    Log To Console    ${table} 
    Table Cell Should Contain    //table[@id='example']   1    2     Name
TC6_TableHandlingTest
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser          browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    ${count}    Get Element Count    //table[@id='example']/tbody/tr
    FOR    ${i}    IN RANGE   ${count}+1
       Log To Console        ${i}
    END
    
    FOR    ${i}    IN RANGE    1    11    
         ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
         Log To Console         ${name} 
         Run Keyword If    '${name}'=='Brenden Wagner'    Click Element    //table[@id='example']/tbody/tr[&{i}]/td[1]        
         Exit For Loop If    '${name}'=='Brenden Wagner'
    END
    
TC7_TableHandlingTest
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser          browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    Click Element    //a[text()='Editor']    
    Click Element    //table[@id='example']/tbody/tr[5]    
    Click Element    //span[text()='Edit'] 
    Input Text    DTE_Field_position    QA Engineer 
    Click Element    //div[@class='DTE_Form_Buttons']/button 
     Sleep    3s     
     ${name}    Get Text    //table[@id='example']/tbody/tr[5]/td[3]
     Log To Console        ${name}
     ${cell}    Get Table Cell    //table[@id='example']    6    3
     Log To Console        ${cell} 
      # FOR    ${i}    IN RANGE    1    11    
         # ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[3]
         # Log To Console         ${name} 
         # Run Keyword If    '${name}'=='QA Engineer'    Click Element    //table[@id='example']/tbody/tr[&{i}]/td[3]        
         # Exit For Loop If    '${name}'=='QA Engineer'
    # END   
          
         # Run Keyword If    '${name}'=='Brenden Wagner'    Click Element    //table[@id='example']/tbody/tr[&{i}]/td[3]        
         # Exit For Loop If    '${name}'=='Brenden Wagner'
   
    Set Selenium Speed    value
        
        
   