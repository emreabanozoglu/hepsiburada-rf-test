*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL} =  https://www.hepsiburada.com/uyelik/giris?ReturnUrl=%2f
${UYEGIRISI_LABEL} =  Üye Girişi
${USERNAME_TEXTBOX} =  id=email
${USERPASSWORD_TEXTBOX} =  id=password
${LOGIN_BUTTON} =  Giriş
${HESABIM_LABEL} =  Hesabım


*** Keywords ***
Load
    go to  ${LOGIN_URL}
Verify Login Page Loaded
    wait until page contains  ${UYEGIRISI_LABEL}  timeout=120
Write User Name
    input text  ${USERNAME_TEXTBOX}  ${USER_NAME}
Write User Password
    input password  ${USERPASSWORD_TEXTBOX}  ${USER_PASSWORD}
Click Login Button
    click button  ${LOGIN_BUTTON}
Verify Login is Succesfull
    page should contain  ${HESABIM_LABEL}  timeout=300