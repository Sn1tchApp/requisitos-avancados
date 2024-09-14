#language: pt

Funcionalidade: Pagamentos Integrados

  Como um usuário do Guido Pit Stop
  Quero realizar pagamentos de serviços de diferentes forE
  Para que eu possa finalizar minhas transações de maneira rápida e segura

  # Cenários de sucesso
  
  Cenário: Pagamento com cartão de crédito
    Dado que o usuário tenha selecionado um serviço para pagamento
    Quando escolher a opção de pagamento com cartão de crédito
    E inserir os dados válidos
    Então o pagamento será processado com sucesso
    E o recibo exibido

  Cenário: Pagamento com cartão de débito
    Dado que o usuário tenha selecionado um serviço para pagamento
    Quando escolher a opção de pagamento com cartão de débito
    E os dados forem válidos
    Então o pagamento será realizado
    E Notificação de conclusão será enviada ao usuário

  Cenário: Pagamento com PIX
    Dado que o usuário tenha selecionado um serviço
    Quando optar pelo pagamento via PIX
    E o QR code for gerado
    Então O pagamento será concluído após a leitura
    E A confirmação será exibida

  Cenário: Pagamento com carteira digital
    Dado que o usuário tenha selecionado um serviço para pagamento
    Quando optar por uma carteira digital (Apple Pay ou Google Pay)
    E autenticar com sucesso
    Então o pagamento será processado
    E O recibo será enviado por e-mail

  # Cenários de falha

  Cenário: Falha no pagamento com cartão de crédito - Dados incorretos
    Dado que o usuário tenha selecionado a opção de pagamento com cartão de crédito
    Quando inserir dados incorretos
    Então o pagamento será recusado
    E Uma mensagem de erro será exibida

  Cenário: Falha no pagamento com cartão de crédito - Saldo insuficiente
    Dado que o usuário tenha selecionado a opção de pagamento com cartão de crédito
    Quando o saldo for insuficiente
    Então o pagamento será recusado
    E Uma mensagem de saldo insuficiente será exibida

  Cenário: Falha no pagamento com cartão de débito - Cartão expirado
    Dado que o usuário tenha selecionado a opção de pagamento com cartão de débito
    Quando o cartão estiver expirado
    Então o pagamento será recusado
    E Uma mensagem de cartão expirado será exibida

  Cenário: Falha no pagamento com PIX - Tempo limite excedido
    Dado que o usuário tenha selecionado a opção de pagamento com PIX
    Quando o QR code for gerado
    E o tempo limite for excedido
    Então o pagamento será cancelado
    E Uma mensagem de tempo limite será exibida

  Cenário: Falha no pagamento com carteira digital - Autenticação falha
    Dado que o usuário tenha selecionado a opção de pagamento com carteira digital
    Quando realizar a autenticação
    E a autenticação falhar
    Então o pagamento não será processado
    E Uma mensagem de falha de autenticação será exibida

  Cenário: Falha no pagamento com carteira digital - Conta não vinculada
    Dado que o usuário tenha selecionado a opção de pagamento com carteira digital
    Quando tentar realizar o pagamento
    E a conta não estiver vinculada
    Então o pagamento será recusado
    E Uma mensagem de conta não vinculada será exibida
