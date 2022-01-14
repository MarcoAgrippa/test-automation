*** Settings ***
Resource    ../../web/keywords/common.resource
Library    OperatingSystem
Library    String


*** Keywords ***
Set test variables
    ${file}    Get File    config/setup.json
    ${json}    Evaluate    json.loads('''${file}''')    json
    Set Test Variable    ${URL}  ${json["url"]}
    Set Test Variable    ${CARD_NUMBER}  ${json["visa"]["card_number"]}
    ${expiry_date}   Remove String  ${json["visa"]["expiry_date"]}  /
    Set Test Variable    ${EXPIRY_DATE}  ${expiry_date}
    Set Test Variable    ${CVV}  ${json["visa"]["cvv"]}
