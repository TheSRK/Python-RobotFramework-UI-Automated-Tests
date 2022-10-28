*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://talent-recruitment.test.bluestonepim.com/index.html
${browser}      Chrome
${txaWelcome}       xpath://b[contains(text(),'Welcome!')]
*** Keywords ***
StartTest
    open browser    ${url}      ${browser}
    maximize browser window
    wait until element is visible    ${txaWelcome}
    set selenium speed    1

# closing current browser
CloseTest
    close browser