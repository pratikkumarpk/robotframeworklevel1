*** Settings ***
Documentation  This contains all the modular keywords for the Assigment Four Application. That is W3School App.
Resource  ../resources/PO/AssignmentFourPO/Assm4W3SchoolHome.robot
Resource  ../resources/PO/AssignmentThreePO/W3SchoolHome.robot

*** Variables ***

*** Keywords ***
Getting text of Learn Html Button
    Assm4W3SchoolHome.Verify Page Loaded
    ${text} =  Assm4W3SchoolHome.Get text of Learn HTML Button
    log  ${text}

Clicking on Try It Yoyrself Button
    Assm4W3SchoolHome.Click Try it yourself

Getting Color and Text of Run Button and Clicking It
    W3SchoolHome.Verify Page Loaded
    W3SchoolHome.Get color of Run Button
    W3SchoolHome.Get text of Run Button
    W3SchoolHome.Click on Run Button

Clicking on Learn HTML Button
    Assm4W3SchoolHome.Click Learn HTML



