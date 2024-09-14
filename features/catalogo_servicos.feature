# language: pt

Funcionalidade: Visualização do catálogo de serviços de manutenção automotiva
  Como usuário do aplicativo de manutenção automotiva
  Quero visualizar o catálogo de serviços
  Para escolher a manutenção que meu carro precisa

  Cenário: Usuário visualiza o catálogo de serviços
    Dado que o usuário seleciona o catálogo de serviços no aplicativo
    Quando o catálogo é carregado
    Então o usuário deve ver uma lista de serviços incluindo:
      | Troca de óleo               | 
      | Alinhamento e balanceamento |
      | Revisão completa            |
      | Limpeza automotiva          |
      | Troca de pneus              |

  Cenário: Usuário filtra serviços por categoria "Manutenção Preventiva"
    Dado que o usuário seleciona o catálogo de serviços no aplicativo
    Quando o usuário aplica o filtro por categoria "Manutenção Preventiva"
    Então o usuário deve ver apenas os serviços relacionados à manutenção preventiva:
      | Troca de óleo               |
      | Alinhamento e balanceamento |
      | Revisão completa            |

  Cenário: Usuário seleciona um serviço para ver os detalhes
    Dado que o usuário seleciona o catálogo de serviços no aplicativo
    Quando o usuário seleciona o serviço "Troca de óleo"
    Então o usuário deve ver informações como preço, tempo estimado e descrição do serviço

  Cenário: Usuário adiciona um serviço ao carrinho
    Dado que o usuário seleciona um serviço para comprar
    Quando o usuário clica em "Adicionar ao carrinho"
    Então o serviço selecionado deve ser adicionado ao carrinho contendo o serviço, a oficina, o preço e a data de agendamento.

  Cenário: Usuário vê um catálogo vazio quando nenhum serviço corresponde ao filtro
    Dado que o usuário está no catálogo de serviços
    Quando o usuário aplica um filtro que não tem correspondências
    Então o usuário deve ver uma mensagem "Nenhum serviço encontrado"