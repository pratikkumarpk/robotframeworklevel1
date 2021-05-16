*** Settings ***
Documentation  This is assigngment 1 for Robot Framework Level 1.
Resource  ../resources/Assm1AutomationPractice.robot
Resource  ../resources/Assm4W3School.robot
Resource  ../resources/Assm3W3School.robot
Resource  ../resources/Common.robot

Test Teardown   Close Browser

*** Variables ***
${BROWSER} =  chrome
${URL_1} =  http://automationpractice.com/index.php
${URL_2} =  https://www.w3schools.com/html/tryit.asp?filename=tryhtml_default
${URL_3} =  https://www.w3schools.com/

*** Test Cases ***
Assignment One
    [Tags]  smoke,one
    Begin web Test  ${URL_1}  ${BROWSER}
    Verify Home Page Title  My Store
    Validating all the links on home are visible and clickable
    Clicking on cart button
    Validating that the cart is empty
    Go to link  ${URL_1}
    Adding item to the cart
    Validating that cart is not empty

Assignment Two
    [Documentation]  The website has been moved or changed completely. Test case no longer valid.

Assignment Three
    [Tags]  smoke,three
    Begin web Test  ${URL_2}  ${BROWSER}
    Verify Home Page Title  Tryit Editor v3.6
    Clicking on Run Button
    Getting Text From Heading  This is a Heading
    Changing The Text From Heading  automation practice
    Verify That Text is Successfully Set  automation practice

Assignment Four
    [Tags]  smoke,four
    Begin web Test  ${URL_3}  ${BROWSER}
    Verify Home Page Title  W3Schools Online Web Tutorials
    Getting text of Learn Html Button
    Clicking on Try It Yoyrself Button
    Switching to newlyOpened Window
    Getting Color and Text of Run Button and Clicking It
    Switching back to main window
    Clicking on Learn HTML Button


*** Keywords ***