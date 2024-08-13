<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1071.001 - Application Layer Protocol: Application Layer Protocols" width="160" height="160">
  </a>
  <h1 align="center">"Protocolos de Camada de Aplicação: O Caso do T1071.001"</h1>
</p>

## :dart: O guia para "Protocolos de Camada de Aplicação: O Caso do T1071.001"

Na noite de sábado, a equipe de segurança da GlobalTech Enterprises enfrentou um desafio crítico envolvendo a técnica T1071.001, que utiliza protocolos de camada de aplicação para comunicação com servidores de comando e controle (C2). A resposta rápida da equipe foi crucial para identificar e neutralizar a ameaça antes que pudesse causar danos significativos.

## :dart: Conteúdo

### Início

Às 23:30, Pablo, o analista de segurança, recebeu uma notificação do XDR da SentinelOne sobre um aumento incomum de tráfego em protocolos de camada de aplicação na rede da empresa. O alerta indicava que havia comunicação suspeita com servidores externos através de protocolos como HTTP e HTTPS, sugerindo a possibilidade de um canal de comando e controle (C2) ativo. Gustavo, responsável pelas regras do firewall, foi chamado para investigar.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1071.001 estava sendo utilizada. Os dados estavam sendo transmitidos por meio de protocolos de aplicação para evitar a detecção e comunicação com os servidores de comando e controle.

### Impacto

A utilização de protocolos de camada de aplicação para comunicação C2 permitiu ao atacante enviar comandos e receber dados sem levantar suspeitas, já que o tráfego estava disfarçado como tráfego legítimo. Isso levantou preocupações sobre a possível exfiltração de dados sensíveis e o controle remoto dos sistemas da empresa.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que a integridade dos dados estava mantida e que estava preparado para restaurar qualquer dado comprometido.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear tráfego suspeito associado a protocolos de camada de aplicação utilizados para comunicação C2. Ele também implementou políticas de filtragem para detectar padrões de tráfego anômalos.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando a técnica T1071.001 e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à comunicação com servidores C2 via protocolos de aplicação. Ele também coordenou com a equipe para aplicar atualizações e patches de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra comunicação C2 disfarçada. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1071.001 e recomendações para fortalecer a segurança dos protocolos de camada de aplicação.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção de comunicação C2 via protocolos de aplicação. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear canais de comando e controle.

A GlobalTech Enterprises também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade da rede, prevenindo o uso de protocolos de camada de aplicação para atividades maliciosas.

