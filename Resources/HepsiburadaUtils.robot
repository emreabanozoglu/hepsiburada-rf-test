*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/HomePage.robot
Resource  ../Resources/PO/LoginPage.robot
Resource  ../Resources/PO/ProductPage.robot
Resource  ../Resources/PO/CartPage.robot
Resource  ../Resources/PO/DeliveryPage.robot
Resource  ../Resources/PO/PaymentPage.robot
Resource  ../Resources/PO/SearchPage.robot

Resource  ../Resources/Common.robot

*** Keywords ***

Log in to HepsiBurada
    HomePage.Load
    HomePage.Verify Page Loaded
    LoginPage.Load
    LoginPage.Verify Login Page Loaded
    LoginPage.Write User Name
    LoginPage.Write User Password
    LoginPage.Click Login Button
    LoginPage.Verify Login is Succesfull
    sleep  2s
    Take Screenshot

Select a Product and Add to Cart
    Scroll Down  0  2300
    sleep  3s
    HomePage.Click a Product
    ProductPage.Verify Product Page Loaded
    ProductPage.Click AddToCart
    sleep    3s
    Click "Sepetim" Button
    CartPage.Verify Cart Page Loaded
    Take Screenshot

Complete Shopping Until Payment
    CartPage.Click "Alışverisi Tamamla" Button
    DeliveryPage.Verify Delivery Page Loaded
    Click Devam Et Button
    Verify Payment Page Loaded
    Click Kredi Kartı Button
    Verify Kredi Kartı Textbox
    Take Screenshot

Search a item
    HomePage.Load
    Write a item in searchbox
    Press enter key
    Wait SearchPage Load
    Take Screenshot

Filter for Brand
    Write Brand in Brand Filter Search Box
    sleep  1s
    Click Filtered Brand
    Verify Brand Filter
    Take Screenshot

Filter for Price Range
    Scroll Down  0  500
    sleep  1s
    Write Min Price
    Write Max Price
    Click Price Filter Button
    Verfiy Price Range
    Take Screenshot

Filter for Color
    Scroll Down  0  700
    sleep  1s
    Select a color
    Verify Price Range
    Take Screenshot

Select a Product and go Product Page
    Click First Listed Product
    Verify Product Page Loaded
    Click Comments
    Click "Bu yorumu faydalı buluyor musunuz? - Evet" Button
    sleep  1s
    Take Screenshot