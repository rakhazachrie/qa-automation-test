*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://trello.com/login
${browser}        Chrome
${email}          muhrakha8@gmail.com
${pass}           ZGR8890!!

*** Test Cases ***
Test Case 3
    Login
    # Validasi sudah masuk ke dashboard
    Wait Until Element is Visible    class:boards-page-board-section-list-item    10
    Click Element    class:boards-page-board-section-list-item
    BuiltIn.Sleep    4s
    # Membuat List
    Click Element    xpath= //a[@class='open-add-list js-open-add-list']
    Input Text    xpath= //div[@class='js-add-list list-wrapper mod-add']//input[@class='list-name-input']    To Do
    Click Element    xpath= //input[@value='Add list']
    BuiltIn.Sleep    2s
    Input Text    xpath= //div[@class='js-add-list list-wrapper mod-add']//input[@class='list-name-input']    Done
    Click Element    xpath= //input[@value='Add list']
    BuiltIn.Sleep    2s
    # Validasi List
    Page Should Contain Element    xpath= //textarea[contains(text(), 'To Do')]
    Page Should Contain Element    xpath= //textarea[contains(text(), 'Done')]
    #Membuat card
    Click Element    xpath= //a[@class='open-card-composer js-open-card-composer']
    Input Text    xpath= //div[@class='list-card-details u-clearfix']//textarea[@class='list-card-composer-textarea js-card-title']    NEW Test 1
    Click Element    xpath= //input[@value='Add card']

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
