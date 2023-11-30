
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${website_url}    https://www.lazada.sg/
${title}    Lazada.sg: Online Shopping Singapore - Electronics, Home Appliances, Mobiles, Tablets & more            
${item_name}      pen

*** Test Cases ***
Seach for Item
    
    # Go to website and check went to correct website (pre-requisite)
    [Setup]    Open Browser    ${website_url}  chrome
    Title Should Be    ${title}

    # Search for pen
    Input Text    css:input.search-box__input--O34g    ${item_name}
    Click Element    css:button.search-box__button--1oH7
    Element Should Be Visible  css:h1.JrAyI
    Sleep    2s
    
    # Close Browser
    [Teardown]    Close Browser


