*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
StartTest
    [Arguments]    ${siteUrl}       ${browserName}      ${element}
    open browser    ${siteUrl}      ${browserName}
    maximize browser window
    wait until element is visible    ${element}
    set selenium speed    1

# closing current browser
CloseTest
    close browser