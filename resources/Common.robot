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