*** Settings ***
Documentation    Teste de compra na DemoBlaze
Resource         ../resources/variablesDev.robot
Resource         ../keywords/purchaseKeywords.robot

*** Test Cases ***
ExcluirProduto
    [Tags]    excluir
    Adicionar item no carrinho de compras
    Excluir item no carrinho de compras

RealizarCompra
    [Tags]    compra
    Adicionar item no carrinho de compras
    Finalizar compra