*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEPETEEKLE_BUTTON} =  id=addToCart
${COMMENTS} =  id=productReviewsTab
${COMMENT_YES_BUTTON} =  (//a[@data-agreed='true'])[1]

*** Keywords ***
Click AddToCart
    click element  ${SEPETEEKLE_BUTTON}
Verify Product Page Loaded
    page should contain element  ${SEPETEEKLE_BUTTON}  timeout=30
Click Comments
    click element  ${COMMENTS}
Click "Bu yorumu faydalı buluyor musunuz? - Evet" Button
    click element  ${COMMENT_YES_BUTTON}
