*** Settings ***
Library  Selenium2Library

*** Variables ***
${lblReturnToHome} =  css:[title='Return to Home']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${lblReturnToHome}  15



