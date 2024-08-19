*** Settings ***
Library    SeleniumLibrary    timeout=30

*** Keywords ***
Login com credenciais
    [Arguments]                  ${username}    ${password}
    Input Text                   id=username    ${username}
    Input Text                   id=password    ${password}
    Click Button                 id=login
    Element Should Be Visible    id=logout

Validar mensagem de sucesso
    [Arguments]    ${mensagem}
    Element Text Should Be    css=.alert-success    ${mensagem}