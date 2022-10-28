*** Settings ***
Library     SeleniumLibrary
Library     DataDriver      ../resources/Data.csv
Resource    ../src/Base/BaseSetup.robot
Resource    ../src/Commons/CommonFeature.robot
Resource    ../src/Pages/LoginPage.robot
Suite Setup    BaseSetup.StartTest
Suite Teardown    BaseSetup.CloseTest
Test Template    LoginScenarios

*** Test Cases ***
# Login with Inavlid credentials from Data.csv
Verify Login with username: ${username} and password: ${password}


*** Keywords ***
LoginScenarios
    [Arguments]    ${username}      ${password}     ${errorMessage}
    input text      ${txtEmail}       ${username}
    input password    ${txtpassword}        ${password}
    click button    ${btnlogin}
    wait until page contains    ${errorMessage}

