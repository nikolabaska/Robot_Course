*** Keywords ***
Verify the Computers menu
    Wait Until Element Is Visible    ${Computers}

Navigate to Notebooks submenu
    Mouse Over    ${Notebooks}

Click on Notebooks subemnu
    Click Element    ${Notebooks}

Select Hp_Envy product
    Click Element    ${Hp_Envy_Product}

Verify the product is visible
    Wait Until Page Contains    HP Envy 6-1180ca 15.6-Inch Sleekbook

CPU Filter by attributes
    Click Element    ${CPU_Type}

Verify that CPU Type is visible in Filter by attributes
    Wait Until Element Is Visible    ${CPU_Verify}

Memory Filter by attributes
    Click Element    ${Memory}

Navigate to Computers Menu
    Mouse Over    ${Computers}

Verify that product is added to cart
    Wait Until Element Is Visible    ${pop_up_not}

Click on add to cart
    Click Element    ${Add_to_cart_button}

Input product quantity
    [Arguments]    ${2}
    Input Text    ${Quantity_field}    ${2}

Verify that producit is avalible
    Wait Until Page Contains    Nikon D5500 DSLR

Click on add to cart button
    Click Element    ${Add_to_cart}

Verify that Camera&Photo page is visible
    Wait Until Element Is Visible    xpath://html/body/div[6]/div[3]/div[2]/div[2]/div/div[1]/h1

Click on CameraandPhoto Submenu
    Click Element    ${Camera_and_Photo}

Navigate to Camera&Photo submenu
    Mouse Over    ${Camera_and_Photo}

Navigate to Electronics menu
    Mouse Over    ${Electronics}

Verify that Remove filter button works
    Wait Until Element Is Visible    ${CPU_Type}

Remove filter button
    Click Element    ${Remove_Filter}

Verify that \ Samsung produt is visible
    Wait Until Page Contains    Samsung Series 9 NP900X4C Premium Ultrabook

Click on Samsung Product
    Click Element    ${Samsung_Product}

Verify that Memory type is visible
    Wait Until Page Contains    Memory: 8 GB
