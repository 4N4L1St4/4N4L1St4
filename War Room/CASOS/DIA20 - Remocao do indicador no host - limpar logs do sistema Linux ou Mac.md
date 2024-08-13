<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1070.003 - Clear Linux or Mac System Logs" width="160" height="160">
  </a>
  <h1 align="center">"Remoção de Indicadores: Limpeza de Logs em Sistemas Linux e Mac"</h1>
</p>

## :dart: O guia para "Remoção de Indicadores: Limpeza de Logs em Sistemas Linux e Mac"

Na tarde de terça-feira, a equipe de segurança da TechGuard Inc. enfrentou um desafio crítico relacionado à remoção de indicadores. O incidente estava associado à técnica T1070.003, que descreve a limpeza de logs em sistemas Linux ou Mac para remover evidências de atividades maliciosas. A resposta rápida e coordenada da equipe foi essencial para identificar e mitigar a ameaça, restaurando a integridade da infraestrutura.

## :dart: Conteúdo

### Início

Às 14:00, Bruna, responsável pelo pós-mortem, recebeu uma notificação do SIEM QRadar indicando que logs críticos em vários sistemas Linux e Mac estavam sendo apagados. O alerta sugeria uma tentativa de remoção de indicadores, possivelmente para encobrir atividades maliciosas. Pablo, o analista de segurança, foi imediatamente chamado para investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Grafana, Pablo confirmou que a técnica T1070.003 estava sendo utilizada para limpar os logs dos sistemas afetados. A atividade estava associada à remoção de evidências para dificultar a detecção de atividades comprometedoras.

### Impacto

A limpeza dos logs estava dificultando a investigação e análise do incidente, removendo evidências cruciais que poderiam ter sido usadas para entender e mitigar a ameaça. Isso levantou preocupações sobre a possível continuidade da atividade maliciosa e a necessidade de uma resposta rápida para recuperar e proteger os dados e sistemas comprometidos.

### Resolução

John, responsável pelos backups, confirmou que as cópias de segurança dos logs estavam intactas e disponíveis para restauração. Ele garantiu que todos os logs críticos poderiam ser recuperados a partir dos backups mais recentes.

Gustavo, responsável pelas regras do firewall, ajustou as regras para monitorar atividades de limpeza de logs e implementar políticas de proteção para prevenir futuras tentativas de remoção de indicadores.

Paulo, o administrador de rede, isolou os sistemas afetados e iniciou uma investigação detalhada para identificar a origem e o impacto da atividade de limpeza de logs. Bruna começou a compilar um relatório detalhado sobre o incidente, documentando a técnica de remoção de indicadores e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de atividade associados à limpeza de logs e remoção de indicadores. Ele também coordenou com a equipe para fortalecer as medidas de proteção dos sistemas e logs.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção e integridade dos logs. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1070.003 e recomendações para fortalecer a segurança dos logs e evitar a remoção de indicadores.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção dos logs e a detecção de atividades de limpeza de indicadores. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e prevenir a remoção de logs.

A TechGuard Inc. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos logs e sistemas, prevenindo atividades maliciosas e garantindo a detecção eficaz de incidentes.

