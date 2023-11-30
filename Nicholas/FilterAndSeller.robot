*** Settings ***
Library    SeleniumLibrary
Documentation

*** Variables ***
${url}                    https:\\www.lazada.sg 
${search}                 gaming laptops
${search_btn}             //*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
${location_filter}        //*[@id="root"]/div/div[2]/div[1]/div/div[2]/div/div[4]/div[2]/div/div/label[1]/span[1]/input
${condition_filter}       //*[@id="root"]/div/div[2]/div[1]/div/div[2]/div/div[7]/div[2]/div/div/label[1]/span[1]/input
${sort}                   //*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[1]/div/div[2]/div/div[2]/div/div/span[2]/div
${laz_mall}               //*[@id="J_PCChannels"]/div/a[1]
${seller}                 //div[@class='lzd-site-nav-menu lzd-site-nav-menu-active ']/div[@class='lzd-site-menu-nav-container']/nav[@class='lzd-menu-labels']/a[@class='lzd-menu-labels-item'][2]
${profile}                //*[@id="pi-component-container"]/div/div[2]/div/div/div/div[2]/div[2]/div/div/div[2]/a[3]

*** Test Cases ***
Verify that Filter function works
    [Documentation]
    Open Browser     ${url}    chrome
    Input Text       id:q    ${search}
    Click Button     xpath= ${search_btn}
    Click Element    xpath= ${location_filter}
    Click Element    xpath= ${condition_filter}
    Sleep    5
    Capture Page Screenshot
    [Teardown]    Close Browser

Verify that User Can View Seller Profile
    [Documentation]
    Open Browser     ${url}    chrome
    Click Element    xpath= ${laz_mall}
    Click Element    xpath= ${seller}
    Click Element    xpath= ${profile}
    Sleep    5
    Capture Page Screenshot
    [Teardown]    Close Browser