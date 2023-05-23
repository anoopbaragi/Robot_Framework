*** Settings ***
Resource    ../Libraries/Libraries.robot
Resource    ../Variables/Variabels.robot

*** Keywords ***

Scrool Into Required Field And Click The Element
    Maximize Browser Window
    Wait And Scroll To The Element    ${TodayDeals}
    Click On The Required Item   ${Select_Item}

Get The Price

    ${Price_1}     Get Text    ${Price}
    Log To Console    ${Price_1}
    Click Element    ${Item} 
    ${Price_2}     Get Text    ${Price_PDetail}
    Log To Console    ${Price_2}
    Set Global Variable    ${Price_1}
    Set Global Variable    ${Price_2}
    Should Be Equal    ${Price_1}    ${Price_2}
Select The Product
    Scroll And Click The Product    ${product_details}

Table
    ${Row_Count}    Get Element Count    ${Row_Element}
    FOR    ${Row_Ind}    IN RANGE    1    ${Row_Count}+1
        ${Parameter}=    Get Text    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr[${Row_Ind}]/th
        IF    "${Parameter}" == "${Expected_Parameter}"
            ${Value}=    Get Text    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr[${Row_Ind}]/td
            Log To Console    ${Parameter} 
            Log To Console    ${Value}
        END
            Run Keyword If    "${Parameter}" == "${Expected_Parameter}"    Exit For Loop
    END
Wait And Scroll To The Element 
    [Arguments]    ${element1} 
    Wait Until Element Is Visible    ${element1}
    Scroll Element Into View    ${element1}

Click On The Required Item
    [Arguments]    ${element2}
    Click Element    ${element2}

Scroll And Click The Product
    [Arguments]    ${element3}
    Scroll Element Into View    ${element3}
    Click Element    ${element3}