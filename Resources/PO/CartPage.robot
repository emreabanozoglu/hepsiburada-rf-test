*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ALISVERISITAMAMLA_BUTTON} =  xpath=/html/body/div[1]/div[2]/div/div[1]/aside/section/div/div[1]/div[2]/button/span

*** Keywords ***

Verify Cart Page Loaded
    wait until element is visible  ${ALISVERISITAMAMLA_BUTTON}  timeout=20
Click "Alışverisi Tamamla" Button
    click element  ${ALISVERISITAMAMLA_BUTTON}
