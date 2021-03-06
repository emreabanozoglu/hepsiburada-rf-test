*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  DateTime

*** Keywords ***
Begin Web Test
    Set Environment Variable  webdriver.gecko.driver  ${EXECDIR}/geckodriver.exe
    Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe
    open browser  about:blank  ${BROWSER}
    Maximize Browser Window
End Web Test
    close browser
Press enter key
    press keys  None  RETURN
Scroll Down
    [Arguments]  ${X_LOCATION}  ${Y_LOCATION}
    Execute JavaScript    window.scrollTo(${X_LOCATION},${Y_LOCATION})
Take Screenshot
    ${date} =  Get Current Date  UTC  + 3 hours  result_format=%H-%M-%S-%f--%d-%m-%Y
    ${shortdate} =  Get Current Date  UTC  + 3 hours  result_format=%d-%m-%Y
    capture page screenshot  ScreenShots/${TEST NAME}/${shortdate}/${date}.png