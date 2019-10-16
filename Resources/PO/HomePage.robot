*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_CART} =  xpath=(//div[@class='hbPriceContent'])[1]
${SEARCHBOX} =  id=productSearch

*** Keywords ***
Load
    go to  ${START_URL}
Verify Page Loaded
    wait until page contains  Giriş Yap  timeout=120
Click a Product
    click element  ${PRODUCT_CART}
Write a item in searchbox
    input text  ${SEARCHBOX}  ${SEARCH_ITEM}
