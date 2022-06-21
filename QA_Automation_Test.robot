*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TestCase1
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
    Wait Until Element is Enabled    class:_2LKdO6O3n25FhC    15
    # Validasi akun yang login
    Click Element    class:_2LKdO6O3n25FhC
    Page Should Contain    Muhammad Rakha Zachrie
