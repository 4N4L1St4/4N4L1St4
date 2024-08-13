<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1203 - Exploitation for Client Execution" width="160" height="160">
  </a>
  <h1 align="center">"Exploração Crítica: Execução de Código em Clientes com T1203"</h1>
</p>

## :dart: O guia para "Exploração Crítica: Execução de Código em Clientes com T1203"

Na manhã de quinta-feira, a equipe de segurança da SecureNet Corp. foi surpreendida por um ataque que explorava uma vulnerabilidade crítica para executar código em clientes. O incidente estava relacionado ao TTP T1203, que descreve a exploração de vulnerabilidades para execução de código em sistemas cliente. A resposta ágil da equipe foi essencial para mitigar o impacto e proteger os sistemas afetados.

## :dart: Conteúdo

### Início

Às 10:00 da manhã, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre uma atividade incomum em várias estações de trabalho. O alerta indicava que uma vulnerabilidade conhecida estava sendo explorada para execução remota de código nos clientes. Pablo, o analista de segurança, iniciou uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne, Pablo identificou que a atividade estava associada a um exploit conhecido para uma vulnerabilidade crítica em um software cliente. Esse exploit permitia a execução de código remoto, correspondendo ao TTP T1203 na matriz MITRE ATT&CK.

### Impacto

A exploração estava comprometendo várias estações de trabalho na empresa, permitindo que o atacante executasse código malicioso nos sistemas dos usuários finais. Isso levantou preocupações sobre a possível exfiltração de dados sensíveis e a instalação de malware.

### Resolução

John, responsável pelos backups, garantiu que os dados críticos estavam seguros e que os backups mais recentes estavam disponíveis para uma possível restauração. Gustavo, que gerencia as regras do firewall, atualizou as regras para bloquear qualquer tráfego relacionado ao exploit conhecido.

Paulo, o administrador de rede, isolou as estações de trabalho afetadas para evitar que a exploração se espalhasse pela rede. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como a exploração ocorreu e as medidas adotadas para mitigação.

Pablo trabalhou para aplicar patches de segurança nas estações de trabalho afetadas e ajustou o WAF para proteger contra ataques semelhantes no futuro. Ele também atualizou o SIEM QRadar com novos alertas para identificar padrões de exploração relacionados ao T1203.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão abrangente das políticas de segurança e das práticas de patching. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da vulnerabilidade explorada e as medidas tomadas para prevenir futuros incidentes.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a vulnerabilidade e melhores práticas para proteger sistemas cliente. A equipe reforçou as políticas de atualização de software e integrou a gestão de vulnerabilidades com o Tenable.

A SecureNet Corp. também melhorou o monitoramento com Zabbix e Grafana e começou a realizar auditorias regulares de segurança para garantir que todas as vulnerabilidades conhecidas fossem tratadas de forma proativa. A empresa implementou controles adicionais para a execução de código e monitoramento de atividades suspeitas nas estações de trabalho.

