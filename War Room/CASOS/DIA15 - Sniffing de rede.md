<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1040 - Network Sniffing" width="160" height="160">
  </a>
  <h1 align="center">"Monitoramento de Rede: O Caso do T1040"</h1>
</p>

## :dart: O guia para "Monitoramento de Rede: O Caso do T1040"

Na noite de terça-feira, a equipe de segurança da DataSecure Corp. detectou um incidente crítico relacionado ao monitoramento não autorizado de rede. O ataque estava associado ao TTP T1040, que descreve a técnica de sniffing de rede para capturar e analisar pacotes de dados em trânsito. A resposta rápida da equipe foi crucial para identificar a origem do ataque e proteger as informações sensíveis.

## :dart: Conteúdo

### Início

Às 22:00, Gustavo, responsável pelas regras do firewall, recebeu uma notificação do SIEM QRadar sobre um tráfego suspeito na rede interna. O alerta indicava que pacotes de dados estavam sendo capturados e analisados de maneira não autorizada. Pablo, o analista de segurança, foi designado para investigar a situação.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Zabbix e Grafana, Pablo confirmou que um dispositivo não autorizado estava executando sniffing de rede. A atividade estava associada ao TTP T1040 na matriz MITRE ATT&CK, que descreve a técnica de monitoramento de rede para capturar dados sensíveis transmitidos através da rede.

### Impacto

O monitoramento não autorizado estava permitindo que o atacante capturasse dados sensíveis em trânsito, o que incluía credenciais de login e informações confidenciais. Isso levantou preocupações sobre a possível exfiltração de dados e comprometimento da privacidade dos usuários.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e prontos para recuperação se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear o tráfego associado ao sniffing e implementou políticas de filtragem para detectar e prevenir atividades relacionadas a capturas de pacotes não autorizadas.

Paulo, o administrador de rede, isolou o dispositivo responsável pelo sniffing de rede e iniciou uma análise detalhada para identificar o alcance do ataque. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como o sniffing foi realizado e as medidas tomadas para mitigação.

Pablo trabalhou para aplicar regras adicionais de segurança na rede e atualizou o SIEM QRadar com novos alertas para identificar padrões de tráfego associados a técnicas de sniffing. Ele também ajustou o monitoramento com Zabbix e Grafana para incluir detecção de atividades de captura de pacotes.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao monitoramento de rede e à proteção contra sniffing. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de sniffing e recomendações para fortalecer a segurança da rede.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e prevenção de sniffing de rede. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de captura de pacotes não autorizadas.

A DataSecure Corp. melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades que poderiam ser exploradas em futuros ataques de sniffing. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção da rede para prevenir e detectar técnicas de monitoramento não autorizadas.

