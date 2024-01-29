*** Settings ***
Documentation     นี่คือตัวอย่างของชุดทดสอบโดยใช้ Robot Framework
Library           SeleniumLibrary

*** Test Cases ***
Product Button Test 
    Open Browser    https://automationexercise.com/    chrome
    Click on 'Signup / Login' Button
    Input Email Address    ${email_address}
    Input Password   ${password}
    Submit Credentials
    Click on 'product' button

*** Keywords ***

Click on 'Signup / Login' Button
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    


Input Email Address
    [Arguments]    ${email_address}    ${locator}=//*[@id="form"]/div/div/div[1]/div/form/input[2]
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Input Text    ${locator}    ${email_address}

Input Password
    [Arguments]    ${password}    ${locator}=//*[@id="form"]/div/div/div[1]/div/form/input[3]
    Wait Until Element Is Visible    ${locator}    
    Input Text    ${locator}    ${password}

Submit Credentials
    Submit Form    //*[@id="form"]/div/div/div[1]/div/form
Click on 'product' button
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

*** Variables ***
${email_address}         sacrfet1212@gmail.com
${password}      0849489014
