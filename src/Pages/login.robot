*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Login page locators
${txaWelcome}       xpath://b[contains(text(),'Welcome!')]
${txtEmail}     name:email
${txtPassword}      name:password
${btnLogIn}     xpath://button[contains(text(),'Log in')]
${txaInvalidEmail}      xpath://p[contains(text(),'Email is not valid')]
${txaInvaldEmainAndPassword}        xpath://div[contains(text(),'Invalid email or password')]
${txaEmptyPassword}        xpath://p[contains(text(),'Please enter your password')]

# username and pwd
${username}     admin@email.com
${password}     thisisverysecure
${invalidUsername}     admin
${invalidPassword}     thisisverysecur

# test config
${url}      https://talent-recruitment.test.bluestonepim.com/index.html
${browser}      Chrome

*** Test Cases ***

# launching browser and visiting url
Launch Browser
    open browser    ${url}      ${browser}
    maximize browser window
    wait until element is visible    ${txawelcome}
    set selenium speed    1

# empty credentials login attempt
Empty Login Credential
    EmptyEmailAndPasswordLogin      ${EMPTY}        ${EMPTY}

# wrong email and right password
Wrong Email and Right Password using ${invalidUsername} and ${password}
    InavlidEmailLogin    ${invalidUsername}       ${password}

# right email and wrong password
Right Email and Wrong Passoword using ${username} and ${invalidPassword}
    InavlidPasswordLogin    ${username}       ${invalidPassword}

# valid email and valid password
Valid Email and Password using ${username} and ${password}
    ValidLogin    ${username}       ${password}

# closing current browser
Tear Down
    close browser


*** Keywords ***
ValidLogin
    [Arguments]    ${username}      ${password}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}

EmptyEmailAndPasswordLogin
    [Arguments]    ${username}      ${password}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}
    wait until element is visible    ${txaInvalidEmail}
    wait until element is visible    ${txaEmptyPassword}

InavlidEmailLogin
    [Arguments]    ${username}      ${password}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}
    wait until element is visible    ${txaInvalidEmail}

InavlidPasswordLogin
    [Arguments]    ${username}      ${password}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}
    wait until element is visible    ${txaInvaldEmainAndPassword}

InputEmailBoxClear
    [Arguments]    ${element}
    press keys    ${element}        CTRL+a+BACKSPACE
InputPasswordBoxClear
    [Arguments]    ${element}
    press keys    ${element}        CTRL+a+BACKSPACE
