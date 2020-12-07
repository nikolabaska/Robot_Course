*** Settings ***
Suite Setup       Open Browser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/SearchKeywords.robot
Resource          ../Locators/SearchLocators.robot

*** Test Cases ***
Search for existing product
    Input text into search field    HTC One Mini Blue
    Search Button
    Verify that product is visible

Search for non-existing product
    Input text into search field    xiaomi
    Search Button
    Verify that produc is not availible on the ecommerce site

Test seach engine if search field is empty
    Search Button
    Pop Up Alert

Test if search works for a less then 3 character keyword
    Input text into search field    HT
    Search Button
    Verify that search works for a less then 3 character

Check if auto-suggestion displays suggestions in the search field
    Input text into search field    Nok
    Search Button
    Verify that autosugestive product is visible

Test auto-suggestions displayed in the search field
    Input text into search field    Nok
    Autosugestive keyboard
    Search Button
    Verify that page contains \ the selected item

Test if the searh is case insensitive
    Input text into search field    nokia lumia 1020
    Search Button
    Verify that search is not lower-case letters sensitive

Run unsuccesful search using the Advanced searh option
    Input text into search field    Xiaomi
    Search Button
    Valid Searhc phrase    Laptop
    Advanced search Checkbox
    Verify that \ Advanced search Checkbox is working
    Category Dropdown
    Verify if automatically search sub categories check box is not selected
    Manufacturer Dropdown
    Price range    1200
    Price Range1    1400
    Search In product descriptions Checkbox
    Verify that Search In product descriptions checkbox is selected
    SubCat Search Button
    Verify that search was unsuccesful

Enter Search page from the link in footer
    Search Page in Footer
    Verify that \ Search page is displayed

*** Keywords ***
