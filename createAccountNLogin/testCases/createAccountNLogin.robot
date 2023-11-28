*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Library    Dialogs
Library    RequestsLibrary
Documentation    Hanisah Test case of Create account and Login - Fail, Success

*** Variables ***
${url}    https://www.lazada.sg/

${email}    basic_emailever@gmail.com
${full_name}    Basic NameEver
${password}    P@55w0rd123@

${sign_up_button}    //a[.//text() = 'sign up']
${sign_up_using_email_button}    //button[.//text() = 'Sign up with Email']
${email_input}    //input[@placeholder='Please enter your email']
${full_name_input}    //input[@placeholder='First Last']
${notif_checkbox}    //input[@id='enableNewsletter']
${password_input}    //input[@placeholder='Minimum 8 characters with number, letter and characters.']
${month_dropdown}    //span[@id='month']
${month}    //ul[@class='next-menu-content']/li[4]
${day_dropdown}    //span[@id='day']
${day}    //ul[@class='next-menu-content']/li[27]
${year_dropdown}    //span[@id='year']
${year}    //ul[@class='next-menu-content']/li[23]
${gender_dropdown}    //span[@id='gender']
${gender}    //ul[@class='next-menu-content']/li[2]

*** Test Cases ***
Create Account
    Open Browser    ${url}    chrome
    Click Element    ${sign_up_button}
    Click Element    ${sign_up_using_email_button}
    Input Text    locator=${email_input}    text=${email}
    Input Text    locator=${full_name_input}    text=${full_name}
    Click Element    ${notif_checkbox}
    Input Text    locator=${password_input}    text=${password}
    Click Element    ${month_dropdown}
    Click Element    ${month}   
    Click Element    ${day_dropdown}
    Sleep    1
    Click Element    ${day}   
    Click Element    ${year_dropdown}
    Sleep    1
    Click Element    ${year}   
    Click Element    ${gender_dropdown}
    Sleep    1
    Click Element    ${gender}   
    Sleep    5
    Close Browser

Login Fail and pass
    