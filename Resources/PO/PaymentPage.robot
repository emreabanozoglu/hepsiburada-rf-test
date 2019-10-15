*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PAYMENTPAGE_TITLE} =  xpath=//h1[@class='payment-title']
${KREDIKARTI} =  xpath=(//span[@data-bind='text: paymentName'])[1]
${KREDIKARTI_TEXTBOX} =  xpath=(//input[@name='cardNumber'])[1]

*** Keywords ***
Verify Payment Page Loaded
    wait until element is visible  ${PAYMENTPAGE_TITLE}  timeout=30
Click Kredi Kartı Button
    click element  ${KREDIKARTI}
Verify Kredi Kartı Textbox
    wait until element is visible  ${KREDIKARTI_TEXTBOX}  timeout=30