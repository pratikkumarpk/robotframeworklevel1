*** Settings ***
Documentation  This is assigngment 4 for Robot Framework Level 1.
Resource  ../resources/Common.robot
Resource  ../resources/Assm4W3School.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.w3schools.com/

*** Test Cases ***
Assignment Four
    [Tags]  smoke
    Verify Home Page Title  W3Schools Online Web Tutorials
    Getting text of Learn Html Button
    Clicking on Try It Yoyrself Button
    Switching to newlyOpened Window
    Getting Color and Text of Run Button and Clicking It
    Switching back to main window
    Clicking on Learn HTML Button


*** Keywords ***