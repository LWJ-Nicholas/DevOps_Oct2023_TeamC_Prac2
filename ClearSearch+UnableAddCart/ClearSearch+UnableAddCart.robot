*** Settings ***
Library    SeleniumLibrary
Documentation

*** Variables ***
${form_url}    https:\\www.lazada.sg 
${search_item1}    Milo 
${search_item2}    Milk


*** Test Cases ***
Verify that 'Add to Cart' only works after login.
    [Documentation]
    [tags]
    Open Browser    ${form_url}    chrome
    Input Text    id:q    ${search_item1}
    Click Button    xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
    Double Click Element    xpath=//*[@id="root"]/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[1]/div/a/div/img
    Click Button    xpath=//*[@id="module_redmart_add_to_cart"]/div/div/button
    Sleep    5
    Capture Page Screenshot

    [Teardown]    Close Browser


Verify that the "Clear" button in search works.
    [Documentation]
    [tags]
    Open Browser    ${form_url}    chrome
    Input Text    id:q    ${search_item1}
    Click Button    xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
    Double Click Element    xpath=//*[@id="root"]/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[1]/div/a/div/img
    Double Click Element   xpath=//*[@id="topActionHeader"]/div[1]/div[2]/div/div[1]/a    #return to home page

    Input Text    id:q    ${search_item2}
    Click Button    xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
    Double Click Element    xpath=//*[@id="root"]/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[1]/div/a/div/img
    Double Click Element   xpath=//*[@id="topActionHeader"]/div[1]/div[2]/div/div[1]/a    #return to home page

    Double Click Element    xpath=//*[@id="q"]
    Click Element    xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[3]/div[1]/div[1]/div[2]    #clear search history
    Sleep    5
    Capture Page Screenshot

    [Teardown]    Close Browser