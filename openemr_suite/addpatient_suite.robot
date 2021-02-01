*** Settings ***
  
Library    SeleniumLibrary    
Library    OperatingSystem  

*** Test Cases ***
TC1_ValidCredential
    Append To Environment Variable    path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://demo.openemr.io/openemr/interface/login/login.php?site=default    browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s 
    Input Text    authUser    admin    
    Input Password    clearPass    pass 
    Select From List By Label    name=languageChoice  English (Indian)
    Click Element    xpath=//button[@type='submit']
    #DashboardPage
    Page Should Contain    Flow Board    
    Mouse Over    //div[contains(text(),'Patient/Client')]
    Click Element    //div[contains(text(),'Patients')]
    
    
    #PatientfinderPage
     Select Frame    fin
     Click Element    create_patient_btn1 
     Unselect Frame   
    #SearchOrAddPatientPage        
     Select Frame    name=pat    
     Select From List By Label    form_title   Ms.
     Input Text    //input[@name='form_fname']    Sneha
     Input Text    //input[@name='form_mname']    Suthi 
     Input Text    //input[@name='form_lname']    R 
     Input Text    //input[@name='form_DOB']      2021-01-15  
     Select From List By Label    form_sex    Female 
     Click Button    create 
     Unselect Frame
     #
     Select Frame        id=modalframe
     Sleep    3s    
     Click Element    //input[@value='Confirm Create New Patient'] 
     Unselect Frame
     
     ${alerttxt}    Handle Alert    ACCEPT    timeout=30s
     Log To Console        ${alerttxt}
     Run Keyword And Ignore Error        Click Element    //div[@class='closeDlgframe']
     Select Frame    id=pat
     
     Select Frame    pat   
     ${result}    Get Text    //h2[text()="Medical Record Dashboard - Sneha R"]
     Log To Console    ${result} 
     
     Should Contain     ${result}     Sneha R
     Log To Console    ${result}    
     Element Should Contain      //h2[text()="Medical Record Dashboard - Sneha R"]        Sneha R
     Unselect Frame 
                               