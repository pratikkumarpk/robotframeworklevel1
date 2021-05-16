*** Settings ***
Documentation  This is assigngment two for Robot Framework Level 1.
Resource  ../resources/Common.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser
Resource  ../resources/Common.robot
Resource  ../resources/Assm3W3School.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser


*** Variables ***
${BROWSER} =  Chrome
${URL} =  https://www.w3schools.com/html/tryit.asp?filename=tryhtml_default

*** Test Cases ***
Assignment Three
    [Tags]  smoke
    Verify Home Page Title  Tryit Editor v3.6
    Clicking on Run Button
    Getting Text From Heading  This is a Heading
    Changing The Text From Heading  automation practice
    Verify That Text is Successfully Set  automation practice


*** Keywords ***