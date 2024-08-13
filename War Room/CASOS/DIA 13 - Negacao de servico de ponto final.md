<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1499 - Endpoint Denial of Service" width="160" height="160">
  </a>
  <h1 align="center">"Ataque de Negação de Serviço em Endpoint: O Caso do T1499"</h1>
</p>

## :dart: O guia para "Ataque de Negação de Serviço em Endpoint: O Caso do T1499"

Na manhã de quarta-feira, a equipe de segurança da NetShield Technologies enfrentou um incidente crítico envolvendo um ataque de negação de serviço (DoS) direcionado a endpoints. O ataque estava associado ao TTP T1499, que descreve a técnica de negação de serviço para sobrecarregar e interromper a operação de sistemas e serviços. A resposta rápida da equipe foi essencial para restaurar a funcionalidade e proteger a infraestrutura.

## :dart: Conteúdo

### Início

Às 07:45, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre uma sobrecarga anômala de tráfego em várias estações de trabalho. O alerta indicava que os endpoints estavam sendo alvo de um ataque de negação de serviço, resultando em degradação significativa do desempenho e indisponibilidade de serviços críticos. Gustavo, responsável pelas regras do firewall, acionou a equipe para uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Zabbix e Grafana, Pablo confirmou que os endpoints estavam sendo sobrecarregados com solicitações excessivas, o que estava causando lentidão e interrupções nos serviços. A atividade estava associada ao TTP T1499 na matriz MITRE ATT&CK, que descreve a técnica de negação de serviço em endpoints para interromper a operação normal dos sistemas.

### Impacto

O ataque de negação de serviço estava comprometendo a disponibilidade dos endpoints e afetando a produtividade dos funcionários. A degradação do desempenho e a interrupção dos serviços críticos levantaram preocupações sobre a continuidade das operações e a possível perda de dados.

### Resolução

John, responsável pelos backups, foi acionado para garantir que os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele confirmou que os backups estavam intactos e preparados para serem usados se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para mitigar o tráfego excessivo e bloqueou as fontes do ataque de DoS. Ele também implementou políticas de filtragem para identificar e limitar solicitações anômalas.

Paulo, o administrador de rede, trabalhou para isolar os endpoints afetados e redirecionar o tráfego para serviços de mitigação de DoS. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como o ataque de DoS ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou para ajustar as configurações de segurança no WAF para proteger contra ataques de DoS e atualizou o SIEM QRadar com novos alertas para identificar padrões de tráfego associados a ataques de negação de serviço.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra ataques de negação de serviço. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de DoS e recomendações para melhorar a segurança dos endpoints.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e resposta a ataques de DoS. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e mitigar ataques de negação de serviço.

A NetShield Technologies melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades que poderiam ser exploradas em futuros ataques de DoS. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção dos endpoints para prevenir e detectar tentativas de negação de serviço.

