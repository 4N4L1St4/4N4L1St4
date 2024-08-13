<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1555 - Credentials from Password Stores" width="160" height="160">
  </a>
  <h1 align="center">"Credenciais dos Armazenamentos de Senhas: O Caso do T1555"</h1>
</p>

## :dart: O guia para "Credenciais dos Armazenamentos de Senhas: O Caso do T1555"

Na manhã de quarta-feira, a equipe de segurança da SecureTech Solutions enfrentou um incidente grave associado ao T1555, que envolve a coleta de credenciais de armazenamentos de senhas. A resposta rápida e eficaz da equipe foi essencial para identificar e neutralizar a ameaça antes que pudesse comprometer os dados sensíveis da empresa.

## :dart: Conteúdo

### Início

Às 09:20, Pablo, o analista de segurança, recebeu uma notificação do XDR da SentinelOne sobre atividades suspeitas envolvendo a extração de credenciais de armazenamentos de senhas. O alerta indicava que ferramentas e técnicas para acessar gerenciadores de senhas estavam sendo usadas para obter credenciais de sistemas críticos. Gustavo, responsável pelas regras do firewall, foi imediatamente chamado para investigar.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1555 estava sendo utilizada. Os atacantes estavam explorando vulnerabilidades em armazenamentos de senhas para coletar credenciais e obter acesso não autorizado a sistemas críticos.

### Impacto

A coleta de credenciais dos armazenamentos de senhas permitiu aos atacantes obter acesso a contas e sistemas sensíveis. Isso levantou preocupações sobre a possível exfiltração de dados confidenciais e a capacidade dos atacantes de mover-se lateralmente pela rede, comprometer mais sistemas e realizar atividades maliciosas.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e prontos para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear atividades associadas à coleta de credenciais de armazenamentos de senhas. Ele também implementou políticas de monitoramento para detectar acessos não autorizados a gerenciadores de senhas.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a elaboração de um relatório detalhado sobre o incidente, documentando a técnica T1555 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à extração de credenciais. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao armazenamento e proteção de senhas. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1555 e recomendações para fortalecer a segurança dos gerenciadores de senhas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção de credenciais e a prevenção da coleta não autorizada de senhas. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de acesso aos armazenamentos de senhas.

A SecureTech Solutions também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo a coleta não autorizada de credenciais e garantindo a detecção eficaz de incidentes.

