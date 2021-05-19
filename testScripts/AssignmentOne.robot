*** Settings ***
Documentation  This is assigngment 1 for Robot Framework Level 1.
Resource  ../resources/Common.robot
Resource  ../resources/Assm1AutomationPractice.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://automationpractice.com/index.php

*** Test Cases ***
Assignment One
    [Tags]  smoke
    Verify Home Page Title  My Store
    Validating all the links on home are visible and clickable
    Clicking on cart button
    Validating that the cart is empty
    Go to link  ${URL}
    Adding item to the cart
    Validating that cart is not empty

*** Keywords ***
