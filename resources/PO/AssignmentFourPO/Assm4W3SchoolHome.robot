*** Settings ***
Library  Selenium2Library

*** Variables ***
${btnLearnHTML} =  css:[href*=html].tut-button:not(.black-color)
${btnTryItYourself} =  css:[href*=html].tryit-button


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${btnLearnHTML}  15

Get text of Learn HTML Button
    return from keyword  get text  ${btnLearnHTML}

Click Try it yourself
    click element  ${btnTryItYourself}

Click Learn HTML
    click element  ${btnLearnHTML}
