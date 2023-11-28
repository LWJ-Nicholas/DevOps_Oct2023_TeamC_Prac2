*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Library    Dialogs
Library    RequestsLibrary
Documentation    Hanisah Test case of Create account and Login - Fail, Success

*** Variables ***
${my_URL}    https://www.lazada.sg/
${my_Query}    python
${csv_file_path}    ${CURDIR}\\myData.csv
${URL_request_base}    https://www.lazada.sg/
${session_name}    MySession

*** Keywords ***
Do The Usual with Pauses
    Open Browser   ${my_URL}    chrome
    Input Text    locator=q    text=${my_Query}
    Capture Page Screenshot
    Pause Execution
    Press Keys    None    ENTER
    Pause Execution
    Close Browser 

*** Test Cases ***
URL Test
    [Documentation]    This is the test for Create Account
    Open Browser    ${my_URL}    chrome
    Title Should Be    Lazada.sg: Online Shopping Singapore - Electronics, Home Appliances, Mobiles, Tablets & more
    Location Should Be    https://www.lazada.sg/
    Close Browser

Simple launch and search in lazada test
    [Documentation]    Launch Lazada and search for Python
    [Tags]    Regression
    Open Browser    ${my_URL}    chrome
    Input Text    locator=q    text=${my_Query}  
    Press Keys    None    ENTER
    [Teardown]    Close Browser  
Read from CSV
    ${csv_data}=    Run    type ${csv_file_path}
    Log    CSV Data : ${csv_data}
    ${csv_rows}=    Split To Lines   ${csv_data}
    FOR    ${element}    IN    @{csv_rows}
        Log    ${element}
        
    END

Customised Keywords
    Do The Usual with Pauses

Get response from Website
    Create Session    ${session_name}    ${URL_request_base}
    ${response}=    GET On Session    ${session_name}    \
    Should Be Equal As Strings    ${response.status_code}    200
