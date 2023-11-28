*** Settings ***
Library    SeleniumLibrary
Documentation    Hanisah Test case of Create account and Login - Fail, Success

*** Test Cases ***
URL Test
    [Documentation]    This is the test for Create Account
    Open Browser    https:\\www.lazada.sg    chrome
    Title Should Be    Lazada.sg: Online Shopping Singapore - Electronics, Home Appliances, Mobiles, Tablets & more
    Location Should Be    https://www.lazada.sg/
    Close Browser