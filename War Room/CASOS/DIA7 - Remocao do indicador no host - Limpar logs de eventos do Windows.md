<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1070.001 - Indicator Removal on Host: Clear Windows Event Logs" width="160" height="160">
  </a>
  <h1 align="center">"A Limpeza de Evidências: O Caso do T1070.001"</h1>
</p>

## :dart: O guia para "A Limpeza de Evidências: O Caso do T1070.001"

Na noite de terça-feira, a equipe de segurança da DataGuard Solutions enfrentou um desafio crítico quando descobriu que um atacante estava tentando apagar suas trilhas. O ataque estava associado ao TTP T1070.001, que descreve a prática de limpar logs de eventos do Windows para remover indicadores de atividades maliciosas. A resposta rápida da equipe foi essencial para conter o problema e restaurar a visibilidade dos eventos.

## :dart: Conteúdo

### Início

Às 22:00, Bruna, responsável pelo pós-mortem e análise de incidentes, recebeu um alerta do SIEM QRadar sobre atividades suspeitas relacionadas ao gerenciamento de logs em várias estações de trabalho. O alerta indicava que os logs de eventos do Windows estavam sendo limpos, o que era um sinal claro de que o atacante estava tentando remover evidências de suas ações. Pablo, o analista de segurança, iniciou uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne, Pablo confirmou que os logs de eventos haviam sido manipulados. A atividade estava associada ao TTP T1070.001 na matriz MITRE ATT&CK, que descreve a técnica de remoção de indicadores em hosts ao limpar logs de eventos para ocultar atividades maliciosas.

### Impacto

O ataque estava comprometendo a integridade dos logs de eventos, dificultando a capacidade da equipe de identificar e investigar atividades maliciosas. A limpeza dos logs significava que a equipe estava perdendo evidências cruciais que poderiam ter ajudado a rastrear a origem e o impacto do ataque.

### Resolução

John, responsável pelos backups, foi chamado para restaurar os logs a partir dos backups mais recentes disponíveis. Gustavo, que gerencia as regras do firewall, ajustou as regras para aumentar o monitoramento e detecção de atividades suspeitas relacionadas ao gerenciamento de logs.

Paulo, o administrador de rede, isolou as estações de trabalho afetadas para impedir que o ataque se espalhasse ainda mais pela rede. Bruna começou a compilar um relatório detalhado do incidente, documentando como os logs foram manipulados e as medidas tomadas para restaurar a integridade dos dados.

Pablo trabalhou com a equipe para aplicar configurações de segurança adicionais nos servidores de log e ajustou o WAF para proteger contra atividades suspeitas relacionadas à manipulação de logs. Ele também atualizou o SIEM QRadar com novos alertas para identificar atividades de limpeza de logs.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão abrangente das políticas de segurança relacionadas ao gerenciamento de logs. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise de como os logs foram manipulados e recomendações para melhorar a proteção dos logs.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a importância da proteção dos logs e práticas recomendadas para monitorar e detectar tentativas de limpeza de logs. A equipe também reforçou as políticas de backup e recuperação de logs, integrando a gestão de vulnerabilidades com o Tenable.

A DataGuard Solutions melhorou o monitoramento com Zabbix e Grafana e começou a realizar auditorias regulares de segurança para garantir que todas as atividades suspeitas relacionadas à manipulação de logs fossem identificadas e tratadas. A empresa implementou controles adicionais para proteger a integridade dos logs e garantir que evidências cruciais fossem preservadas.

