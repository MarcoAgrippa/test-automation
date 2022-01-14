*** Settings ***
Resource    ../keywords/common.resource
Library    String


*** Variables ***
${CARD_IFRAME}               css:#braintree-hosted-field-number
${CREDIT_CARD_NUMBER}        //input[@id='credit-card-number']
${EXPIRY_DATE_IFRAME}        css:#braintree-hosted-field-expirationDate
${EXPIRY_DATE_INPUT}         //*[@placeholder='MM/YY']
${SECURITY_CODE_IFRAME}      css:#braintree-hosted-field-cvv
${SECURITY_CODE_INPUT}       //*[@placeholder='CVV']
${CARD_HOLDER_NAME_IFRAME}   css:#braintree-hosted-field-cardholderName
${CARD_HOLDER_NAME_INPUT}    css:input[class='cardholderName']
${POSTAL_CODE_IFRAME}        css:#braintree-hosted-field-postalCode
${POSTAL_CODE_INPUT}         //input[@id='postal-code']
${CONFIRM_BOOKING_BTN}       //button[@type= 'submit']


*** Keywords ***
Click on confirm booking button
    Click on element    ${CONFIRM_BOOKING_BTN}

Click on credit card number
    Click on element    ${CREDIT_CARD_NUMBER}
