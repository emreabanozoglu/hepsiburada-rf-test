*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCHPAGE_RESULT_LABEL} =  class=category-suggestion-title
${BRANDFILTER_SEARCHBOX} =  xpath=(//input[@class='input free'])[1]
${BRAND_CHECKBOX} =  xpath=(//li[@title='${BRAND_FILTER}'])[1]
${BRAND_FILTERED} =  xpath=//span[@class='filter-content']//span[contains(text(),'${BRAND_FILTER}')]
${MIN_PRICE} =  xpath=//input[@placeholder='En az']
${MAX_PRICE} =  xpath=//input[@placeholder='En çok']
${PRICE_RANGE_FILTERED_LABEL} =  xpath=//span[@class='filter-content']//span[contains(text(),'${MIN_PRIZE_FILTER}-${MAX_PRIZE_FILTER}')]
${COLOR_FILTER} =  xpath=//li[@title="Siyah"]
${COLOR_FILTERED_LABEL} =  xpath=//span[@class='filter-content']//span[contains(text(),'Siyah')]
${PRICE_FILTER} =  xpath=//button[@class='button small']
${FIRST_LISTED_PRODUCT} =  xpath=//div[@class='product-detail']
*** Keywords ***
Wait SearchPage Load
    wait until element is visible  ${SEARCHPAGE_RESULT_LABEL}  timeout=20
Write Brand in Brand Filter Search Box
    input text  ${BRANDFILTER_SEARCHBOX}  ${BRAND_FILTER}
Click Filtered Brand
    click element  ${BRAND_CHECKBOX}
Verify Brand Filter
    wait until element is visible   ${BRAND_FILTERED}
Write Min Price
    input text  ${MIN_PRICE}  ${MIN_PRIZE_FILTER}
Write Max Price
    input text  ${MAX_PRICE}  ${MAX_PRIZE_FILTER}
Click Price Filter Button
    click element  ${PRICE_FILTER}
Verfiy Price Range
     wait until element is visible  ${PRICE_RANGE_FILTERED_LABEL}  timeout=20
Select a color
    click element  ${COLOR_FILTER}
Verify Price Range
     wait until element is visible  ${COLOR_FILTERED_LABEL}  timeout=20
Click First Listed Product
    click element  ${FIRST_LISTED_PRODUCT}