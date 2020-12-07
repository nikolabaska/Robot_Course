*** Settings ***
Suite Setup       Open Browser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/ProductListKeywords.robot
Resource          ../Locators/ProductLisLocators.robot

*** Test Cases ***
Confirm that Hp Notebook can be found in computers category
    Navigate to Computers Menu
    Verify the Computers menu
    Navigate to Notebooks submenu
    Click on Notebooks subemnu
    Select Hp_Envy product
    Verify the product is visible

Verify the filter option is working
    Navigate to Computers Menu
    Navigate to Notebooks submenu
    Click on Notebooks subemnu
    CPU Filter by attributes
    Verify that CPU Type is visible in Filter by attributes
    Memory Filter by attributes
    Verify that Memory type is visible
    Click on Samsung Product
    Verify that \ Samsung produt is visible

Check if the button REMOVE FILTER is clearing the filtered choises
    Navigate to Computers Menu
    Navigate to Notebooks submenu
    Click on Notebooks subemnu
    CPU Filter by attributes
    Verify that CPU Type is visible in Filter by attributes
    Memory Filter by attributes
    Verify that Memory type is visible
    Remove filter button
    Verify that Remove filter button works

Verify Add to cart should work properly with awailible products
    Navigate to Electronics menu
    Navigate to Camera&Photo submenu
    Click on CameraandPhoto Submenu
    Verify that Camera&Photo page is visible
    Click on add to cart button
    Verify that producit is avalible
    Input product quantity    2
    Click on add to cart
    Verify that product is added to cart

Verify Add to cart should work properly with unawailible products
    Navigate to Electronics menu
    Navigate to Camera&Photo submenu
    Clicl Element    xpath://html/body/div[6]/div[3]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]/h2/a

*** Keywords ***
