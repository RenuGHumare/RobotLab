*** Settings ***
Documentation               This is some basic info about test suite
Library                     SeleniumLibrary
Resource                    ..//Resources/simpleKeywords.robot
Test Setup                  Begin Web Test
Test Teardown               End Web Test

*** Variables ***
${BROWSER}      chrome
${URL}          http://rental24.infotiv.net/


*** Keywords ***

*** Test Cases ***

create a new user by providing available and correct username and password
   [Documentation]                  Create a new user
   [Tags]                           CREATE_USER
   Open browser                     about:blank        chrome
   Go To                            http://rental24.infotiv.net/
   ${link_text}                     Get Title
   Should Be Equal                  ${link_text}   Infotiv Car Rental
   Wait Until Page Contains         Infotiv Car Rental
   Press keys                       //*[@id="createUser"]   RETURN
   Wait Until Page Contains         Create a new user
   Input Text                       id=name  Avanti
   Input Text                       id=last  Adami
   Input Text                       id=phone  0232322229
   Input Text                       id=emailCreate      Avanti.Adami@gmail.com
   Input Text                       id=confirmEmail     Avanti.Adami@gmail.com
   Input Text                       id=passwordCreate        Samurai
   Input Text                       id=confirmPassword       Samurai
   Press Keys                       //*[@id="create"]        RETURN
   #Press Keys                       //*[@id="create"]        RETURN
   page should contain element    //*[@id="welcomePhrase"]


   close browser

Valid Login for infotiv car rental
    [Documentation]                  This is information about valid login test
    [Tags]                           VALID_LOGIN
    Open browser                     about:blank        chrome
    Go To                            http://rental24.infotiv.net/
    ${link_text}                     Get Title
    Should Be Equal                  ${link_text}   Infotiv Car Rental
    Wait Until Page Contains         Infotiv Car Rental
    Input Text                       id=email             Eve.Adam@gmail.com
    Input password                   id=password          Samurai
    Press Keys                       //*[@id="login"]      RETURN
    Wait until page contains         You are signed in as Eve
    element should be visible        //*[@id="welcomePhrase"]
    Press Keys                       //*[@id="logout"]      RETURN
    Close Browser

Invalid login for infotiv car rental
    [Documentation]                  This is information about invalid login test
    [Tags]                           INVALID_LOGIN
    Open browser                     about:blank        chrome
    Go To                            http://rental24.infotiv.net/
    Wait Until Page Contains         Infotiv Car Rental
    Input Text                       id=email             Eve.Adam@gmail.com
    Input password                   id=password               aaaaaaaa
    Press Keys                       //*[@id="login"]      RETURN
    Wait until page contains         Wrong e-mail or password
    page should contain              Wrong e-mail or password
    Close Browser

Invalid Login with wrong format
    [Documentation]                  This is information about Invalid login with wrong format
    [Tags]                           WRONG_FORMAT
    Open browser                     about:blank        chrome
    Go To                            http://rental24.infotiv.net/
    Wait Until Page Contains         Infotiv Car Rental
    Input Text                       id=email             Eve.Adam
    Input password                   id=password          samurai
    Press Keys                       //*[@id="login"]      RETURN
    Wait until page contains         Wrong e-mail or password
    page should contain              Wrong e-mail or password
    Close Browser
