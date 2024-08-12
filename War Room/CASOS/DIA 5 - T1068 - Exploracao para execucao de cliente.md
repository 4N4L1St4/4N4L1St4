<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1068 - Exploitation for Client Execution" width="160" height="160">
  </a>
  <h1 align="center">"A Exploração Crítica: Execução de Código em Clientes"</h1>
</p>

## :dart: O guia para "A Exploração Crítica: Execução de Código em Clientes"

Na sexta-feira à tarde, a equipe de segurança da CyberShield Ltda. enfrentou uma crise crítica quando um ataque foi detectado explorando uma vulnerabilidade para execução de código em clientes. O incidente estava associado ao TTP T1068, que descreve a exploração de vulnerabilidades para executar código em sistemas cliente. A rápida resposta da equipe foi crucial para conter o problema e mitigar o impacto.

## :dart: Conteúdo

### Início

Às 15:30 de sexta-feira, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre uma atividade suspeita em várias estações de trabalho. O alerta indicava que um exploit conhecido estava sendo utilizado para executar código remotamente nos clientes. Pablo, o analista de segurança, imediatamente começou a investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne, Pablo descobriu que a atividade estava associada a uma vulnerabilidade crítica em um software cliente comum. A análise revelou que a vulnerabilidade estava sendo explorada para obter execução remota de código, o que correspondia ao TTP T1068 na matriz MITRE ATT&CK.

### Impacto

A exploração estava comprometendo a segurança de várias estações de trabalho na empresa, permitindo que o atacante executasse código malicioso nos sistemas dos usuários finais. Isso levantou preocupações sobre a possível exfiltração de dados sensíveis e a instalação de malware em larga escala.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e restauráveis. Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear qualquer tráfego suspeito associado ao exploit conhecido. 

Paulo, o administrador de rede, isolou as estações de trabalho afetadas para evitar que o exploit se espalhasse ainda mais pela rede. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado do incidente, destacando como a exploração ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou com a equipe para aplicar patches de segurança nas estações de trabalho e configurar o WAF para proteger contra futuros ataques explorando vulnerabilidades semelhantes. Ele também atualizou o SIEM QRadar com novos alertas para identificar padrões de exploração.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão detalhada das políticas de segurança e da gestão de vulnerabilidades. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da vulnerabilidade explorada e recomendações para evitar futuros incidentes.

Ilana atualizou os treinamentos de conscientização para incluir informações sobre as vulnerabilidades conhecidas e melhores práticas para garantir a segurança dos sistemas cliente. A equipe também reforçou as políticas de patching e atualização de software, integrando a gestão de vulnerabilidades com o Tenable.

A CyberShield Ltda. melhorou o monitoramento com Zabbix e Grafana e começou a realizar auditorias regulares de segurança para garantir que todas as vulnerabilidades conhecidas fossem tratadas de forma proativa. A empresa também implementou controles adicionais para a execução de código e monitoramento de atividades suspeitas em suas estações de trabalho.

