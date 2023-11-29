*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Dialogs
Library    RequestsLibrary
Resource    variables.robot
Documentation    Elliot Test case for voucher functionality

*** Keywords ***
Check Website Online
    [Arguments]    ${url}
    Create Session    ${session_name}    ${url}
    ${response}=    GET On Session    ${session_name}    /    # Provide the URL here
    Should Be Equal As Strings    ${response.status_code}    200
Click Vouchers
    [Arguments]    ${vouchers_button_locator}    
    Click Element    ${vouchers_button_locator}
    Sleep    3s
Click Collect Button
    [Arguments]    ${partial_text}
    ${button_element}=    Get WebElement    xpath=//div[contains(., '${partial_text}') and @class='rax-view']
    #${button_locator}=    Get Element Attribute    ${button_element}    xpath
    Click Element    ${button_element}

*** Test Cases ***
Check Website Online
    [Documentation]    Check if the website is online
    [Tags]    Smoke
    Check Website Online    ${url}

Vouchers Test
    [Documentation]    Click on the vouchers button, collect vouchers, and close the browser
    [Tags]    Regression
    Open Browser    ${url}    chrome
    Check Website Online    ${url}
    Click Vouchers      ${vouchers_button_locator}
    Click Collect Button    Collect  
    Sleep    3s
