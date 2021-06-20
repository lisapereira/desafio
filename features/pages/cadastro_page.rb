class CadastroPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :input_email_create, '#email_create'
    element :btn_submit_create, '#SubmitCreate'
    element :input_first_name, '#customer_firstname'
    element :input_last_name, '#customer_lastname'
    element :input_passwd, '#passwd'
    element :input_address, '#address1'
    element :input_city, '#city'
    element :select_state, '#id_state'
    element :input_postal_code,'#postcode'
    element :select_country, '#id_country'
    element :input_phone, '#phone_mobile'
    element :input_assign_adress, '#alias'
    element :btn_submit_account, '#submitAccount'

    def criar_conta(email_novo)
        input_email_create.set email_novo
        btn_submit_create.click
    end

    def preencher_dados(primeiro_nome, ultimo_nome, senha, endereco, cidade ,cep ,telefone, endereco2 )
        input_first_name.set primeiro_nome
        input_last_name.set ultimo_nome
        input_passwd.set senha
        input_address.set endereco
        input_city.set cidade
        all('#id_state option')[1].select_option
        input_postal_code.set cep
        input_phone.set telefone
        input_assign_adress.set endereco2
        btn_submit_account.click
    end
        
end

# class CadastroInformationPage < SitePrism::Page
#     set_url 'index.php?controller=authentication#account-creation'

#     element :input_first_name, '#customer_firstname'
#     element :input_last_name, '#customer_lastname'
#     element :input_email, '#email'
#     element :input_passwd, '#passwd'
#     element :input_first_name_copy, '#firstname'
#     element :input_last_name_copy, '#lastname'
#     element :input_address, '#address1'
#     element :input_city, '#city'
#     element :select_state, '#id_state'
#     element :input_postal_code,'#postcode'
#     element :select_country, '#id_country'
#     element :input_phone, '#phone_mobile'
#     element :input_assign_adress, '#alias' 

#     def preencher_dados(primeiro_nome, ultimo_nome, email, senha)
#         input_first_name.set primeiro_nome
#         input_last_name.set ultimo_nome
#         input_email.set email
#         input_passwd.set senha
#     end


#end
