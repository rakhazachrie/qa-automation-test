*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://trello.com/login
${browser}        Chrome
${email}          muhrakha8@gmail.com
${pass}           ZGR8890!!

*** Test Cases ***
Test Case 2
    Login
    # Validasi sudah masuk ke dashboard
    Wait Until Element is Visible    class:boards-page-board-section-list-item    10
    # Membuat board
    Click Element    class:_1N9LJYg3C9x47Y
    Wait Until Element is Visible    class:_3Qtx4lodxp9J0E    10
    Click Element    class:_3Qtx4lodxp9J0E
    Wait Until Element is Visible    class:_34UgjJGHhRxDQr    10
    Input Text    xpath=//label[@class='_34UgjJGHhRxDQr']//input[@class='nch-textfield__input _2N2CjUFKhgeXLO _2N2CjUFKhgeXLO _3pXGTS3_pwahBt']    Testing AUTOMATION
    Wait Until Element is Visible    xpath= //button[@class='_2NEPrwhDnsG_qO _3TTqkG5muwOzqZ _3Ik0JLsERwh6Ui _1Tu9wiuW4Te8Rx']
    Click Button    xpath= //button[@class='_2NEPrwhDnsG_qO _3TTqkG5muwOzqZ _3Ik0JLsERwh6Ui _1Tu9wiuW4Te8Rx']
    BuiltIn.Sleep    2s
    # Validasi sudah redirect
    Page Should Contain    Testing AUTOMATION
    Page Should Contain Element    xpath= //a[@class='open-add-list js-open-add-list']

*** Keywords ***
Login
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Proses Login
    Wait Until Element is Enabled    id:user    10
    Input Text    id:user    ${email}
    Click Element    id:login
    Wait Until Element is Enabled    class:heading-prefix    10
    Page Should Contain    muhrakha8@gmail.com
    Input Text    name:password    ${pass}
    Click Element    id:login-submit
