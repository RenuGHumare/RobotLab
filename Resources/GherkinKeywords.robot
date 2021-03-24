*** Keywords ***
Begin Web Test
    Open browser                  about:blank              chrome
User Navigate to the home page
    Open browser                     ${URL}                          ${BROWSER}
User Enter Email and Password
    Click Element                    ${LOGIN_TEXTBOX}
    Input Text                       ${LOGIN_TEXTBOX}                Eve.Adam@gmail.com
    Click Element                    ${PASSWORD_TEXTBOX}
    Input Text                       ${PASSWORD_TEXTBOX}             Samurai
User Click Login Button
    Click Element                    ${LOGIN_BUTTON}
Verify Login Success Message
    Wait Until Element Is Visible    ${SUCCESS_LOGIN_LEBEL}
    Element Should Be Visible        ${SUCCESS_LOGIN_LEBEL}
User Enter Invalid Password
    Input Text                       ${LOGIN_TEXTBOX}                 Eve.Adam@gmail.com
    Input Text                       ${PASSWORD_TEXTBOX}              saamurayi
    Click Element                    ${LOGIN_BUTTON}
Error Message Display
    Wait Until Element Is Visible    ${LOGIN_ERROR_LEBEL}
    Element Should Be Visible        ${LOGIN_ERROR_LEBEL}
User Opens the homepage
    Open browser                     ${URL}                          ${BROWSER}
User Select Date
     Click Element      id=start
     Input Text         id=start                   03/12/2021
     Click Element      id=end
     Input Text         id=end                      03/15/2021
User Click Continue
     Click Element        //*[@id="continue"]
User Try to Book a Car
     Click Element        //*[@id="bookQ7pass5"]
Application Should Display Error Message
     Sleep  5s
     Alert Should Be Present     You need to be logged in to continue.
User Click MyPage To See Details
     Click Element         //*[@id="mypage"]
User Click Show History
     Set Browser Implicit Wait         5
     Click Element          //*[@id="show"]
User Click Hide History
      Click Element         //*[@id="hide"]
Close current browser
    Close Browser
End Web Test
    Close Browser
