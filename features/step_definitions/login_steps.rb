Dado('que estou na tela de login') do
@login = LoginPage.new
@login.load

end
  
Quando('colocar credenciais {string}') do |credencias|

    @login = LoginPage.new
    
    case credencias

        when 'válidas'
           @login.fazer_login 'elizabethweb.santos@gmail.com', 'inuyasha'
        when 'inválidas'
           @login.fazer_login 'elizabethweb.santos@gmail.com','inuyasha22'
    end
    sleep(3) #espera ai 3 segundos e depois vc segue.. é espera explicita 
end
  
Então('vejo as informações da minha conta') do
    expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.')
    
    #expect(page).to_not have_content('sfb')

    #expect(page).to have_css('#email') #se a pagina tem o seletor email

end
  
Então('vejo uma mensagem de erro') do
    expect(page).to have_content('Authentication failed.')
end

