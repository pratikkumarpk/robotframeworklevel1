*** Settings ***
Documentation  This is assigngment two for Robot Framework Level 1.
Resource  ../resources/Common.robot
Resource  ../resources/Assm2NewTours.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://demo.guru99.com/test/newtours/

*** Test Cases ***
Assignment Two
    [Tags]  smoke
    Verify Home Page Title  Welcome: Mercury Tours
    Verify Home Link on the Left table
    Hover over the Home Link
    Assert that background color and color of Home link are differnt

*** Keywords ***
