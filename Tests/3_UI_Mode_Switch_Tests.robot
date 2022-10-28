*** Settings ***
Library     SeleniumLibrary
Resource    ../src/Base/BaseSetup.robot
Resource    ../src/Commons/CommonFeature.robot
Resource    ../src/Pages/LoginPage.robot
Resource    ../src/Pages/DashboardPage.robot
Suite Setup    BaseSetup.StartTest
Suite Teardown    BaseSetup.CloseTest


*** Test Cases ***

# make the UI dark mode from the Login Page
Switch to Dark Mode from The Login Page
    CommonFeature.ChangeViewMode    ${btnlightmode}

# change UI to light mode from Login Page
Switch to Light Mode from The Login Page
    CommonFeature.ChangeViewMode    ${btnDarkMode}

# Valid login to system
Verify Valid Login with username: ${username} and password: ${password}
    LoginPage.ValidLoginScenario    ${username}     ${password}     ${btnprofile}

# change the UI dark mode from Dashboard
Switch to Dark Mode from Dashboard
    CommonFeature.ChangeViewMode    ${btnlightmode}

# change the UI light mode from Dashboard
Switch to Light Mode from Dashboard
    CommonFeature.ChangeViewMode    ${btnDarkMode}

# System Logout
Logout from Dashbord
    DashboardPage.Logout    ${btnprofile}     ${mnulogout}        ${txaWelcome}


