*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Dialogs
Library    RequestsLibrary
Resource    variables.robot
Documentation    Hanisah Test case of Create account and Login

*** Keywords ***
Check Website Online
    Create Session    ${session_name}    ${url}
    ${response}=    GET On Session    ${session_name}    \
    Should Be Equal As Strings    ${response.status_code}    200

*** Test Cases ***
Create Account
    [Documentation]    This is to fill in the sign up form and try to bypass the robot detection system using Pause Execution to manually slide/capcha
    Check Website Online
    Open Browser    ${url}    chrome
    Click Element    ${sign_up_button}
    Click Element    ${sign_up_using_email_button}
    Input Text    locator=${email_input_01}    text=${email}
    Input Text    locator=${full_name_input}    text=${full_name}
    Click Element    ${notif_checkbox}
    Input Text    locator=${password_input_01}    text=${password}
    Click Element    ${month_dropdown}
    Sleep    1s
    Click Element    ${month}   
    Click Element    ${day_dropdown}
    Sleep    1s
    Click Element    ${day}   
    Click Element    ${year_dropdown}
    Sleep    1s
    Click Element    ${year}   
    Click Element    ${gender_dropdown}
    Sleep    1s
    Click Element    ${gender}   
    Pause Execution 
    Close Browser

Login
    [Documentation]    This is to fill in the login form and try to bypass the robot detection system using Pause Execution to manually slide/capcha
    Check Website Online
    Open Browser    ${url}    chrome
    Click Element    ${login_button}
    Input Text    locator=${email_input_02}    text=${email}
    Sleep    2s
    Input Text    locator=${password_input_02}    text=${password}
    Sleep    2s
    Pause Execution 
    Close Browser