*** Settings ***
Resource    ../resources/variablesDev.robot
Resource    ../resources/commonKeywords.robot
Library    SeleniumLibrary

*** Keywords ***
Adicionar item no carrinho de compras
    [Documentation]    Adiciona um MacBook Pro ao carrinho de compras na DemoBlaze.
    Open Browser                     ${url}    ${navegador}
    Maximize Browser Window
    Click Link                       Laptops
    Wait Until Element Is Visible    link=MacBook Pro
    Click Link                       MacBook Pro
    Wait Until Element Is Visible    xpath=//div[2]//a
    Click Element                    xpath=//div[2]//a
    Alert Should Be Present

Excluir item no carrinho de compras
    [Documentation]    Exclui um item no carrinho.
    Click Link         Cart
    Wait Until Element Is Visible    link=Delete
    Click Link         Delete

Finalizar compra
    [Documentation]    Finaliza a compra de um item no carrinho.
    Click Link                       Cart
    Click Button                     css=.btn-success
    Wait Until Element Is Visible    id=name
    Input Text                       id=name       William Vianna
    Input Text                       id=country    Brasil
    Input Text                       id=city       São Paulo
    Input Text                       id=card       12345678910
    Input Text                       id=month      07
    Input Text                       id=year       2030
    Click Button                     xpath=//button[text()='Purchase']
    Element Text Should Be           css=.sweet-alert > h2    Thank you for your purchase!
    Click Button                     css=.confirm