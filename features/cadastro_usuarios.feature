#language: pt

Funcionalidade: Cadastro e login de Usuários

  Como um usuário
  Eu quero me cadastrar no aplicativo e acessar minha conta
  Para gerenciar meu perfil, histórico de veículos e preferências de serviços

  Cenário: Cadastro com informações válidas
    Dado que o usuário acessou a tela de cadastro
    Quando ele preenche o nome, e-mail, senha e número de telefone
    E seleciona a opção "Cadastrar"
    Então o sistema deve criar a conta do usuário
    E exibir uma mensagem de confirmação de cadastro bem-sucedido

  Cenário: Cadastro com e-mail já existente
    Dado que o usuário está na tela de cadastro
    E já existe uma conta cadastrada com o mesmo e-mail
    Quando o usuário tenta finalizar o cadastro
    Então o sistema deve exibir uma mensagem de erro informando que o e-mail já está em uso

  Cenário: Cadastro com senha fraca
    Dado que o usuário acessou a tela de cadastro
    E ele preencheu todos os campos corretamente
    Quando o usuário insere uma senha com menos de 8 caracteres
    Então o sistema deve exibir uma mensagem solicitando uma senha mais forte

  Cenário: Cadastro com campos obrigatórios vazios
    Dado que o usuário está na tela de cadastro
    Quando o usuário tenta finalizar o cadastro sem preencher todos os campos obrigatórios
    Então o sistema deve exibir uma mensagem informando quais campos precisam ser preenchidos

  Cenário: Cadastro com número de telefone inválido
    Dado que o usuário preencheu os campos do formulário de cadastro
    Quando ele insere um número de telefone inválido
    Então o sistema deve exibir uma mensagem informando que o número de telefone é inválido

  Cenário: Cadastro com histórico de veículos opcional
    Dado que o usuário está preenchendo as informações de cadastro
    Quando ele optar por adicionar um histórico de veículos
    Então o sistema deve permitir a inclusão dos veículos
    E concluir o cadastro com ou sem o histórico preenchido

  Cenário: Definir preferências de serviços no cadastro
    Dado que o usuário está concluindo o cadastro
    Quando ele decide configurar preferências de serviços automotivos (ex: tipos de serviço favoritos)
    Então o sistema deve permitir que essas preferências sejam salvas para uso futuro

  Cenário: Visualização do perfil pessoal
    Dado que o usuário está logado no sistema
    Quando ele acessa a tela de perfil
    Então o sistema deve exibir suas informações pessoais (nome, e-mail, telefone)
    E permitir a edição dos dados pessoais

  Cenário: Edição dos dados pessoais
    Dado que o usuário acessou a tela de perfil
    Quando ele altera o nome, e-mail ou número de telefone
    E confirma as alterações clicando em "Salvar"
    Então o sistema deve atualizar as informações do usuário
    E exibir a mensagem de "Dados pessoais atualizados com sucesso"

  Cenário: Consulta ao histórico de veículos
    Dado que o usuário está logado e acessa a tela de veículos
    Quando ele navega para a seção de "Histórico de Veículos"
    Então o sistema deve exibir todos os veículos cadastrados anteriormente
    E mostrar detalhes como datas de serviços e tipos de serviço realizados

  Cenário: Visualização e atualização das preferências de serviços
    Dado que o usuário está na página de preferências
    Quando ele deseja alterar as suas preferências de serviços
    Então o sistema deve permitir que ele modifique as opções de serviços favoritos e notificações

  Cenário: Login com credenciais válidas
    Dado que o usuário está na tela de login
    Quando ele insere um e-mail e senha válidos
    E clica no botão "Entrar"
    Então o sistema deve autenticá-lo e redirecioná-lo para a tela inicial

  Cenário: Tentativa de login com senha incorreta
    Dado que o usuário está na tela de login
    E ele já possui uma conta cadastrada
    Quando ele insere uma senha incorreta
    Então o sistema deve exibir a mensagem de "Senha incorreta" e solicitar nova tentativa

  Cenário: Recuperação de senha
    Dado que o usuário está na tela de login
    Quando ele clica em "Esqueci minha senha"
    E informa seu e-mail cadastrado
    Então o sistema deve enviar um e-mail de recuperação com instruções para redefinir a senha