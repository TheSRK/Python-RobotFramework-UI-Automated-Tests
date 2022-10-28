*** Settings ***
Library     SeleniumLibrary
Resource    ../src/Base/BaseSetup.robot
Resource    ../src/Commons/CommonFeature.robot
Resource    ../src/Pages/LoginPage.robot
Resource    ../src/Pages/DashboardPage.robot
Suite Setup    BaseSetup.StartTest
Suite Teardown    BaseSetup.CloseTest
*** Variables ***


*** Test Cases ***
Verify Login with username: ${username} and password: ${password}
    LoginPage.ValidLoginScenario    ${username}     ${password}     ${btnprofile}

# make dark mode
Test Dark Mode
    CommonFeature.ChangeViewMode    ${btnlightmode}

Search Table Data
    DashboardPage.Search    ${txtSearch}      ${searchString}     ${searchresult}

# make light mode
Test Dark Mode
    CommonFeature.ChangeViewMode    ${btnDarkMode}

Logout from Dashbord
    DashboardPage.Logout    ${btnprofile}     ${mnulogout}        ${txaWelcome}

*** Keywords ***


