# language: pt
Funcionalidade: Histórico de Serviços
  Para o usuário conseguir acessar os serviços já contratados anteriormente
  Como um usuário do Guido Pit Stop
  Quero poder pesquisar por serviço, data ou veículo e obter informações históricas como valores e profissionais envolvidos.

  Cenário: Consultar o histórico de serviços detalhado para um veículo
    Dado que um usuário está autenticado no sistema
    Quando o usuário acessa a funcionalidade de "Histórico de serviços"
    Então a ferramenta exibirá todos os serviços associados ao usuário

  Cenário: Consultar serviços por data
    Dado que um usuário está autenticado no sistema
    Quando o usuário acessa a funcionalidade "Histórico de serviços"
    E busca serviços realizados entre duas datas
    Então a lista de serviços deve mostrar todos os serviços realizados no intervalo de data inserido

  Cenário: Consultar serviços por tipo
    Dado que o usuário está autenticado no sistema
    Quando o usuário acessa a funcionalidade "Histórico de serviços"
    E busca serviços realizados de um terminado tipo
    Então a lista de serviços deve mostrar todos os serviços realizados daquela natureza

  Cenário: Consultar histórico de valores pagos por serviço
    Dado que o usuário está com o resultado de uma pesquisa
    Quando o usuário acessa o detalhamento do serviços através do botão "Mais detalhes"
    Então o sistema deve exibir os valores pagos em reais no padrão "R$ 1.234,56"

  Cenário: Consultar histórico de profissionais que realizaram serviços
    Dado que o usuário está com o resultado de uma pesquisa
    Quando o usuário acessa o detalhamento do serviços através do botão "Mais detalhes"
    Então o sistema deve exibir o nome do profissional prestador de serviço no campo "Fornecedor"
