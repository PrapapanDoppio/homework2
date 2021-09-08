*** Settings ****
Library		SeleniumLibrary
Resource   ../resource/login_page.robot  
Library    DataDriver    ../testdata/testdata_login.csv    dialect=excel

Test Setup      Go to login page
Test Teardown   Close Browser
Test Template   Login to Jenkins

*** Keywords ***
Go to login page
   Open Browser     ${URL}     ${BROWSER}
   Maximize Browser Window

Login to Jenkins
   [Arguments]          ${Username}          ${Password}    ${Locator}     ${Text}   
   Wait Until Element is Visible      ${User}  
   input Text     name=j_username     ${Username}
   Wait Until Element is Visible      ${Pass}  
   input Text     name=j_password     ${Password}
   Click Element  name=Submit
   Element Text Should Be       ${Locator}      ${Text}

*** Test Cases ***      
Login with Username and Password



