*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test Case 4
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
    # Memindahkan card
    Click Element    xpath= //a[@class='list-card js-member-droppable ui-droppable']
    BuiltIn.Sleep    2s
    Click Element    xpath= //a[@class='button-link js-move-card']
    Click Element    xpath= //select[@class='js-select-list']
    Wait Until Element is Visible    xpath= //option[contains(text(), 'Done')]
    Click Element    xpath= //option[contains(text(), 'Done')]
    Click Element    xpath= //input[@value='Move']
    Click Element    xpath= //a[@class='icon-md icon-close dialog-close-button js-close-window']
