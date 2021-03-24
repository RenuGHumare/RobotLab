*** Keywords ***
User Opens a Homepage
    Open browser                     ${URL}                          ${BROWSER}
User Clicks on Create user Button
    Click Element                    ${CREATE_USER_BUTTON}
User writes Firstname and Lastname
    Click Element                    ${FNAME_TEXTBOX}
    Input Text                       ${FNAME_TEXTBOX}              rahul
    Click Element                    ${LNAME_TEXTBOX}
    Input Text                       ${LNAME_TEXTBOX}              gandhi
User writes valid Phonenumber
    Click Element                    ${PHONENO_TEXTBOX}
    Input Text                       ${PHONENO_TEXTBOX}           1011386878
User writes E-mail and Confirms E-mail
    Click Element                    ${EMAIL_TEXTBOX}
    Input Text                       ${EMAIL_TEXTBOX}             rahulgandhi@gmail.com
    Click Element                    ${CONFIRM_EMAIL_TEXTBOX}
    Input Text                       ${CONFIRM_EMAIL_TEXTBOX}     rahulgandhi@gmail.com
User writes Password and Confirms Password
     Click Element                   ${PASSWORD_TEXTBOX}
     Input Text                      ${PASSWORD_TEXTBOX}          Samurai
     Click Element                   ${CONFIRM_PASSWORD_TEXTBOX}
     Input Text                      ${CONFIRM_PASSWORD_TEXTBOX}  Samurai
User Clicks Create Button
     Click Element                  ${CREATE_BUTTON}
Verify Login Success Message
    Wait Until Element Is Visible    ${SUCCESS_LOGIN_LEBEL}
    Element Should Be Visible        ${SUCCESS_LOGIN_LEBEL}

User Select Date
     Press Keys         id=reset                 RETURN
     Input Text         id=start                   03/12/2021
     Input Text         id=end                     03/15/2021
User Click Continue
     Click Element      ${CONTINUE_BUTTON}

User Scroll the Page and Select car
     Wait Until Page Contains Element                //*[@id="ms-list-2"]
     Wait Until Page Contains Element              //*[@id="bookQ7pass5"]
     Element Should Be Visible           //*[@id="bookQ7pass5"]
     Press Keys                          //*[@id="bookQ7pass5"]        RETURN

User Fill Up The Information
     Wait Until Element Is Visible       //*[@id="questionText"]
     Element Should Be Visible           //*[@id="questionText"]
     Input Text                          id=cardNum                      1234567812345678
     Input Text                          id=fullName                        EveAdam
     #month Selction
     Click Element                       //*[@id="confirmSelection"]/form/select[1]
      Wait Until Element Is Visible      //*[@id="month6"]
      Element Should Be Visible          //*[@id="month6"]
      Click Element                      //*[@id="month6"]
      #year
      Click Element                      //*[@id="confirmSelection"]/form/select[2]
      Wait Until Element Is Visible      //*[@id="month2022"]
      Element Should Be Visible          //*[@id="month2022"]
      Click Element                      //*[@id="month2022"]
      Input Text                          id=cvc             234

User Confirm Booking
     Press Keys                         //*[@id="confirm"]         RETURN
     Should be Equal                    ${CONFIRM_URL}   ${CONFIRM_URL}

User Click MyPage To See Details
     Click Element                     //*[@id="mypage"]
     Should be Equal                   ${MYPAGE_URL}          ${MYPAGE_URL}

User Sign out
     Click Element                     //*[@id="logout"]

Should Close the browser
     Close Browser
End Web Test
    Close Browser

