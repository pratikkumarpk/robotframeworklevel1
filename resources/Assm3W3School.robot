*** Settings ***
Documentation  This contains all the modular keywords for the Assigment Three Application. That is W3School App.
Resource  ../resources/PO/AssignmentThreePO/W3SchoolHome.robot
Library   String

*** Variables ***
${frame} =  id:iframeResult

*** Keywords ***
Clicking on Run Button
    W3SchoolHome.Verify Page Loaded
    W3SchoolHome.Click on Run Button

Getting Text From Heading
    [Arguments]  ${heading}
    select frame  ${frame}
    ${headingActual} =  W3SchoolHome.Get Text From Heading
    Should Be Equal As Strings  ${heading}  ${headingActual}
    unselect frame

Changing The Text From Heading
    [Arguments]  ${newheading}
    #Execute Async Javascript  document.getElementById("textareaCode").innerHTML = "${newheading}"
    ${headingActual} =  get text  id:textareaCode
    Replace String  ${headingActual}  This is a Heading   ${newheading}
    input text  id:textarea  ${headingActual}
    W3SchoolHome.Click on Run Button


Verify That Text is Successfully Set
    [Arguments]  ${newheading}
    Getting Text From Heading  ${newheading}

