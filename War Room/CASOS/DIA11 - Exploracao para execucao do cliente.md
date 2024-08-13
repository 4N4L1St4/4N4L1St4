<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1203 - Exploitation for Client Execution" width="160" height="160">
  </a>
  <h1 align="center">"Exploração e Execução: O Caso do T1203"</h1>
</p>

## :dart: O guia para "Exploração e Execução: O Caso do T1203"

Na manhã de segunda-feira, a equipe de segurança da SecureCorp enfrentou um incidente crítico envolvendo a exploração de vulnerabilidades para execução de código em clientes. O ataque estava associado ao TTP T1203, que descreve a técnica de exploração de vulnerabilidades em clientes para executar código malicioso. A resposta ágil da equipe foi essencial para mitigar o impacto e restaurar a segurança dos sistemas.

## :dart: Conteúdo

### Início

Às 09:00 da manhã, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre uma vulnerabilidade crítica sendo explorada em uma estação de trabalho. O alerta indicava que um exploit estava sendo utilizado para executar código malicioso através de uma falha conhecida no software de um cliente. Pablo, o analista de segurança, iniciou uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne, Pablo confirmou que a estação de trabalho estava sendo comprometida através de um exploit direcionado. A atividade estava associada ao TTP T1203 na matriz MITRE ATT&CK, que descreve a exploração de vulnerabilidades em softwares de clientes para obter execução de código malicioso.

### Impacto

A exploração da vulnerabilidade estava permitindo que o atacante executasse código malicioso em clientes, comprometendo a integridade dos sistemas e potencialmente acessando dados sensíveis. Isso levantou preocupações sobre a possível exfiltração de dados e a instalação de malware em várias estações de trabalho.

### Resolução

John, responsável pelos backups, foi acionado para garantir que os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele confirmou que os backups estavam intactos e prontos para serem utilizados se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear o tráfego associado ao exploit e proteger contra atividades semelhantes. Ele também atualizou as políticas de filtragem para incluir a nova vulnerabilidade descoberta.

Paulo, o administrador de rede, isolou as estações de trabalho afetadas para evitar a propagação do ataque e iniciou uma análise detalhada para identificar o alcance da exploração. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como a exploração ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou para aplicar patches e atualizações de segurança nas estações de trabalho afetadas e em outros sistemas que poderiam estar vulneráveis. Ele também atualizou o SIEM QRadar com novos alertas para detectar tentativas de exploração semelhantes no futuro.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à gestão de vulnerabilidades e patch management. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da exploração e recomendações para melhorar a segurança dos clientes.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e resposta a exploits em software de clientes. A equipe reforçou as políticas de gerenciamento de vulnerabilidades e implementou uma rotina de patching mais eficaz.

A SecureCorp melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção dos sistemas para prevenir e detectar tentativas de exploração.

