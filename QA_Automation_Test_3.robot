*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test Case 3
    Open Browser    https://trello.com/login    Chrome
    Maximize Browser Window
    # Proses Login
    Wait Until Element is Enabled    id:user    10
    Input Text    id:user    muhrakha8@gmail.com
    Click Element    id:login
    Wait Until Element is Enabled    class:heading-prefix    10
    Page Should Contain    muhrakha8@gmail.com
    Input Text    name:password    ZGR8890!!
    Click Element    id:login-submit
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
    # Validasi List
    Page Should Contain    To Do
    Page Should Contain    Done
    #Membuat card
    Click Element    xpath= //a[@class='open-card-composer js-open-card-composer']
    Input Text    xpath= //div[@class='list-card-details u-clearfix']//textarea[@class='list-card-composer-textarea js-card-title']    NEW Test 1
    Click Element    xpath= //input[@value='Add card']