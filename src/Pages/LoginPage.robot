*** Settings ***
Library     SeleniumLibrary

Resource    ../Base/BaseSetup.robot
Resource    ../Commons/CommonFeature.robot


*** Variables ***
# Login page locators

${txtEmail}     name:email
${txtPassword}      name:password
${btnLogIn}     xpath://button[contains(text(),'Log in')]
${btnDarkMode}      xpath://body/div[@id='__next']/div[1]/div[1]/button[1]
${btnLightMode}     xpath://body/div[@id='__next']/div[1]/div[1]/button[1]

# username and pwd
${username}     admin@email.com
${password}     thisisverysecure

*** Keywords ***

ValidLoginScenario
    [Arguments]    ${username}      ${password}     ${element}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}
    wait until element is visible    ${element}
