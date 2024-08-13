<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Data Encrypted for Impact" width="160" height="160">
  </a>
  <h1 align="center">"Criptografia de Dados para Impacto: O Caso do Ataque Ransomware"</h1>
</p>

## :dart: O guia para "Criptografia de Dados para Impacto: O Caso do Ataque Ransomware"

Na manhã de segunda-feira, a equipe de segurança da SecureTech Solutions enfrentou um incidente grave envolvendo criptografia de dados com o objetivo de impacto. O ataque estava associado à técnica de "Data Encrypted for Impact", geralmente usada em ataques de ransomware para criptografar dados e exigir resgate. A resposta rápida da equipe foi crucial para minimizar os danos e restaurar a operação normal.

## :dart: Conteúdo

### Início

Às 03:00, John, responsável pelos backups, recebeu alertas do sistema de monitoramento Zabbix indicando que arquivos críticos em vários servidores estavam sendo criptografados rapidamente. O alerta indicava um possível ataque de ransomware, que estava usando criptografia de dados para causar impacto significativo. Pablo, o analista de segurança, foi imediatamente acionado para investigar o incidente.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Grafana, Pablo confirmou que o ataque estava associado à técnica de criptografia de dados para impacto. A atividade estava relacionada a um ransomware que visava criptografar dados críticos para exigir um resgate, causando interrupção nas operações da empresa.

### Impacto

A criptografia de dados estava resultando na perda de acesso a arquivos críticos e afetando a continuidade dos negócios. O ataque estava comprometendo a disponibilidade de dados essenciais e ameaçando a integridade das operações da empresa. Isso levantou preocupações sobre a exfiltração de dados e a necessidade de uma resposta rápida para restaurar os dados e mitigar os danos.

### Resolução

John, que gerencia os backups, começou a restaurar os dados criptografados a partir dos backups mais recentes. Ele confirmou que os backups estavam intactos e prontos para a recuperação.

Gustavo, responsável pelas regras do firewall, ajustou as regras para bloquear a comunicação com endereços IP associados ao ransomware e implementar políticas de filtragem para prevenir a propagação do ataque.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar o impacto do ataque. Bruna, encarregada do pós-mortem, iniciou a compilação de um relatório detalhado sobre o incidente, documentando a criptografia dos dados e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF para proteger contra futuros ataques de ransomware e ajustou o SIEM QRadar para identificar padrões de tráfego associados à criptografia de dados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à proteção contra ransomware e criptografia de dados. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de criptografia para impacto e recomendações para fortalecer a segurança contra ransomware.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre prevenção de ransomware e resposta a ataques de criptografia de dados. A equipe reforçou as políticas de backup e recuperação, implementou controles adicionais para detectar e prevenir ataques de ransomware e melhorou o monitoramento com Zabbix e Grafana.

A SecureTech Solutions também integrou a gestão de vulnerabilidades com o Tenable e reforçou a proteção dos sistemas para prevenir e detectar técnicas de criptografia de dados usadas em ataques de ransomware.

