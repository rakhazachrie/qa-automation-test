*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://trello.com/login
${browser}        Chrome
${email}          muhrakha8@gmail.com
${pass}           ZGR8890!!

*** Test Cases ***
TestCase1
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
    # Validasi sudah masuk ke dashboard
    Wait Until Element is Enabled    class:_2LKdO6O3n25FhC    15
    # Validasi akun yang login
    Click Element    class:_2LKdO6O3n25FhC
    Page Should Contain    Muhammad Rakha Zachrie
    Page Should Contain    ${email}
