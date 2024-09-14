Feature: Avaliações e Comentários de Serviços
  Como usuário do aplicativo Guido
  Quero avaliar serviços com estrelas e deixar comentários
  Para que outros clientes possam conhecer a qualidade do serviço

  Cenário: Usuário avalia um serviço com estrelas
    Dado que o usuário confirmou a execução do serviço "Troca de óleo"
    Quando o usuário clica em "Avaliar serviço"
    E o usuário seleciona uma avaliação de 4 estrelas
    Então a avaliação de 4 estrelas deve ser registrada para o serviço "Troca de óleo"
    E uma mensagem de confirmação "Obrigado por avaliar!" deve ser exibida

  Cenário: Usuário deixa um comentário sobre o serviço
    Dado avaliou o serviço realizado de "Troca de óleo"
    Quando o usuário clica em "Deixar um comentário"
    E o usuário escreve "Serviço rápido e eficiente!"
    E o usuário envia o comentário
    Então o comentário "Serviço rápido e eficiente!" deve ser registrado para o serviço "Troca de óleo" da oficina onde foi realizado o serviço
    E uma mensagem "Comentário enviado com sucesso!" deve ser exibida

  Cenário: Consultar avaliações de outros usuários
    Dado que o usuário está visualizando detalhes do serviço "Revisão completa"
    Quando o usuário clica em "Ver avaliações"
    Então o usuário deve ver uma lista de avaliações de outros clientes incluindo:
      | Usuário     | Avaliação | Comentário                      |
      | João Silva  | 5 estrelas| "Excelente serviço, recomendo!"  |
      | Maria Souza | 4 estrelas| "Bom serviço, mas poderia ser mais rápido" |

  Cenário: Exibir média de avaliações para um serviço
    Dado que o usuário está em detalhes do serviço "Troca de pneus"
    Quando o sistema calcula a média de todas as avaliações de estrelas para "Troca de pneus" por oficina
    Então o usuário deve ver a média de avaliações exibida como "4,5 estrelas"

  Cenário: Mostrar aviso quando não houver avaliações
    Dado que o usuário está em detalhes do serviço "Limpeza automotiva"
    Quando o usuário clica em "Ver avaliações"
    E não há avaliações registradas para o serviço "Limpeza automotiva"
    Então o usuário deve ver a mensagem "Nenhuma avaliação disponível para este serviço"