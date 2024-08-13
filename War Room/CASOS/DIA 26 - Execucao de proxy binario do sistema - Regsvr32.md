<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1218.001 - System Binary Proxy Execution: Regsvr32" width="160" height="160">
  </a>
  <h1 align="center">"Execução de Binário do Sistema: O Caso do T1218.001 - Regsvr32"</h1>
</p>

## :dart: O guia para "Execução de Binário do Sistema: O Caso do T1218.001 - Regsvr32"

Na madrugada de terça-feira, a equipe de segurança da InfoSec Corp. enfrentou um incidente crítico associado ao T1218.001, que envolve a execução de binários do sistema utilizando o Regsvr32. A rápida resposta da equipe foi crucial para identificar e mitigar a ameaça antes que ela pudesse comprometer a integridade dos sistemas da empresa.

## :dart: Conteúdo

### Início

Às 03:30, Pablo, o analista de segurança, detectou uma atividade incomum através do XDR da SentinelOne. O alerta indicava que o binário Regsvr32 estava sendo usado para carregar um arquivo DLL suspeito. A equipe imediatamente suspeitou que a técnica T1218.001 estava sendo explorada para execução de código malicioso através do Regsvr32. Gustavo, responsável pelas regras do firewall, foi convocado para ajudar na investigação.

Após revisar os logs com o SIEM QRadar e analisar o tráfego com Grafana, Pablo confirmou que a técnica T1218.001 estava sendo utilizada. O Regsvr32 estava sendo manipulado para executar um código malicioso que havia sido carregado como uma DLL.

### Impacto

O uso do Regsvr32 para execução de código malicioso permitiu aos atacantes executar comandos e scripts em sistemas comprometidos sem ser detectados facilmente. Isso levantou preocupações sobre a possível instalação de malware e a capacidade dos atacantes de manter a persistência nos sistemas da empresa.

### Resolução

John, responsável pelos backups, confirmou que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele garantiu que os backups estavam intactos e prontos para recuperação, se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para identificar e bloquear atividades associadas ao uso não autorizado do Regsvr32. Ele também configurou o firewall para monitorar e registrar todas as tentativas de uso do Regsvr32.

Paulo, o administrador de rede, isolou os sistemas afetados e redesenhou a infraestrutura para limitar a propagação do ataque. Bruna, encarregada do pós-mortem, iniciou a elaboração de um relatório detalhado sobre o incidente, documentando a técnica T1218.001 e as medidas tomadas para mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados ao uso do Regsvr32 para execução de código malicioso. Ele também coordenou com a equipe para aplicar correções e atualizações de segurança nos sistemas afetados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas ao uso do Regsvr32 e proteção contra a execução não autorizada de código. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica T1218.001 e recomendações para fortalecer a segurança dos sistemas contra a execução de binários do sistema.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a proteção contra técnicas de execução de código malicioso, como a técnica T1218.001. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear atividades suspeitas associadas ao Regsvr32.

A InfoSec Corp. também integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir a segurança e integridade dos sistemas, prevenindo o uso não autorizado de binários do sistema e garantindo a detecção eficaz de incidentes.

