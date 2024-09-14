#language: pt

Funcionalidade: Filtros de filtro de Serviços Automotivos

  Como um usuário
  Eu quero filtrar os serviços automotivos
  Para que eu possa encontrar os serviços mais adequados com base nas minhas preferências

  Cenário: Filtrar serviços por tipo de serviço
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro "Tipo de Serviço"
    E escolhe a opção "Troca de óleo"
    Então o sistema deve exibir apenas os serviços de "Troca de óleo" disponíveis

  Cenário: Filtrar serviços por preço
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro "Preço"
    E define um intervalo de R$50,00 a R$100,00
    Então o sistema deve exibir apenas os serviços com preços entre R$50,00 e R$100,00

  Cenário: Filtrar serviços por distância
    Dado que o usuário está na página de filtro de serviços
    E o sistema tem acesso à localização atual do usuário
    Quando o usuário seleciona o filtro "Distância"
    E define a distância máxima de 5 km
    Então o sistema deve exibir apenas os serviços disponíveis dentro de um raio de 5 km

  Cenário: Filtrar serviços por avaliações dos usuários
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro "Avaliações"
    E escolhe mostrar apenas serviços com avaliações acima de 4 estrelas
    Então o sistema deve exibir apenas os serviços que tenham avaliações acima de 4 estrelas

  Cenário: Filtrar serviços por disponibilidade de horários
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro "Disponibilidade de Horários"
    E escolhe serviços disponíveis para amanhã às 15h
    Então o sistema deve exibir apenas os serviços que podem ser escolhidos amanhã às 15h
    
  Cenário: Filtrar serviços por tempo de espera
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro "Tempo de Espera"
    E escolhe serviços com tempo de espera de até 30 minutos
    Então o sistema deve exibir apenas os serviços com tempo de espera até 30 minutos

  Cenário: Filtrar serviços por opções de pagamento
    Dado que o usuário está na página de filtro de serviços
    Quando o usuário seleciona o filtro opções de pagamento
    E escolhe a opção "PIX"
    Então o sistema deve exibir apenas serviços que podem ser pagos por "PIX"

  Cenário: Filtrar serviços por níveis de personalização
    Dado que o usuário está na página de busca de serviços
    E existem serviços com diferentes níveis de personalização
    Quando o usuário seleciona o filtro "Níveis de Personalização"
    E escolhe a opção "Alta Personalização"
    Então o sistema deve exibir apenas os serviços que oferecem alto nível de personalização  