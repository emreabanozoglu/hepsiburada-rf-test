*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEPETEEKLE_BUTTON} =  id=addToCart



*** Keywords ***
Click AddToCart
    click element  ${SEPETEEKLE_BUTTON}
Verify Product Page Loaded
    page should contain element  ${SEPETEEKLE_BUTTON}  timeout=30
