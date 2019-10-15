*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DEVAMET_BUTTON} =  xpath=//button[@class='btn btn-primary full']


*** Keywords ***
Verify Delivery Page Loaded
    wait until element is visible  ${DEVAMET_BUTTON}  timeout=20
Click Devam Et Button
    click element  ${DEVAMET_BUTTON}