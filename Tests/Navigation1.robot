*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Library                         SeleniumLibrary
Resource                        ..//Resources/Navigation1Keywords.robot
#Test Setup                       Begin Web Test
Test Teardown                    End Web Test

*** Variables ***
${URL}                        http://rental24.infotiv.net/
${BROWSER}                    chrome
${URL}                        http://rental24.infotiv.net/
${CREATE_USER_BUTTON}         //*[@id="createUser"]
${FNAME_TEXTBOX}              //*[@id="name"]
${LNAME_TEXTBOX}              //*[@id="last"]
${PHONENO_TEXTBOX}            //*[@id="phone"]
${EMAIL_TEXTBOX}              //*[@id="emailCreate"]
${CONFIRM_EMAIL_TEXTBOX}      //*[@id="confirmEmail"]
${PASSWORD_TEXTBOX}           //*[@id="passwordCreate"]
${CONFIRM_PASSWORD_TEXTBOX}   //*[@id="confirmPassword"]
${CREATE_BUTTON}              //*[@id="create"]
${SUCCESS_LOGIN_LEBEL}        //*[@id="welcomePhrase"]
${CONTINUE_BUTTON}            //*[@id="continue"]
${CONFIRM_URL}                http://rental24.infotiv.net/webpage/html/gui/updateAvailability.php?fullName=master
${MYPAGE_URL}                 http://rental24.infotiv.net/webpage/html/gui/myPage.php
${LOGOUT}                     //*[@id="logout"]



*** Test Cases ***
User can create a new user by providing available and correct username and password
    [Documentation]                  Create a new user
    [Tags]                           TestGherkin VG
    Given User Opens a Homepage
    Then User Clicks on Create user Button
    Then User writes Firstname and Lastname
    Then User writes valid Phonenumber
    Then User writes E-mail and Confirms E-mail
    Then User writes Password and Confirms Password
    Then User Clicks Create Button
    Then Verify Login Success Message
    Then User Select Date
    Then User Click Continue
    Then User Scroll the Page and Select car
    Then User Fill Up The Information
    Then User Confirm Booking
    Then User Click MyPage To See Details
    Then User Sign out
    And Should Close the browser

*** Keywords ***



