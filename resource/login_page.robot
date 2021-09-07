*** Variables ***
${BROWSER}        chrome
${URL}            http://www.doppio-tech.com:8080/login
${User}           xpath=//input[@placeholder="Username"]
${Pass}           xpath=//input[@placeholder="Password"]
${Access Denied}  Access Denied
${message}        xpath=//h1[contains(text(),'${Access Denied}')]/following-sibling::p
${error_message}        xpath=//div[@class='alert alert-danger']
 
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



