<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1059.001 - Command-Line Interface: Windows Command Shell" width="160" height="160">
  </a>
  <h1 align="center">"Execução pelo Shell de Comando: O Caso do T1059.001"</h1>
</p>

## :dart: O guia para "Execução pelo Shell de Comando: O Caso do T1059.001"

Na manhã de sexta-feira, a equipe de segurança da SecureNet Solutions enfrentou um incidente crítico associado ao T1059.001, que envolve a execução de comandos maliciosos através do Windows Command Shell. A rápida intervenção e coordenação da equipe foram essenciais para mitigar o impacto e proteger a integridade da rede corporativa.

## :dart: Conteúdo

### Início

Às 09:45, Pablo, o analista de segurança, recebeu um alerta do XDR da SentinelOne sobre a execução de comandos suspeitos no Windows Command Shell. O alerta indicava que um comando não autorizado estava sendo executado, potencialmente para realizar atividades maliciosas no sistema. Gustavo, responsável pelas regras do firewall, foi imediatamente acionado para ajudar na investigação.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1059.001 estava sendo explorada. Atacantes estavam utilizando o Windows Command Shell para executar comandos maliciosos com o objetivo de comprometer o sistema e realizar movimentação lateral na rede.

### Impacto

A execução de comandos maliciosos através do Windows Command Shell permitiu aos atacantes manipular e controlar sistemas de forma não autorizada. Isso levantou preocupações sobre a possível instalação de malware, exfiltração de dados e comprometimento de sistemas críticos.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear a execução de comandos suspeitos através do Windows Command Shell. Ele também implementou monitoramento adicional para detectar e registrar atividades anômalas no shell de comando.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a elaboração de um relatório detalhado sobre o incidente, documentando a técnica T1059.001 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à execução de comandos maliciosos. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra a execução não autorizada de comandos através do Windows Command Shell. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1059.001 e recomendações para fortalecer a segurança contra ataques que utilizam o shell de comando.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra técnicas de execução de comandos maliciosos e a importância de monitorar o uso do Windows Command Shell. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas ao uso não autorizado do Windows Command Shell.

A SecureNet Solutions também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo a execução não autorizada de comandos e garantindo a detecção eficaz de incidentes.

