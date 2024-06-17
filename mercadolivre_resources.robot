*** Settings ***

Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL}    https://www.mercadolivre.com.br/
${OFERTAS}    //a[@href='https://www.mercadolivre.com.br/ofertas/supermercado#nav-header'][contains(.,'Supermercado')]
${TEXTO_HEADER_OFERTAS}    Aproveite esses preços agora mesmo!
${TITULO}    Aproveite esses preços agora mesmo!
${NOME_CATEGORIA}   //a[@href='https://www.mercadolivre.com.br/ofertas?container_id=MLB779362-1&category=MLB5672#filter_applied=category_id&origin=qcat&filter_position=4']


...    
***Keywords***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar Browser Window
    Close Browser


Acessar a home page do site Mercadolivre.com.br
    Go To   url=${URL}


Entrar no menu "Ofertas"
    Click Element     locator-${OFERTAS}

Verificar se aparece a frase "Aproveite esses preços agora mesmo!" | Mercadolivre.com.br
    Wait Until Page Contains    text=${TEXTO_HEADER_OFERTAS}

Verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title-${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator-//img[constain(@alt,'${NOME_CATEGORIA})']

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=//input[contains(@type,'text')]    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=//div[contains(@role,'img')]

Verificar o resultado da pesquisa,se está listando o produto "Sanduicheira Elétrica Cadence Toast & Grill Prime Inox Cor Inox/Preto 127V"
    Wait Until Element Is Visible    //h2[@aria-level='3'][contains(.,'Sanduicheira Elétrica Cadence Toast & Grill Prime Inox Cor Inox/Preto 127V')] 


Clicar no botão do carrinho de compras
    Click Element     //i[contains(@class,'nav-icon-cart')]
