*** Settings ***
Resource    ../keywords/common.resource
Resource    ../pages/search_trip_page.resource
Resource    ../keywords/search_trip_keywords.resource
Resource    ../keywords/user_details_keywords.resource
Resource    ../keywords/payment_keywords.resource
Resource    ../pages/payment_page.resource
Resource    ../keywords/summary_keywords.resource
Resource    ../pages/summary_page.resource
Resource    ../keywords/summary_keywords.resource
Resource    ../keywords/setup_keywords.resource


Test Setup  Run Keywords  Set test variables  Open search page
Test Teardown  Close Browser


*** Test Cases ***
User is able to book trip for two persons for first available date
    [Documentation]  This test covers scenario where a user books "Single Fisherman Special" trip for one adult and
    ...  one child, and the script automaticaly saves the confirmation code to booking_id.txt file
    Click on check availability    Single Fisherman Special
    Find and select first available date
    Chose the trip
    Click on instant book
    Enter user details
    Enter a note to captain  Ahoy captain!
    Click continue button
    Enter payment details  ${CARD_NUMBER}  ${EXPIRY_DATE}  ${CVV}  ${NAME}  ${LAST_NAME}
    Click on confirm booking button
    Click on close dialog
    Save booking id to text file
