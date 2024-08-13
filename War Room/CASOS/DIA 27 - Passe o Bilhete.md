<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1075 - Pass the Ticket" width="160" height="160">
  </a>
  <h1 align="center">"Pass the Ticket: O Caso do T1075"</h1>
</p>

## :dart: O guia para "Pass the Ticket: O Caso do T1075"

Na manhã de segunda-feira, a equipe de segurança da CyberGuard Inc. enfrentou um incidente sério associado ao T1075, que envolve o ataque Pass the Ticket. A rápida resposta e coordenação da equipe foram cruciais para identificar e conter a ameaça antes que ela causasse danos significativos.

## :dart: Conteúdo

### Início

Às 10:15, Pablo, o analista de segurança, recebeu um alerta do XDR da SentinelOne sobre atividades suspeitas relacionadas à autenticação Kerberos. O alerta indicava que tickets de Kerberos estavam sendo usados para acessar sistemas sem a devida autorização. Gustavo, responsável pelas regras do firewall, foi chamado para ajudar na investigação.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1075 estava sendo explorada. Atacantes estavam utilizando tickets Kerberos comprometidos para autenticar e acessar sistemas na rede de forma não autorizada.

### Impacto

O ataque Pass the Ticket permitiu aos atacantes obter acesso a sistemas e dados sensíveis sem precisar de credenciais válidas. Isso levantou preocupações sobre a possível exfiltração de dados e a capacidade dos atacantes de se mover lateralmente pela rede, comprometendo mais sistemas.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear atividades associadas ao uso não autorizado de tickets Kerberos. Ele também implementou monitoramento adicional para detectar acessos anômalos.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a elaboração de um relatório detalhado sobre o incidente, documentando a técnica T1075 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados ao uso de tickets Kerberos comprometidos. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à autenticação Kerberos e proteção contra ataques Pass the Ticket. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1075 e recomendações para fortalecer a segurança contra ataques de tickets Kerberos.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra ataques de Pass the Ticket e a importância da segurança dos tickets Kerberos. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas ao uso de tickets Kerberos comprometidos.

A CyberGuard Inc. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo o uso não autorizado de tickets Kerberos e garantindo a detecção eficaz de incidentes.

