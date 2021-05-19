*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin web Test
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    Maximize Browser Window

Go to link
    [Arguments]  ${url}
    Go To  ${url}

Verify Home Page Title
    [Arguments]  ${title}
    Title Should Be  ${title}

Switching to newlyOpened Window
    Switch Window  NEW

Get text of
    [Arguments]  ${button}
    ${textOf}  get text  xpath://*[text()='${button}']
    log  ${textOf}

Switching back to main window
    Switch Window  MAIN

Hover over the Element
    [Arguments]  ${ele}
    Mouse Over  ${ele}