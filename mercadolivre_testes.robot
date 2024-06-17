*** Settings ***
Documentation   Essa suite de teste é para testar o site do mercadolivre
Resource    mercadolivre_resources.robot
Test Setup    Abrir o navegador

***Test Cases***
Caso de Teste 01 - Acessar o menu "Supermercado" do site
    [Documentation]    Esse verifica se estou no menu
    [Tags]  menus
    Acessar a home page do site Mercadolivre.com.br
    Entrar no menu "Ofertas"
    Verificar se aparece a frase "Aproveite esses preços agora mesmo!" | Mercadolivre.com.br
    Verificar se o titulo da pagina fica "Aproveite esses preços agora mesmo!" | Mercadolivre.com.br" 
    Verificar se aparece a categoria "Ofertas" | Mercadolivro.com.br"

Caso de Teste 02 - Pesquisar produto
    [Documentation]    Fazer a busca de produto
    [Tags]     busca_prduto
    Acessar a home page do site Mercadolivre.com.br
    Digitar o nome do produto "Sanduicheira Elétrica Cadence Toast & Grill Prime Inox Cor Inox/Preto 127V" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa,se está listando o produto "Sanduicheira Elétrica Cadence Toast & Grill Prime Inox Cor Inox/Preto 127V"

Caso de Teste 03 - Carrinho de Compras
    [Documentation]    Abre o carrinho de compras
    [Tags]    carrinho_compras
    Acessar a home page do site Mercadolivre.com.br
    Clicar no botão do carrinho de compras

