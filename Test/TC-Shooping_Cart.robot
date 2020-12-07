*** Settings ***
Suite Setup       Open Browser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/ShoppingCartKeywords.robot
Resource          ../Locators/ShoppingCartLocators.robot

*** Test Cases ***
Add product to cart
    Navigate to Apparel
    Verify that Apparel page is dispayed
    Click on Cloting subcategory
    Click on Levis 501 product
    Click and verify taht product cart page \ is displayd

Remove product from Cart
    Navigate to Books menu and verify page
    Click Add to carrt button
    Sleep    5
    Click on Pop Up Cart Link
    Sleep    5
    Verify that user is on \ shopin cart page
    FOR    ${i}    IN RANGE    1
        Select Checkbox    ${Remove}
        Click on Updat button and verify that user cart is empty
    END

Remove product from Cart by entering 0 in quantity field
    Navigate to Books menu and verify page
    Click Add to carrt button
    Click on Pop Up Cart Link
    Qaunatity field    0
    Click on Updat button and verify that user cart is empty

Check if the same product is possible to be added multiple times
    Navigate to Apparel
    Verify that Apparel page is dispayed
    Click on Cloting subcategory
    Click on Levis 501 product
    Click on Levis 501 product
    Click and verify taht product cart page \ is displayd

Check the hover functionality of the shopping cart icon when the shoping cart is empty
    Mouse Over    //*[@id="topcartlink"]/a
    Wait Until Element Is Visible    //*[@id="flyout-cart"]/div/div

*** Keywords ***
