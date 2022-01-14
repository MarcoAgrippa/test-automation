*** Settings ***
Resource    ../../web/keywords/common.resource
Resource    ../../web/pages/payment_page.resource
Resource    data_creation.resource


*** Keywords ***
Enter payment details
    [Arguments]  ${card_number}  ${expiry_date}  ${cvv}  ${name}  ${last_name}
    Enter card number  ${card_number}
    Enter card expiry date    ${expiry_date}
    Enter card security code    ${cvv}
    Enter name on the card    ${name}  ${last_name}
    Enter zip code

Enter card number
    [Arguments]  ${card_number}
    Enter text into iFrame  ${CARD_IFRAME}  ${CREDIT_CARD_NUMBER}   ${card_number}

Enter card expiry date
    [Arguments]  ${expiry_date}
    Enter text into iFrame  ${EXPIRY_DATE_IFRAME}   ${EXPIRY_DATE_INPUT}    ${expiry_date}

Enter card security code
    [Arguments]  ${security_code}
    Enter text into iFrame  ${SECURITY_CODE_IFRAME}   ${SECURITY_CODE_INPUT}    ${security_code}

Enter name on the card
    [Arguments]  ${name}  ${last name}
    ${name_on_the_card}  Catenate  ${name} ${last name}
    Enter text into iFrame  ${CARD_HOLDER_NAME_IFRAME}   ${CARD_HOLDER_NAME_INPUT}    ${name_on_the_card}

Enter zip code
    ${zip_code}  Generate random zip code
    Enter text into iFrame  ${POSTAL_CODE_IFRAME}   ${POSTAL_CODE_INPUT}    ${zip_code}
