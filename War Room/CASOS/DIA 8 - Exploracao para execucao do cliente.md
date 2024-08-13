<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1083 - File and Directory Discovery" width="160" height="160">
  </a>
  <h1 align="center">"Exploração e Descoberta: O Caso do T1083"</h1>
</p>

## :dart: O guia para "Exploração e Descoberta: O Caso do T1083"

Na madrugada de terça-feira, a equipe de segurança da TechSecure Inc. enfrentou um incidente crítico quando atividades suspeitas de descoberta de arquivos e diretórios foram detectadas. O ataque estava associado ao TTP T1083, que descreve a técnica de descoberta de arquivos e diretórios para mapear a estrutura do sistema e identificar informações sensíveis. A resposta rápida da equipe foi essencial para identificar e mitigar o impacto do ataque.

## :dart: Conteúdo

### Início

Às 03:00 da manhã, Gustavo, responsável pelas regras do firewall, recebeu um alerta do SIEM QRadar sobre atividades suspeitas em um dos servidores de arquivos críticos da empresa. O alerta indicava que comandos de descoberta de arquivos e diretórios estavam sendo executados, sugerindo uma tentativa de mapeamento da estrutura do sistema. Pablo, o analista de segurança, iniciou uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne, Pablo descobriu que o atacante estava utilizando técnicas de descoberta para mapear a estrutura dos diretórios e arquivos no servidor. A atividade estava associada ao TTP T1083 na matriz MITRE ATT&CK, que descreve a técnica de exploração de arquivos e diretórios para identificar informações valiosas.

### Impacto

A descoberta de arquivos e diretórios estava comprometendo a segurança dos sistemas da empresa, pois permitia que o atacante identificasse a estrutura do sistema e locais onde informações sensíveis poderiam estar armazenadas. Isso levantou preocupações sobre a possível exfiltração de dados e a exposição de informações críticas.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e restauráveis a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e prontos para uma possível restauração.

Gustavo, que gerencia as regras do firewall, ajustou as regras para limitar o acesso ao servidor de arquivos e bloquear qualquer atividade suspeita relacionada à descoberta de arquivos e diretórios. 

Paulo, o administrador de rede, isolou o servidor afetado para impedir que a atividade de descoberta se espalhasse pela rede. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado do incidente, documentando como a descoberta de arquivos e diretórios ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou com a equipe para aplicar regras adicionais de monitoramento e proteção no servidor de arquivos. Ele também atualizou o SIEM QRadar com novos alertas para detectar atividades de descoberta semelhantes no futuro.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão detalhada das políticas de segurança e da proteção de arquivos e diretórios. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de descoberta e recomendações para fortalecer a segurança dos sistemas.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção de arquivos e diretórios e as melhores práticas para prevenir tentativas de descoberta de informações sensíveis. A equipe reforçou as políticas de acesso e monitoramento, integrando a gestão de vulnerabilidades com o Tenable.

A TechSecure Inc. melhorou o monitoramento com Zabbix e Grafana e começou a realizar auditorias regulares de segurança para garantir que todas as atividades de descoberta de arquivos e diretórios fossem identificadas e tratadas. A empresa também implementou controles adicionais para proteger a estrutura dos sistemas e garantir que informações sensíveis fossem adequadamente protegidas.

