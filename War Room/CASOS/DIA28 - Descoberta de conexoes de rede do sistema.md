<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1049 - System Network Connections Discovery" width="160" height="160">
  </a>
  <h1 align="center">"Descoberta de Conexões de Rede: O Caso do T1049"</h1>
</p>

## :dart: O guia para "Descoberta de Conexões de Rede: O Caso do T1049"

Na tarde de quinta-feira, a equipe de segurança da NetShield Corp. enfrentou um incidente associado ao T1049, que envolve a descoberta de conexões de rede do sistema. A resposta eficaz da equipe foi crucial para identificar e neutralizar a ameaça antes que ela pudesse comprometer a segurança da rede corporativa.

## :dart: Conteúdo

### Início

Às 14:00, Pablo, o analista de segurança, recebeu um alerta do XDR da SentinelOne sobre um comportamento incomum na rede. O alerta indicava que uma ferramenta estava realizando varreduras extensivas para descobrir as conexões de rede ativas nos sistemas. Gustavo, responsável pelas regras do firewall, foi imediatamente acionado para ajudar na investigação.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1049 estava sendo explorada. Atacantes estavam utilizando comandos para mapear a topologia da rede e identificar conexões de sistema ativas.

### Impacto

A descoberta de conexões de rede permitiu aos atacantes mapear a topologia da rede da empresa e identificar sistemas e serviços ativos. Isso levantou preocupações sobre a possível realização de ataques mais direcionados e a possibilidade de comprometimento de sistemas críticos com base nas informações obtidas.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear varreduras de rede não autorizadas. Ele também implementou políticas de monitoramento para detectar tentativas de descoberta de conexões de rede.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a elaboração de um relatório detalhado sobre o incidente, documentando a técnica T1049 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à descoberta de conexões de rede. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra a descoberta não autorizada de conexões de rede. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1049 e recomendações para fortalecer a segurança contra ataques de descoberta de rede.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra técnicas de descoberta de rede e a importância de monitorar e proteger as conexões de rede. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas à descoberta de conexões de rede.

A NetShield Corp. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo a descoberta não autorizada de conexões de rede e garantindo a detecção eficaz de incidentes.

