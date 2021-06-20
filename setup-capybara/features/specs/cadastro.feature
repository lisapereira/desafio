# language: pt

@cadastroNovo
Funcionalidade: Criar conta
    Eu como cliente 
  	Quero poder criar uma conta
  	Para conseguir ter acesso a meu histórico e fazer compras

    Cenário: Email válido
        Dado que esteja na tela de login 
        Quando colocar um e-mail "válidos" 
        Então preencho as informações solicitadas

    Cenário: Email inválido
        Dado que esteja na tela de login 
        Quando colocar um e-mail "inválidos"
        Então vejo a mensagem de erro

    # Cenário: Cadastrar informações
    #     Dado que email "válido"
    #     E esteja na tela de Cadastro
    #     Quando preencho as informações solicitadas
    #     Então finalizo o cadastro 
