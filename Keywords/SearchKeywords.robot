*** Keywords ***
Verify that \ Search page is displayed
    Wait Until Element Is Visible    ${Fotter_Search_Page}

Search Page in Footer
    Click Element    ${Footer_Search}

Verify that search was unsuccesful
    Wait Until Page Contains    No products were found that matched your criteria.

SubCat Search Button
    Click Element    ${Search_Button}

Verify that Search In product descriptions checkbox is selected
    Checkbox Should Be Selected    ${Search_In_product_descriptions}

Search In product descriptions Checkbox
    Select Checkbox    ${Search_In_product_descriptions}

Price Range1
    [Arguments]    ${1400}
    Input Text    ${Price range2}    ${1400}

Price range
    [Arguments]    ${1200}
    Input Text    ${Price range1}    ${1200}

Manufacturer Dropdown
    Select From List By Label    ${Manufacturer_Dropdown}    HP

Verify if automatically search sub categories check box is not selected
    Checkbox Should Not Be Selected    ${Automatically_search_sub_categories}

Category Dropdown
    Select From List By Value    ${Category_Dropdown}    1

Verify that \ Advanced search Checkbox is working
    Checkbox Should Be Selected    ${Advanced_search}

Advanced search Checkbox
    Select Checkbox    ${Advanced_search}

Valid Searhc phrase
    [Arguments]    ${Laptop}
    Input Text    ${Search_keyword}    ${Laptop}

Verify that search is not lower-case letters sensitive
    Wait Until Page Contains    Nokia Lumia 1020

Autosugestive keyboard
    Press Keys    ${Search_field}    ARROW_DOWN

Verify that page contains \ the selected item
    Wait Until Page Contains    Nokia Lumia 1020

Verify that autosugestive product is visible
    Wait Until Element Is Visible    ${Nokia_Product}

Verify that search works for a less then 3 character
    Wait Until Page Contains    Search term minimum length is 3 characters

Pop Up Alert
    Handle alert    Accept

Verify that produc is not availible on the ecommerce site
    Wait Until Page Contains    No products were found that matched your criteria.

Verify that product is visible
    Wait Until Element Is Visible    //a[text()='HTC One Mini Blue']

Search Button
    Click Element    ${Search_btn}

Input text into search field
    [Arguments]    ${HTC_One_Mini_Blue}
    Input Text    ${Search_field}    ${HTC_One_Mini_Blue}
