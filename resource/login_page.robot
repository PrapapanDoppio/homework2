*** Variables ***
${BROWSER}        chrome
${URL}            http://www.doppio-tech.com:8080/login
${User}           xpath=//input[@placeholder="Username"]
${Pass}           xpath=//input[@placeholder="Password"]
${Access Denied}  Access Denied
${message}        xpath=//h1[contains(text(),'${Access Denied}')]/following-sibling::p
${error_message}        xpath=//div[@class='alert alert-danger']





