*** Settings ***
Library    OperatingSystem        
Library    SeleniumLibrary


*** Tasks ***
TC1_ValidCredential
    Append To Environment Variable    path    C:\\Users\\CTEA\\Downloads\\geckodriver-v0.28.0-win64
    Open Browser    url=https://magento.com/    browser=ff