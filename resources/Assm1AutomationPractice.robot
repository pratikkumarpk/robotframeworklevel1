*** Settings ***
Documentation  This contains all the modular keywords for the Assigment One Application. That is Automation Practice App.

Library  Selenium2Library
Resource  ../resources/PO/AssignmentOnePO/Assmt1ShoppingCart.robot
Resource  ../resources/PO/AssignmentOnePO/Assmt1Home.robot
Resource  ../resources/PO/AssignmentOnePO/Assmt1ItemQuickViewFrame.robot

*** Variables ***
${lblNoItem} =  xpath://*[text()='Your shopping cart is empty.']

*** Keywords ***
Validating all the links on home are visible and clickable
    Assmt1Home.Verify Page Loaded
    Assmt1Home.Verify All Links are Present on HomePage

Clicking on cart button
    Assmt1Home.Verify Page Loaded
    Assmt1Home.Click on Cart Button

Validating that the cart is empty
    Assmt1ShoppingCart.Verify Page Loaded
    Wait Until Page Contains Element  ${lblNoItem}
    Element Should Be Enabled  ${lblNoItem}

Adding item to the cart
    Assmt1Home.Select Any Item and Open Quick View
    Assmt1ItemQuickViewFrame.Verify QuickView load
    select frame  css:[id*=fancybox]
    Assmt1ItemQuickViewFrame.Add item to cart
    Assmt1ItemQuickViewFrame.Proceed To Checkout
    Unselect Frame

Validating that cart is not empty
    Element Should Not Be Visible  ${lblNoItem}
