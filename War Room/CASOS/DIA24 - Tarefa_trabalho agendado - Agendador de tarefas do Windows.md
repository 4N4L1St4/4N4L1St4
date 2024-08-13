<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1053.001 - Windows Task Scheduler" width="160" height="160">
  </a>
  <h1 align="center">"Tarefas Agendadas: O Caso do T1053.001 - Windows Task Scheduler"</h1>
</p>

## :dart: O guia para "Tarefas Agendadas: O Caso do T1053.001 - Windows Task Scheduler"

Na tarde de sexta-feira, a equipe de segurança da InovaTech Solutions enfrentou um incidente crítico associado ao T1053.001, que envolve o uso do Windows Task Scheduler para executar tarefas e comandos de forma agendada. A rápida resposta e coordenação da equipe foram essenciais para identificar e mitigar a ameaça antes que pudesse causar danos significativos.

## :dart: Conteúdo

### Início

Às 15:45, Pablo, o analista de segurança, recebeu um alerta do XDR da SentinelOne sobre atividades incomuns relacionadas ao Windows Task Scheduler em vários sistemas Windows. O alerta sugeria que novas tarefas estavam sendo criadas e agendadas de maneira suspeita, o que poderia indicar uma tentativa de persistência ou execução de comandos maliciosos. Gustavo, responsável pelas regras do firewall, foi imediatamente chamado para investigar.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1053.001 estava sendo utilizada. O Task Scheduler estava sendo manipulado para criar e executar tarefas agendadas com o objetivo de manter a persistência e executar comandos maliciosos em sistemas comprometidos.

### Impacto

O uso do Windows Task Scheduler para executar tarefas agendadas permitiu ao atacante manter a persistência nos sistemas comprometidos e executar comandos sem necessidade de interação manual. Isso levantou preocupações sobre a possível execução contínua de malware e a capacidade do atacante de realizar atividades maliciosas sem ser detectado.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear atividades associadas à criação e execução de tarefas agendadas suspeitas. Ele também implementou políticas adicionais para monitorar o Windows Task Scheduler em todos os sistemas da empresa.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando a técnica T1053.001 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à execução de tarefas agendadas maliciosas. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao uso do Windows Task Scheduler e proteção contra a execução não autorizada de tarefas agendadas. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1053.001 e recomendações para fortalecer a segurança das tarefas agendadas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção do Windows Task Scheduler e a detecção de tarefas agendadas não autorizadas. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas ao Task Scheduler.

A InovaTech Solutions também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo o uso não autorizado do Task Scheduler e garantindo a detecção eficaz de incidentes.

