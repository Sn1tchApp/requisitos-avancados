# Language: pt

Funcionalidade: Cadastro de Oficina
    Para que o administrador possa cadastrar uma oficina no sistema
    Eu como um administrador responsável pela oficina no sistema
    Quero poder preencher os dados da oficina 
    
    Cenário: Oficina fornece uma localização válida
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E preenche o campo de localização com "Av. Paulista, 1000, São Paulo, SP"
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E a localização "Av. Paulista, 1000, São Paulo, SP" é salva no sistema

    Cenário: Oficina seleciona serviços prestados
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E seleciona "Troca de óleo" e "Alinhamento" como serviços prestados
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E os serviços "Troca de óleo" e "Alinhamento" são salvos no sistema

    Cenário: Oficina fornece seguradoras conveniadas
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E seleciona "Porto Seguro" e "Azul Seguros" como seguradoras conveniadas
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E as seguradoras "Porto Seguro" e "Azul Seguros" são salvas no sistema

    Cenário: Oficina informa capacidade de atendimento
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E preenche o campo de capacidade de atendimento com "20 veículos por dia"
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E a capacidade de "20 veículos por dia" é salva no sistema

    Cenário: Oficina informa horário de atendimento
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E preenche o campo de horário de atendimento com "Segunda a sexta, das 8h às 18h"
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E o horário de "Segunda a sexta, das 8h às 18h" é salvo no sistema

    Cenário: Oficina opta por serviços consultivos
        Dado que o usuário administrador acessa a página de cadastro de oficinas
        E seleciona "Consultivos" como tipo de serviço
        Quando submete o formulário de cadastro
        Então a oficina é cadastrada com sucesso
        E a oficina é marcada como prestadora de serviços "Consultivos"

