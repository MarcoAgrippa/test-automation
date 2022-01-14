*** Settings ***
Resource    ../../web/keywords/common.resource
Resource    ../../web/pages/search_trip_page.resource


*** Keywords ***
Find and select first available date
    FOR    ${i}    IN RANGE    12
        ${has_free_date}  Check if month contains free date
        IF    ${has_free_date} == False
            Click on next month
        ELSE
        Click on first available date
        END
    Exit For Loop If    ${has_free_date} == True
    END

Chose the trip
    Click on persons dropdown
    Click on adults minus button
    Click on children plus button
    Click on main check availability button
