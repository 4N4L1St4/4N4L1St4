<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1021.001 - Remote Desktop Protocol" width="160" height="160">
  </a>
  <h1 align="center">"Serviços Remotos: O Caso do T1021.001 - Remote Desktop Protocol"</h1>
</p>

## :dart: O guia para "Serviços Remotos: O Caso do T1021.001 - Remote Desktop Protocol"

Na madrugada de segunda-feira, a equipe de segurança da TechDefense Corp. enfrentou um incidente crítico associado ao T1021.001, que envolve o uso do Remote Desktop Protocol (RDP) para acesso remoto não autorizado. A resposta rápida e coordenada da equipe foi essencial para identificar e neutralizar a ameaça antes que causasse danos irreparáveis.

## :dart: Conteúdo

### Início

Às 02:15, Gustavo, responsável pelas regras do firewall, recebeu um alerta do SIEM QRadar indicando atividades suspeitas relacionadas ao protocolo Remote Desktop Protocol (RDP). O alerta sugeria que alguém estava tentando acessar sistemas críticos da empresa usando RDP, o que poderia indicar uma tentativa de acesso não autorizado. Pablo, o analista de segurança, foi imediatamente chamado para investigar o incidente.

Após revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Grafana, Pablo confirmou que a técnica T1021.001 estava sendo utilizada. O tráfego indicava tentativas de conexão RDP para acessar sistemas internos sem autorização.

### Impacto

O uso do RDP para acesso remoto não autorizado permitiu ao atacante explorar vulnerabilidades e obter acesso aos sistemas críticos. Isso levantou preocupações sobre a possível instalação de malware, exfiltração de dados e comprometimento da integridade dos sistemas da empresa.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear conexões RDP não autorizadas e implementou políticas adicionais para proteger o acesso remoto. Ele também configurou o firewall para monitorar e registrar todas as tentativas de conexão RDP.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar o acesso remoto não autorizado. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando a técnica T1021.001 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados ao uso não autorizado do RDP. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao uso do Remote Desktop Protocol e proteção contra acesso remoto não autorizado. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1021.001 e recomendações para fortalecer a segurança do RDP.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção do RDP e a detecção de acesso remoto não autorizado. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear conexões RDP suspeitas.

A TechDefense Corp. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo o uso não autorizado do RDP e garantindo a detecção eficaz de incidentes.

