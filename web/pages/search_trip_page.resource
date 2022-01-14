*** Settings ***
Resource    ../keywords/common.resource
Library    String


*** Variables ***
${CALENDAR_INPUT}                //*[@id="booking_date_availability_form_search"]
${NEXT_MONTH_BUTTON}             //div[contains(@class, 'datepicker-days')]//th[contains(@class, 'next')]
${CHECK_TRIP_AVAILABILITY_BTN}   //*[contains(text(),'{}')]//following::*[contains(text(), 'View Availability')]
${AVAILABLE_DATE}                css:td[class='day']
${FIRST_AVAILABLE_DATE}          css:td[class='day']:nth-of-type({})
${PERSONS_DROPDOWN}              //*[contains(@class, 'row packages-form-header')]//child::*[contains(@class, 'search-form-persons')]
${ADULTS_MINUS_BTN}              //*[@id='charter-trips']//following::button[@class= 'fbkr-button white adults-children-btn adults-minus']
${CHILDREN_PLUS_BTN}             //*[@id='charter-trips']//following::button[@class= 'fbkr-button white adults-children-btn children-plus']
${CHECK_AVAILABILITY_MAIN_BTN}   css:#check-availability-btn
${INSTANT_BOOK}                  css:#bookbtn-0


*** Keywords ***
Click on calendar input
    Click on element    ${CALENDAR_INPUT}

Click on next month
    Click on element    ${NEXT_MONTH_BUTTON}

Click on check availability
    [Arguments]  ${trip_name}
    ${element}  Format String   ${CHECK_TRIP_AVAILABILITY_BTN}   ${trip_name}
    Click on element    ${element}

Check if month contains free date
    ${condition} =  Run keyword And Return Status    Wait Until Page Contains Element    ${AVAILABLE_DATE}    timeout=1   error=false
    [Return]    ${condition}

Click on persons dropdown
    Click on element    ${PERSONS_DROPDOWN}

Click on adults minus button
    Click on element    ${ADULTS_MINUS_BTN}

Click on children plus button
    Click on element    ${CHILDREN_PLUS_BTN}

Click on main check availability button
    Click on element    ${CHECK_AVAILABILITY_MAIN_BTN}

Click on instant book
    Click on element    ${INSTANT_BOOK}

Click on first available date
    ${condition} =  Run keyword And Return Status    Wait Until Page Contains Element    ${FIRST_AVAILABLE_DATE}    timeout=1   error=false
    FOR    ${i}    IN RANGE    31
        ${element}  Format String   ${FIRST_AVAILABLE_DATE}   ${i}
        ${present} =  Run keyword And Return Status    Wait Until Page Contains Element    ${element}    timeout=1   error=false

        IF    ${present} == True
            Click on element    ${element}
            Exit For Loop If    ${present} == True
        ELSE
            Log  Error, could't find free date!
        END
    END
