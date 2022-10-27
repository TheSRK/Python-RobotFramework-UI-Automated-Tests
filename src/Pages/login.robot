*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Login page locators
${txaWelcome}       xpath://b[contains(text(),'Welcome!')]
${txtEmail}     name:email
${txtPassword}      name:password
${btnLogIn}     xpath://button[contains(text(),'Log in')]

# username and pwd
${username}     admin@email.com
${password}     thisisverysecure

# test config
${url}      https://talent-recruitment.test.bluestonepim.com/index.html
${browser}      Chrome

*** Test Cases ***
Launch Browser
    open browser    ${url}      ${browser}
    maximize browser window
    wait until element is visible    ${txawelcome}

Login using ${username} and ${password}
    ValidLogin    ${username}       ${password}

Tear Down
    close browser


*** Keywords ***
ValidLogin
    [Arguments]    ${username}      ${password}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
