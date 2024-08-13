<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1055 - Process Injection" width="160" height="160">
  </a>
  <h1 align="center">"Injeção de Processo: O Caso do T1055"</h1>
</p>

## :dart: O guia para "Injeção de Processo: O Caso do T1055"

Na noite de quinta-feira, a equipe de segurança da TechSecure Inc. enfrentou um incidente crítico envolvendo a técnica de injeção de processos. O ataque estava associado ao TTP T1055, que descreve a técnica de injeção de código em processos legítimos para executar código malicioso sem levantar suspeitas. A resposta rápida da equipe foi essencial para identificar e mitigar a ameaça.

## :dart: Conteúdo

### Início

Às 23:30, Gustavo, responsável pelas regras do firewall, recebeu um alerta do SIEM QRadar sobre uma atividade suspeita relacionada a injeção de processos em um dos servidores críticos. O alerta indicava que um processo legítimo estava sendo usado para injetar código malicioso. Pablo, o analista de segurança, foi acionado para investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com o Zabbix e Grafana, Pablo confirmou que o processo legítimo estava sendo manipulado para executar código malicioso. A atividade estava associada ao TTP T1055 na matriz MITRE ATT&CK, que descreve a técnica de injeção de processos para ocultar a presença de malware e evadir a detecção.

### Impacto

A injeção de processos estava permitindo que o atacante executasse código malicioso dentro de processos legítimos, dificultando a detecção e resposta ao ataque. Isso comprometeu a integridade dos sistemas afetados e levantou preocupações sobre a possível exfiltração de dados e instalação de malware adicional.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para uma possível restauração.

Gustavo, que gerencia as regras do firewall, ajustou as regras para detectar e bloquear atividades relacionadas à injeção de processos. Ele também implementou políticas adicionais para identificar comportamentos anômalos e potenciais tentativas de injeção.

Paulo, o administrador de rede, isolou os servidores afetados para evitar a propagação do ataque e iniciou uma análise detalhada para identificar o alcance da injeção de processos. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como a injeção de processos ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou para aplicar patches e atualizações de segurança nos sistemas afetados e reforçou o monitoramento para detectar tentativas de injeção de processos no futuro. Ele também ajustou o SIEM QRadar com novos alertas para identificar atividades suspeitas associadas à injeção de processos.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra injeção de processos. Bruna elaborou um relatório pós-mortem detalhado, incluindo uma análise da técnica de injeção e recomendações para fortalecer a segurança dos sistemas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e prevenção de injeção de processos. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de injeção de processos.

A TechSecure Inc. melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção dos sistemas para prevenir e detectar tentativas de injeção de processos.

