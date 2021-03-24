*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Library                         SeleniumLibrary
Resource                        ..//Resources/GherkinKeywords.robot
#Test Setup                  Begin Web Test
#Test Teardown               End Web Test

*** Variables ***
${URL}                          https://rental24.infotiv.net/
${BROWSER}                      Chrome
${LOGIN_TEXTBOX}                //*[@id="email"]
${PASSWORD_TEXTBOX}             //*[@id="password"]
${LOGIN_BUTTON}                 //*[@id="login"]
${SUCCESS_LOGIN_LEBEL}          //*[@id="welcomePhrase"]
${LOGIN_ERROR_LEBEL}            //*[@id="signInError"]
*** Test Cases ***
User provides invalid credentials
    [Documentation]   user provides invalid credentials it displays error message
    [Tags]            USER_INVALID_LOGIN
    Given User Navigate to the home page
    When User Enter Invalid Password
    Then Error Message Display
    Then Close current browser
User can login by entering valid credentials
    [Documentation]    user enters valid credentials
    [Tags]             USER_LOGIN
    Given User Navigate to the home page
    When User Enter Email and Password
    And User Click Login Button
    Then Verify Login Success Message
    Then Close current browser
Book A car Without Logging In
    [Documentation]     user tries to Book A car Without Logging In
    [Tags]              BOOK_WITHOUT_LOGGININ
    Given User Opens the homepage
    Then User Select Date
    And User Click Continue
    And User Try to Book a Car
    And Application Should Display Error Message
*** Keywords ***


