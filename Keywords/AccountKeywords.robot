*** Keywords ***
Click and verify My product review functionality
    Click Element    ${My product reviews}
    Wait Until Page Contains    You haven't written any reviews yet

Click and verify My account - Reward points section
    Click Element    ${Reward points }
    Wait Until Page Contains    Your current balance is 0 reward points ($0.00).

Click And verify Back inStock
    Click Element    ${Back in stock }
    Wait Until Page Contains    You are not currently subscribed to any Back In Stock notification lists

Edit New Address
    Click Element    ${Edit_Address}

Click save and verify that address are update
    Click Element    ${Save}
    Wait Until Element Is Visible    ${ChangedAddress}

Input Phone number
    [Arguments]    ${Phone}
    Input Text    ${PhoneNumber}    $[Phone}

Fill the City \ New address and Zipp code fields
    [Arguments]    ${MkCity}    ${Address}    ${Zipp}
    Input Text    ${City}    ${MkCity}
    Input Text    ${NewAddress}    ${Address}
    Input Text    ${ZippCode}    ${Zipp}

Fill the First name last name and email fields
    [Arguments]    ${First_name}    ${Last_name}    ${E-mail}
    Input Text    ${FirstName}    ${First_name}
    Input Text    ${Last_Name}    ${Last_name}
    Input Text    ${Email}    ${E-mail}

Verify that new address page is visible
    Wait Until Page Contains    My account - Add new address

Click on Address subcategory
    Click Element    ${ChangeAddress}

Add New Address
    Click Element    ${Add_Address}

Click on Log Out
    Click Element    ${Log_Out}

Click on Save Button
    Click Element    ${SaveButton}

Change Email
    [Arguments]    ${newE-mail}
    Input Text    ${ChangeEmail}    ${newE-mail}

Click and Verify my account page
    Click Element    ${MyAccount}
    Wait Until Page Contains    My account - Customer info
