*** Settings ***
Library  Selenium2Library

*** Variables ***
${btnHome} =  xpath://a[text()='Home']
${btnHomeFontColor} =  xpath://a[text()='Home']/..
${btnHomeBgColor} =  xpath://a[text()='Home']/../..
${txtUserName} =  css:[name='userName']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${txtUserName}  15

Verify that Home button displayed
    Wait Until Page Contains Element  ${btnHome}  15

Get bg color of Home Button
    ${bgColour} =  get element attribute  ${btnHomeFontColor}  color
    log  ${bgColour}
    return from keyword  ${bgColour}

Get font color of Home Button
    ${fontColour} =  get element attribute  ${btnHomeBgColor}  bgcolor
    log  ${fontColour}
    return from keyword  ${fontColour}

Get Home element
    return from keyword  ${btnHome}

