*** Settings ***
Documentation  Hepsiburada Robot Framework
Resource  ../Resources/Common.robot
Resource  ../Resources/HepsiburadaUtils.robot
Suite Setup  Common.Begin Web Test
Suite Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.hepsiburada.com/
${USER_NAME} =  rdz49278@eveav.com
${USER_PASSWORD} =  1qa2ws3ed4rf

${SEARCH_ITEM} =  bluetooth kulaklık
${BRAND_FILTER} =  JBL
${MIN_PRIZE_FILTER} =    750
${MAX_PRIZE_FILTER} =    800

#robot -d results -i tests
*** Test Cases ***
Buy a product
    [Documentation]  User, login to Hepsiburada with User Name and Password.
    [Tags]  case1
    Log in to HepsiBurada
    Select a Product and Add to Cart
    Complete Shopping Until Payment

Search Result Page Control
    [Documentation]  User, goes to seach page, filtering items.
    [Tags]  case2
    Search a item
    Filter for Brand
    Filter for Price Range
    Filter for Color
    Select a Product and go Product Page




