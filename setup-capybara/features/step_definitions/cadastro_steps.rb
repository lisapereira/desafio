Dado('que esteja na tela de login') do
@cadastroNovo = CadastroPage.new
@random_string = SecureRandom.hex(7)
@cadastroNovo.load

end
  
Quando('colocar um e-mail {string}') do |cadastro|
 @cadastroNovo = CadastroPage.new
 
    case cadastro
        when   'válidos'
           @cadastroNovo.criar_conta @random_string+'@email.com'
        when   'inválidos'
            @cadastroNovo.criar_conta 'elizabethweb.santos@gmail.com'
    end
    sleep(5)
end
  
Então('preencho as informações solicitadas') do

    expect(page).to have_content('YOUR PERSONAL INFORMATION')

    @cadastroNovo.preencher_dados 'Elizabeth', 'Pereira', '123456', 'Vila Isabel', 'Arkansas','22222', '999999999', 'Vila Isabel 2'

end
  
Então('vejo a mensagem de erro') do
    expect(page).to_not have_content('YOUR PERSONAL INFORMATION')
end








# Dado('que esteja na tela de login') do
# @cadastroNovo = CadastroPage.new
# @cadastroNovo.load
# @random_string = SecureRandom.hex(7)


# end
  
# Quando('colocar um e-mail {string}') do |cadastro|
#     # @cadastroNovo = CadastroPage.new

#     # case cadastro
#     #     when   'válidos'
#     #         @cadastroNovo.criar_conta @random_string +'@email.com'
#     #     when   'inválidos'
#     #         @cadastroNovo.criar_conta 'elizabethweb.santos@gmail.com'
#     # end
#     # sleep(3)


# end
  
# #Quando('o e-mail não exista na base de dados') do

# #end
  
# Então('preencho as informações solicitadas') do

# end
  
# #Então('o cadastro fica {string}') do |string|

# #end
# Então('vejo a mensagem de erro') do
     
# end
  
# Dado('que  email válido') do


#     #expect(page).to have_content('Your personal information')

# end

# Dado ('esteja na tela de Cadastro') do

# end
  
# Quando('preencho as informações solicitadas') do


# end
  
# Então('finalizo o cadastro') do

# end