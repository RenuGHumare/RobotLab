*** Keywords ***
Begin Web Test
    Open browser                  about:blank              chrome
Go to Web Page
    Load Page
    Verify Page Loaded
Load Page
    Go to                         http://rental24.infotiv.net/
Verify Page Loaded
    Wait until Page Contains      Infotiv Car Rental
Search for Product
    Enter Search Term
    Submit Search
    Verify Search Complted
Enter Search Term
   Input Text                       id:name  Eva
   Input Text                       id:last  Adem
   Input Text                       id:phone  012345600
   Input Text                       id:emailCreate  Eve.Adam@gmail.com
   Input Text                       id:confirmEmail  Eve.Adam@gmail.com
   Input Text                       id:passwordCreate  Samurai
   Input Text                       id:confirmPassword  Samurai

   Input Text                       id:email  Eve.Adam@gmail.com
   Input Text                       id:password  Samurai
Submit Search
   Press Keys                       //*[@id="create"]       RETURN
   Press keys                       //*[@id="login"]      RETURN
Verify Search Completed
    wait until page contains
End Web Test
    Close Browser