<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Windows Management Instrumentation" width="160" height="160">
  </a>
  <h1 align="center">"Instrumentação de Gerenciamento do Windows: O Caso do T1047"</h1>
</p>

## :dart: O guia para "Instrumentação de Gerenciamento do Windows: O Caso do T1047"

Na manhã de quarta-feira, a equipe de segurança da CyberSecure Ltd. enfrentou um desafio significativo envolvendo a técnica T1047, que explora o Windows Management Instrumentation (WMI) para execução remota de comandos e coleta de informações. A resposta rápida e coordenada da equipe foi crucial para identificar e mitigar o ataque.

## :dart: Conteúdo

### Início

Às 09:30, Gustavo, responsável pelas regras do firewall, recebeu um alerta do SIEM QRadar indicando atividades suspeitas associadas ao Windows Management Instrumentation (WMI) em vários sistemas Windows. O alerta sugeria que comandos estavam sendo executados remotamente através do WMI, o que poderia indicar uma tentativa de acesso não autorizado. Pablo, o analista de segurança, foi imediatamente convocado para investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Grafana, Pablo confirmou que a técnica T1047 estava sendo utilizada para executar comandos remotamente e coletar informações dos sistemas comprometidos. A atividade estava associada ao uso de WMI para movimentação lateral e coleta de dados.

### Impacto

O uso do WMI para execução remota de comandos e coleta de informações permitiu que o atacante se movesse lateralmente pela rede e coletasse dados sensíveis sem ser detectado imediatamente. Isso levantou preocupações sobre a possível exploração contínua da rede e a necessidade de uma resposta rápida para limitar o impacto e proteger os sistemas.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para monitorar e bloquear atividades associadas ao WMI que pareciam suspeitas ou não autorizadas. Ele também implementou políticas adicionais para prevenir o uso não autorizado do WMI.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando a técnica T1047 e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego e comandos associados ao uso do WMI. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas Windows afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao Windows Management Instrumentation e proteção contra acesso remoto não autorizado. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1047 e recomendações para fortalecer a segurança dos sistemas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre o uso seguro do WMI e a detecção de atividades não autorizadas. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear o uso indevido do WMI.

A CyberSecure Ltd. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas Windows, prevenindo a exploração de WMI e garantindo a detecção eficaz de incidentes.

