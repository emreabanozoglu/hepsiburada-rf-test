*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCHPAGE_RESULT_LABEL} =  class=category-suggestion-title
${BRANDFILTER_SEARCHBOX} =  xpath=(//input[@class='input free'])[1]
${BRAND_CHECKBOX} =  xpath=(//li[@title='${BRAND_FILTER}'])[1]
${BRAND_FILTERED} =  xpath=//span[@class='filter-content']//span[contains(text(),'${BRAND_FILTER}')]
${PRICE_RANGE}  =  xpath=//li[@title='750 - 1000 TL']
${PRICE_RANGE_FILTERED_LABEL} =  xpath=//span[@class='filter-content']//span[contains(text(),'750 - 1000 TL')]
${COLOR_FILTER}  =  xpath=//label[@for='attr-renktipi-Siyah']
${COLOR_FILTERED_LABEL} =  xpath=//span[@class='filter-content']//span[contains(text(),'Siyah')]

*** Keywords ***
Wait SearchPage Load
    wait until element is visible  ${SEARCHPAGE_RESULT_LABEL}  timeout=20
Write Brand in Brand Filter Search Box
    input text  ${BRANDFILTER_SEARCHBOX}  ${BRAND_FILTER}
Click Filtered Brand
    click element  ${BRAND_CHECKBOX}
Verify Brand Filter
    wait until element is visible   ${BRAND_FILTERED}
Select Price Range
    click element  ${PRICE_RANGE}
Verfiy Price Range
     wait until element is visible  ${PRICE_RANGE_FILTERED_LABEL}  timeout=20
Select a color
    click element  ${COLOR_FILTER}
Verify Price Range
     wait until element is visible  ${COLOR_FILTERED_LABEL}  timeout=20