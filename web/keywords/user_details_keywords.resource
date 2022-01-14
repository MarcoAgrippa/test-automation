*** Settings ***
Resource    ../../web/keywords/common.resource
Resource    ../../web/pages/user_details_page.resource
Resource    data_creation.resource


*** Keywords ***
Enter user details
    Enter user name
    Enter user last name
    Enter email
    Enter phone number


Enter user name
    ${name}  Get random name
    Enter text    ${NAME_INPUT}    ${name}
    Set Test Variable    ${NAME}  ${name}

Enter user last name
    ${last_name}  Get random last name
    Enter text    ${LAST_NAME_INPUT}    ${last_name}
    Set Test Variable    ${LAST_NAME}  ${last_name}
    
Enter email
    ${email}  Generate email adress  ${NAME}  ${LAST_NAME}
    Enter text    ${EMAIL_INPUT}    ${email}

Enter phone number
    ${phonenumber}  Generate random phone number
    Enter text    ${PHONE_INPUT}    ${phonenumber}

Enter a note to captain
    [Arguments]  ${note}
    Enter text    ${NOTE_TEXT_AREA}    ${note}
