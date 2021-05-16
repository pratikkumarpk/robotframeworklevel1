*** Settings ***
Library  Selenium2Library
Library  Selenium2Library

*** Variables ***
${frameQuickView} =  css:[id*=fancybox]
${btnAddToCartQuickView} =  id:add_to_cart
${btnProceedToCheckoutQuickView} =  css:[title='Proceed to checkout']

*** Keywords ***
Verify QuickView load
    Wait Until Page Contains Element  ${frameQuickView}  15

Add item to cart
    Wait Until Page Contains Element  ${btnAddToCartQuickView}  10
    Click Element  ${btnAddToCartQuickView}

Proceed To Checkout
    Wait Until Page Contains Element  ${btnProceedToCheckoutQuickView}  15
    Click Element  ${btnProceedToCheckoutQuickView}




