*** Settings ***
Documentation               This is the test information about login function of http://rental24.infotiv.net/
Library                     SeleniumLibrary
Resource                    ..//Resources/NavigationKeywords.robot
#Test Setup                  Begin Web Test
Test Teardown               End Web Test



*** Variables ***
${URL}                         http://rental24.infotiv.net/
${BROWSER}                     Chrome
${URL}                          https://rental24.infotiv.net/
${BROWSER}                      Chrome
${LOGIN_TEXTBOX}                //*[@id="email"]
${PASSWORD_TEXTBOX}             //*[@id="password"]
${LOGIN_BUTTON}                 //*[@id="login"]
${SUCCESS_LOGIN_LEBEL}          //*[@id="welcomePhrase"]
${CONTINUE_BUTTON}              //*[@id="continue"]
${CONFIRM_URL}                  http://rental24.infotiv.net/webpage/html/gui/updateAvailability.php?fullName=master
${MYPAGE_URL}                   http://rental24.infotiv.net/webpage/html/gui/myPage.php
${LOGOUT}                       //*[@id="logout"]

*** Test Cases ***
Make a booking of car
      [Documentation]    This is the information about user login in system  and book a car
       [Tags]            Functional Test VG
       Given User Opens An Application
       And User Enter Email and Password
       Then User Click Login Button
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
