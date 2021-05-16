*** Settings ***
Documentation  This is assigngment two for Robot Framework Level 1.
Resource  ../resources/Common.robot

Test Setup  Begin web Test  ${URL}  ${BROWSER}
Test Teardown   Close Browser

*** Variables ***
${BROWSER} =  firefox
${URL} =  http://newtours.demoaut.com

*** Test Cases ***
Assignment Two
    [Documentation]  The website has been moved or changed completely. Test case no longer valid.


*** Keywords ***