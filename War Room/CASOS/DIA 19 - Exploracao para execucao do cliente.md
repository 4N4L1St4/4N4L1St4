<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Exploitation for Client Execution" width="160" height="160">
  </a>
  <h1 align="center">"Exploração para Execução em Cliente: O Caso do T1203"</h1>
</p>

## :dart: O guia para "Exploração para Execução em Cliente: O Caso do T1203"

Na manhã de sexta-feira, a equipe de segurança da NetSafe Solutions enfrentou um incidente crítico relacionado à exploração para execução em cliente. O ataque estava associado à técnica T1203, que envolve a exploração de vulnerabilidades em clientes para executar código malicioso. A resposta rápida da equipe foi essencial para identificar e neutralizar a ameaça, garantindo a segurança dos sistemas da empresa.

## :dart: Conteúdo

### Início

Às 07:45, Gustavo, responsável pelas regras do firewall, recebeu um alerta do SIEM QRadar sobre atividade suspeita em um dos computadores da empresa. O alerta indicava que um software cliente estava sendo explorado para executar código não autorizado. Pablo, o analista de segurança, foi imediatamente chamado para investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Zabbix e Grafana, Pablo confirmou que a vulnerabilidade estava sendo explorada para execução de código malicioso. A atividade estava associada à técnica T1203 na matriz MITRE ATT&CK, que descreve a exploração de vulnerabilidades em aplicativos de cliente para comprometer sistemas.

### Impacto

A exploração da vulnerabilidade em clientes permitiu que o atacante executasse código malicioso em sistemas internos, comprometendo a integridade e a segurança dos dados. Isso levantou preocupações sobre a possível instalação de malware e o acesso não autorizado a informações sensíveis.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear o tráfego associado à exploração da vulnerabilidade e implementou políticas adicionais para prevenir a execução de código malicioso.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando a exploração da vulnerabilidade e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à exploração de vulnerabilidades em clientes. Ele também coordenou com a equipe para aplicar patches e atualizações de segurança nos aplicativos de cliente.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra exploração de vulnerabilidades em clientes. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de exploração para execução em cliente e recomendações para fortalecer a segurança dos aplicativos.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra exploração de vulnerabilidades em aplicativos de cliente. A equipe reforçou as políticas de atualização e gerenciamento de patches, implementou controles adicionais para detectar e prevenir a exploração de vulnerabilidades e melhorou o monitoramento com Zabbix e Grafana.

A NetSafe Solutions também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção dos sistemas para garantir a segurança e integridade das informações contra exploração de vulnerabilidades em clientes.

