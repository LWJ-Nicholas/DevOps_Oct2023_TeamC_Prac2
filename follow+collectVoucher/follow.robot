*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Dialogs
Library    RequestsLibrary
Resource    variables.robot
Documentation    Elliot Test case of following store up to login page

*** Keywords ***
Check Website Online
    [Arguments]    ${url}
    Create Session    ${session_name}    ${url}
    ${response}=    GET On Session    ${session_name}    /    # Provide the URL here
    Should Be Equal As Strings    ${response.status_code}    200


Click Store and Follow
    [Arguments]    ${store_locator}    ${follow_button_locator}
    Click Element    ${store_locator}
    Click Element    ${follow_button_locator}
    Sleep    3s
    [Teardown]    CLose Browser

*** Test Cases ***
Check Website Online
    [Documentation]    Check if the website is online
    [Tags]    Smoke
    Check Website Online    ${url}

Follow Store Test
    [Documentation]    Click on a store, follow, and then close the browser
    [Tags]    Regression
    Open Browser    ${url}    chrome
    Check Website Online    ${url}
    Click Store and Follow    ${store_locator}    ${follow_button_locator}
