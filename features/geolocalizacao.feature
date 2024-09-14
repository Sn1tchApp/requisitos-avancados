# language: pt
Funcionalidade: Geolocolaziação

  Cenário: O usuário abre a ferramenta e clica em 'Localize-me' com o GPS ligado
    Dado que o GPS do celular está ligado
    E o usuário abriu a ferramenta
    Quando o usuário clica em "Localize-me"
    Então a ferramenta deve mostrar a localização atual do usuário

  Cenário: O usuário abre a ferramenta e clica em 'Localize-me' com o GPS desligado
    Dado que o GPS do celular está desligado
    E o usuário abriu a ferramenta
    Quando o usuário clica em "Localize-me"
    Então a ferramenta deve informar que "Não é possível apresentar a localização"

  Cenário: O usuário observa as prestadoras de serviço mais próximas cadastradas
    Dado que o usuário abriu a ferramenta
    Quando o usuário clica em "Localize-me"
    Então a ferramenta deve mostrar as prestadoras em uma faixa de até 1km de distância

  Cenário: O usuário observa as prestadoras de serviço mais próximas cadastradas
    Dado que o usuário abriu a ferramenta
    Quando o usuário clica em "Localize-me"
    Então a ferramenta deve mostrar as prestadoras em uma faixa de até 1km de distância

  Cenário: O usuário observar os prestadores de serviço abertos e disponíveis na proximidade
    Dado que o usuário está na seção "Localiza-me"
    Quando o usuário clica em "Quem pode me ajudar"
    Então a ferramenta deverá exibir apenas as prestadoras abertas no horário da consulta em uma faixa de até 1 km de distância

