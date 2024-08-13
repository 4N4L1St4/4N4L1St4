<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1531 - Account Access Removal" width="160" height="160">
  </a>
  <h1 align="center">"Remoção de Acesso a Contas: O Caso do T1531"</h1>
</p>

## :dart: O guia para "Remoção de Acesso a Contas: O Caso do T1531"

Na tarde de terça-feira, a equipe de segurança da TechGuard Inc. enfrentou um incidente crítico associado ao T1531, que envolve a remoção de acesso a contas de usuário. A resposta rápida e coordenada da equipe foi essencial para identificar a causa do problema e restaurar o controle sobre as contas afetadas.

## :dart: Conteúdo

### Início

Às 15:00, Bruna, a responsável pelo pós-mortem, recebeu um alerta de que múltiplas contas de usuário estavam sendo removidas de forma não autorizada do Active Directory. O alerta foi gerado pelo SIEM QRadar, que detectou atividades anômalas relacionadas à gestão de contas. Gustavo, responsável pelas regras do firewall, e Paulo, o administrador de rede, foram imediatamente acionados para ajudar na investigação.

Após uma análise inicial, Pablo, o analista de segurança, confirmou que a técnica T1531 estava sendo explorada. Atacantes estavam realizando a remoção de contas de usuário para bloquear o acesso legítimo e possivelmente dificultar a resposta ao incidente.

### Impacto

A remoção não autorizada de contas de usuário causou a perda temporária de acesso para funcionários e afetou a capacidade da equipe de responder ao incidente e realizar suas tarefas diárias. Isso levantou preocupações sobre a possível tentativa de encobrir atividades maliciosas e dificultar a recuperação e a investigação do ataque.

### Resolução

John, responsável pelos backups, confirmou que os dados das contas de usuário e as configurações do Active Directory estavam incluídos nos backups mais recentes. Ele iniciou a restauração das contas afetadas a partir dos backups para garantir que os funcionários pudessem retomar suas atividades.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear atividades relacionadas à modificação não autorizada de contas de usuário. Ele também revisou as políticas de acesso e os logs para identificar possíveis sinais de comprometimento.

Paulo, o administrador de rede, coordenou com a equipe para implementar medidas de segurança adicionais e garantir que o acesso às contas de usuário fosse restaurado de forma segura. Bruna elaborou um relatório detalhado sobre o incidente, documentando a técnica T1531 e as ações tomadas para mitigar o problema.

Pablo trabalhou para atualizar as regras de segurança e ajustou o SIEM QRadar para identificar padrões de atividades relacionados à remoção de contas. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança no Active Directory.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à gestão de contas de usuário e a proteção contra a remoção não autorizada de contas. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1531 e recomendações para fortalecer a segurança contra ataques que visam a remoção de contas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra a remoção não autorizada de contas e a importância de monitorar e controlar o acesso às contas de usuário. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas à gestão de contas de usuário.

A TechGuard Inc. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo a remoção não autorizada de contas e garantindo a detecção eficaz de incidentes.

