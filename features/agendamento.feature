# Language: pt

Funcionalidade: Agendamento de Serviços
    Para que o Motorista possa agendar serviços de manutenção
    Eu como um Motorista que precisa de serviços pro meu veículo 
    Quero poder escolher a data e hora do agendamento do meu serviço

    Cenário: Usuário escolhe data e hora para o agendamento
        Dado que o usuário acessa a página de agendamento de serviços
        E seleciona o serviço "Troca de óleo"
        E escolhe a data "15 de setembro de 2024"
        E escolhe o horário "10:00"
        Quando submete o agendamento
        Então o agendamento é criado com sucesso
        E a data "15 de setembro de 2024" e a hora "10:00" são salvas no sistema

    Cenário: Envio de lembrete automático para o usuário
        Dado que o usuário agendou um serviço para o dia "15 de setembro de 2024" às "10:00"
        E o lembrete automático está habilitado no sistema
        Quando estiver faltando 24 horas para o horário do serviço
        Então o sistema envia um lembrete automático para o usuário

    Cenário: Confirmação automática após o agendamento
        Dado que o usuário finaliza o agendamento de um serviço
        Quando o sistema processa o agendamento
        Então uma confirmação automática é enviada para o usuário
        E o status do agendamento é alterado para "Confirmado"

    Cenário: Usuário agenda serviço especializado de acordo com seu perfil
        Dado que o usuário tem um perfil de "Motorista de frota"
        E acessa a página de agendamento de serviços
        Quando seleciona o serviço especializado "Manutenção preventiva para frotas"
        E escolhe a data "20 de setembro de 2024"
        Então o sistema permite a seleção de serviços especializados compatíveis com o perfil de "Motorista de frota"
        E o agendamento é criado com sucesso

    Cenário: Usuário tenta agendar sem selecionar data e hora
        Dado que o usuário acessa a página de agendamento de serviços
        E não seleciona uma data ou hora
        Quando tenta submeter o agendamento
        Então o sistema exibe uma mensagem de erro "Data e hora são obrigatórias para agendamento"
        E o agendamento não é criado
