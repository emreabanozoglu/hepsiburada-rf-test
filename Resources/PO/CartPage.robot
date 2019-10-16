*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ALISVERISITAMAMLA_BUTTON} =  xpath=//span[contains(text(),'Alışverişi Tamamla')]

*** Keywords ***

Verify Cart Page Loaded
    wait until element is visible  ${ALISVERISITAMAMLA_BUTTON}  timeout=20
Click "Alışverisi Tamamla" Button
    click element  ${ALISVERISITAMAMLA_BUTTON}
