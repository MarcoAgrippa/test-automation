*** Settings ***
Library  FakerLibrary
Library    String


*** Keywords ***
Get random name
    ${name}  FakerLibrary.First Name Female
    [Return]  ${name}

Get random last name
    ${surname}  FakerLibrary.Last Name Female
    [Return]  ${surname}

Generate email adress
    [Arguments]  ${name}  ${last_name}
    ${user_name}  Convert To Lower Case   ${name}
    ${user_last_name}  Convert To Lower Case   ${last_name}
    ${email}  Catenate  ${user_name}${user_last_name}@randomemail.com
    [Return]  ${email}

Generate random phone number
    ${phone_number}  Random Number  digits=9
    [Return]  ${phone_number}

Generate random zip code
    ${zip_code}  Random Number  digits=5
    [Return]  ${zip_code}

Get random password
    [Arguments]  ${length}=10  ${special_chars}=True  ${digits}=True  ${upper_case}=True  ${lower_case}=True
    ${password}  FakerLibrary.Password  length=${length}  special_chars=${special_chars}  digits=${digits}
    ...  upper_case=${upper_case}  lower_case=${lower_case}
    [Return]  ${password}
