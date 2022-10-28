*** Settings ***
Library     SeleniumLibrary
Resource    ../src/Base/BaseSetup.robot
Resource    ../src/Commons/CommonFeature.robot
Resource    ../src/Pages/LoginPage.robot
Resource    ../src/Pages/DashboardPage.robot
Suite Setup    BaseSetup.StartTest
Suite Teardown    BaseSetup.CloseTest


*** Test Cases ***

# Valid login to system
Verify Login with username: ${username} and password: ${password}
    LoginPage.ValidLoginScenario    ${username}     ${password}     ${btnprofile}

# make the UI dark mode
Test Dark Mode
    CommonFeature.ChangeViewMode    ${btnlightmode}

# search from the data table
Search from Table Data
    DashboardPage.Search    ${txtSearch}      ${searchString}     ${searchresult}

# make the UI light mode
Test Dark Mode
    CommonFeature.ChangeViewMode    ${btnDarkMode}

# System Logout
Logout from Dashbord
    DashboardPage.Logout    ${btnprofile}     ${mnulogout}        ${txaWelcome}


