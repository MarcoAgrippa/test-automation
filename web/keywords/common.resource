*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections


*** Keywords ***
Open search page
    Open Browser  ${URL}  browser=chrome
    Maximize Browser Window

Click on element
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}     timeout=40
    Set Focus To Element   ${locator}
    Click element   ${locator}

Verify element is visible
    [Arguments]  ${locator}
    Wait Until Element Is Visible  ${locator}

Verify element is not visible
    [Arguments]  ${locator}
    Wait Until Element Is Not Visible  ${locator}

Enter text
    [Arguments]  ${locator}  ${text}
    Wait Until Element Is Visible  ${locator}
    Input Text    ${locator}    ${text}

Select iFrame
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Select Frame    ${locator}

Unselect iFrame
    Unselect Frame

Enter text into iFrame
    [Arguments]  ${iframe}  ${locator}  ${text}
    Select iFrame    ${iframe}
    Enter text    ${locator}  ${text}
    Unselect iFrame

Get element text
    [Arguments]  ${locator}
    ${text}  Get Text    ${locator}
    [Return]  ${text}
