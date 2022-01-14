*** Settings ***
Resource    ../keywords/common.resource
Library    String


*** Variables ***
${NAME_INPUT}           //*[@placeholder='Enter your first name']
${LAST_NAME_INPUT}      //*[@placeholder='Enter your last name']
${EMAIL_INPUT}          //*[@placeholder='Watch out for typos']
${PHONE_INPUT}          //*[@placeholder='+1 201-555-0123']
${NOTE_TEXT_AREA}       //textarea[@data-testid='special-requests-textarea']
${CONTINUE_BTN}         //button[@type= 'submit']


*** Keywords ***
Click continue button
    Click on element  ${CONTINUE_BTN}
