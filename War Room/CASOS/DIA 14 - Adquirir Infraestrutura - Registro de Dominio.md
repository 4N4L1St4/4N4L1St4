<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1587.001 - Acquire Infrastructure: Domain Registration" width="160" height="160">
  </a>
  <h1 align="center">"A Ameaça por Registro de Domínio: O Caso do T1587.001"</h1>
</p>

## :dart: O guia para "A Ameaça por Registro de Domínio: O Caso do T1587.001"

Na manhã de sexta-feira, a equipe de segurança da TechGuard Inc. enfrentou um incidente crítico envolvendo a aquisição de infraestrutura por meio do registro de domínio. O ataque estava associado ao TTP T1587.001, que descreve a técnica de registro de domínio para criar uma infraestrutura que pode ser usada para atividades maliciosas. A resposta rápida da equipe foi crucial para mitigar o impacto e proteger os recursos da empresa.

## :dart: Conteúdo

### Início

Às 10:00, Pablo, o analista de segurança, recebeu uma notificação do SIEM QRadar sobre um domínio recentemente registrado que estava fazendo consultas DNS para a rede da empresa. O domínio, que parecia estar associado a atividades maliciosas, levantou suspeitas sobre a criação de uma infraestrutura de comando e controle. Gustavo, responsável pelas regras do firewall, acionou a equipe para investigar a situação.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Zabbix e Grafana, Pablo confirmou que o domínio recém-registrado estava tentando se comunicar com os sistemas internos da empresa. A atividade estava associada ao TTP T1587.001 na matriz MITRE ATT&CK, que descreve a técnica de aquisição de infraestrutura por meio do registro de domínio para estabelecer comunicação com sistemas comprometidos.

### Impacto

A aquisição do domínio estava potencialmente permitindo que o atacante criasse uma infraestrutura de comando e controle, o que poderia levar a exfiltração de dados, disseminação de malware e comprometimento de sistemas internos. Isso levantou preocupações sobre a segurança da rede e a possível violação de dados.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e preparados para uma possível restauração.

Gustavo, que gerencia as regras do firewall, ajustou as regras para bloquear o tráfego associado ao domínio recém-registrado e implementou políticas de filtragem para evitar comunicação com domínios suspeitos.

Paulo, o administrador de rede, iniciou uma análise detalhada para identificar a origem das tentativas de comunicação e bloqueou o tráfego do domínio malicioso. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como o domínio foi registrado e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as configurações de segurança no WAF para proteger contra atividades relacionadas a novos domínios maliciosos e ajustou o SIEM QRadar para identificar padrões de tráfego associados a registros de domínios suspeitos.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao registro de domínios e ao monitoramento de novos registros. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de aquisição de infraestrutura e recomendações para melhorar a segurança da rede.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e resposta a registros de domínios maliciosos. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de comunicação com domínios recém-registrados.

A TechGuard Inc. melhorou o monitoramento com Zabbix e Grafana e iniciou auditorias regulares de segurança para identificar e corrigir vulnerabilidades que poderiam ser exploradas em futuros ataques relacionados a registros de domínios. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção da rede para prevenir e detectar tentativas de criação de infraestrutura maliciosa.

