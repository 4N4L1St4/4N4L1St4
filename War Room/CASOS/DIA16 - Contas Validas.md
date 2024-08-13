<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1078 - Valid Accounts" width="160" height="160">
  </a>
  <h1 align="center">"Uso Indevido de Contas Válidas: O Caso do T1078"</h1>
</p>

## :dart: O guia para "Uso Indevido de Contas Válidas: O Caso do T1078"

Na manhã de segunda-feira, a equipe de segurança da SecureNet Inc. enfrentou um incidente crítico envolvendo o uso indevido de contas válidas. O ataque estava associado ao TTP T1078, que descreve a técnica de uso de contas válidas para obter acesso não autorizado aos sistemas. A resposta rápida da equipe foi essencial para identificar e mitigar a ameaça, garantindo a integridade da infraestrutura.

## :dart: Conteúdo

### Início

Às 08:15, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre múltiplos logins suspeitos em diferentes sistemas utilizando contas válidas. O alerta indicava que credenciais comprometidas estavam sendo usadas para acessar áreas críticas da rede. Pablo, o analista de segurança, foi designado para investigar a situação.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Zabbix e Grafana, Pablo confirmou que as contas válidas estavam sendo usadas de maneira não autorizada. A atividade estava associada ao TTP T1078 na matriz MITRE ATT&CK, que descreve a técnica de uso de contas válidas para obter e manter acesso a sistemas comprometidos.

### Impacto

O uso indevido de contas válidas estava permitindo que o atacante acessasse sistemas internos e informações sensíveis sem a necessidade de explorar vulnerabilidades adicionais. Isso comprometeu a segurança dos dados e levantou preocupações sobre a possível exfiltração de informações e comprometimento de sistemas críticos.

### Resolução

John, responsável pelos backups, foi acionado para garantir que os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele confirmou que os backups estavam intactos e prontos para recuperação se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para monitorar e bloquear acessos não autorizados e implementou políticas adicionais para detectar e bloquear logins suspeitos.

Paulo, o administrador de rede, isolou as contas comprometidas e iniciou uma investigação detalhada para identificar a origem das credenciais comprometidas. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como as contas válidas foram usadas e as medidas tomadas para mitigação.

Pablo trabalhou para aplicar novas regras de segurança e ajustar o SIEM QRadar para identificar padrões de acesso suspeitos relacionados ao uso de contas válidas. Ele também atualizou o monitoramento com Zabbix e Grafana para detectar atividades anômalas associadas a credenciais comprometidas.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao gerenciamento e proteção de contas. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de uso de contas válidas e recomendações para fortalecer a segurança das credenciais.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção e gerenciamento de credenciais, bem como a detecção e resposta a atividades relacionadas ao uso indevido de contas. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de acesso não autorizado.

A SecureNet Inc. melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades que poderiam ser exploradas no uso de contas válidas. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção da rede para prevenir e detectar técnicas de acesso não autorizado.

