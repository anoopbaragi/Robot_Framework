*** Settings ***
Resource    ../Libraries/Libraries.robot
Resource    ../Keywords/Keywords.robot
Resource    ../Variables/Variabels.robot

Suite Setup    Open Browser  ${URL}  ${browser}    options=${auto_close}
Suite Teardown    Close Browser   
Documentation    Open The Browser and Navigate To The Required Item And Compare The Price 


*** Test Cases ***

TC1:Get Response
    [Documentation]    Launching The Browser And Clicking The Item
    [Tags]    Launch The Browser
    [Setup]    Log To Console    ${Set Up1}
    Given Scrool Into Required Field And Click The Element
    When Get The Price
    And Select The Product
    Then Table
    [Teardown]    Log To Console    ${Teardown1}