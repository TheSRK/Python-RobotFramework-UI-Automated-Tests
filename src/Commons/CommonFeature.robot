*** Settings ***
Library     SeleniumLibrary

*** Keywords ***

# This keyword changes the view mode dark/light
ChangeViewMode
    [Arguments]    ${button}
    click button    ${button}
