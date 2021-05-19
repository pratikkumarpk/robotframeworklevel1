*** Settings ***
Documentation  This contains all the modular keywords for the Assigment two Application. That is NewTours App.
Resource  ../resources/PO/AssignmentTwoPO/NewToursHome.robot
Resource  ../resources/Common.robot

*** Variables ***

*** Keywords ***
Verify Home Link on the Left table
    NewToursHome.Verify Page Loaded
    NewToursHome.Verify that Home button displayed

Hover over the Home Link
    ${homeElement} =  NewToursHome.Get Home element
    Common.Hover over the Element  ${homeElement}


Assert that background color and color of Home link are differnt
    ${bgColor} =  NewToursHome.Get bg color of Home Button
    ${fontColor} =  NewToursHome.Get font color of Home Button
    ${condition} =  should not be equal as strings  ${fontColor}  ${bgColor}
    Pass Execution If  ${condition}  Home Link have different bg color and font color

