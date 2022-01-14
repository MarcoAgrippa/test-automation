*** Settings ***
Resource    ../keywords/common.resource


*** Variables ***
${CLOSE_DIALOG_BTN}     //button[@class= 'close']
${TRIP_ID}              //strong[@data-testid= 'booking-id']


*** Keywords ***
Click on close dialog
    Click on element    ${CLOSE_DIALOG_BTN}
