Dado('que o usuario queira se logar') do
  login.load
  end
  
  Quando('ele digitar credenciais validas') do
    login.userLogin(CREDENTIAL[:adm][email], CREDENTIAL[:adm][:password])
  end
  
  Entao('deve acessar o site com sucesso') do
    login.checkLoginSuccessful 
  end