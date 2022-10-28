*** Settings ***
Library     SeleniumLibrary
Resource    ../Base/BaseSetup.robot
Resource    ../Commons/CommonFeature.robot

*** Variables ***
# Dashboard page locators
${btnProfile}       id:composition-button
${mnuLogout}        id:composition-menu
${tblData}      xpath://body/div[@id='__next']/div[1]/div[2]/div[1]/div[2]
${txtSearch}        xpath://input[@id='search-input']
${searchString}     Lannister
${searchResult}     xpath://div[@data-field="lastName"]//div[contains(text(), "Lannister")]

*** Keywords ***
# dashboard page keywords

Search
    [Arguments]    ${searchBox}     ${searchString}     ${element}
    wait until element is visible       ${searchBox}
    wait until element is enabled    ${searchBox}
    click element    ${searchBox}
    input text    ${searchBox}      ${searchString}
    wait until element is visible    ${element}

Logout
    [Arguments]    ${profile}       ${logout}       ${element}
    click button    ${profile}
    click element    ${logout}
    wait until element is visible       ${element}