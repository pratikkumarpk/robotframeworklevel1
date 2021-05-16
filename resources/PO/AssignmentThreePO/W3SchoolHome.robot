*** Settings ***
Library  Selenium2Library

*** Variables ***
${btnTryHome} =  id:tryhome
${btnRunButton} =  xpath://button[text()='Run »']
${lblHeadingRight} =  xpath://h1[text()='This is a Heading']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${btnTryHome}  15

Click on Run Button
    click button  ${btnRunButton}

Get Text From Heading
    ${headingText}  get text  ${lblHeadingRight}
    return from keyword  ${headingText}

Get color of Run Button
    ${colour} =  get element attribute  ${btnRunButton}  style
    log  ${colour}

Get text of Run Button
    ${text} =  get text  ${btnRunButton}
    log  ${text}

