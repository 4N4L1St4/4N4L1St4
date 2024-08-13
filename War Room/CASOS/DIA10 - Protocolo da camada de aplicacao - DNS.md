<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1071.004 - Application Layer Protocol: DNS" width="160" height="160">
  </a>
  <h1 align="center">"A Intrusão pelo DNS: O Caso do T1071.004"</h1>
</p>

## :dart: O guia para "A Intrusão pelo DNS: O Caso do T1071.004"

Na madrugada de terça-feira, a equipe de segurança da CyberGuard Technologies enfrentou um incidente crítico envolvendo o uso do protocolo DNS para comunicação de comando e controle. O ataque estava associado ao TTP T1071.004, que descreve o uso do DNS como um canal de comunicação para atividades maliciosas. A resposta rápida da equipe foi essencial para identificar e neutralizar a ameaça.

## :dart: Conteúdo

### Início

Às 01:00 da manhã, Paulo, o administrador de rede, notou um aumento anômalo no tráfego DNS em vários servidores da empresa. O tráfego estava gerando um volume incomum de consultas DNS, que indicavam uma possível tentativa de comunicação de comando e controle através do protocolo DNS. Gustavo, responsável pelas regras do firewall, acionou a equipe para uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne e o SIEM QRadar, Pablo descobriu que o tráfego DNS estava sendo utilizado para enviar comandos e exfiltrar dados. A atividade estava associada ao TTP T1071.004 na matriz MITRE ATT&CK, que descreve o uso do DNS para comunicação de comando e controle, ocultando o tráfego malicioso dentro do tráfego DNS legítimo.

### Impacto

O uso do DNS para comunicação maliciosa estava comprometendo a segurança da rede, pois permitia que o atacante enviasse comandos e recebesse dados sem ser detectado facilmente. Isso levantou preocupações sobre a possível exfiltração de dados e a manutenção do acesso não autorizado.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e restauráveis a partir dos backups mais recentes disponíveis. Ele garantiu que os backups estavam intactos e prontos para uma possível restauração.

Gustavo, que gerencia as regras do firewall, ajustou as regras para filtrar e bloquear o tráfego DNS suspeito, e implementou regras adicionais para detectar atividades de comando e controle através do DNS. 

Paulo, o administrador de rede, começou a revisar e restringir as configurações de DNS nos servidores e estações de trabalho afetados para minimizar o impacto. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando como o uso do DNS para comunicação maliciosa ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as configurações de segurança no WAF para proteger contra o tráfego DNS malicioso e ajustou o SIEM QRadar para identificar padrões de tráfego DNS associado a atividades de comando e controle.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao uso do DNS. Bruna elaborou um relatório pós-mortem detalhado, incluindo uma análise da técnica de comunicação via DNS e recomendações para fortalecer a segurança da rede.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção de tráfego DNS suspeito e melhores práticas para monitorar e proteger contra comunicações maliciosas através do DNS. A equipe também reforçou as políticas de monitoramento de rede e implementou controles adicionais para identificar e bloquear tráfego DNS não autorizado.

A CyberGuard Technologies melhorou o monitoramento com Zabbix e Grafana e iniciou a realização de auditorias regulares para detectar tráfego DNS malicioso. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção da rede para prevenir e detectar tentativas de comunicação maliciosa via DNS.

