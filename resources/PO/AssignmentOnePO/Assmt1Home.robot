*** Settings ***
Library  Selenium2Library

*** Variables ***
${lblMyStore} =  id:search_query_top
${linkAvailableOnPage} =  css:a[href*='http']
${btnCart} =  css:[title='View my shopping cart']
${lblQuickView} =  css:#homefeatured .product-image-container

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${lblMyStore}  15

Verify All Links are Present on HomePage
    @{listOfLinks} =  Get WebElements  ${linkAvailableOnPage}
    FOR	 ${var}	 IN	 @{listOfLinks}
        Page Should Contain Link  ${var}
    END

Click on Cart Button
    Click Element  ${btnCart}


Select Any Item and Open Quick View
    Mouse Over  ${lblQuickView}
    Click Element  ${lblQuickView}



