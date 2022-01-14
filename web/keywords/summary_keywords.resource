*** Settings ***
Resource    ../../web/keywords/common.resource
Resource    ../../web/pages/payment_page.resource
Resource    ../../web/pages/summary_page.resource
Resource    data_creation.resource
Library     String
Library     OperatingSystem


*** Keywords ***
Save booking id to text file
    ${trip_id}   Get element text    ${TRIP_ID}
    ${booking_id}   Remove String  ${trip_id}  .
    Create File  ${EXECDIR}/booking_id.txt  ${booking_id}
