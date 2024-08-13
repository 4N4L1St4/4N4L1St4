<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Data Transfer Size Limits" width="160" height="160">
  </a>
  <h1 align="center">"Limitação de Tamanho de Transferência de Dados: O Caso do T1020"</h1>
</p>

## :dart: O guia para "Limitação de Tamanho de Transferência de Dados: O Caso do T1020"

Na tarde de quinta-feira, a equipe de segurança da TechGuard Systems enfrentou um desafio crítico relacionado a limites de tamanho de transferência de dados. O incidente estava associado à técnica de "Data Transfer Size Limits", usada para evitar a detecção ao transferir dados em tamanhos menores que o habitual. A resposta ágil da equipe foi essencial para identificar e mitigar o impacto do ataque.

## :dart: Conteúdo

### Início

Às 15:30, Pablo, o analista de segurança, recebeu uma notificação do SIEM QRadar sobre um aumento incomum no tráfego de rede que estava dividido em pacotes menores que o usual. O alerta indicava que dados estavam sendo transferidos em tamanhos reduzidos, o que poderia estar associado a técnicas de exfiltração de dados disfarçadas. Gustavo, responsável pelas regras do firewall, foi designado para investigar a situação.

Ao revisar os logs com o XDR da SentinelOne e realizar uma análise detalhada com Grafana, Pablo confirmou que a transferência de dados estava sendo realizada em pacotes menores para evitar a detecção. A atividade estava associada à técnica T1020 na matriz MITRE ATT&CK, que descreve a transferência de dados em tamanhos limitados para evitar a detecção por ferramentas de monitoramento.

### Impacto

A técnica de limitação de tamanho de transferência de dados estava permitindo que o atacante exfiltrasse dados em pequenos fragmentos, o que dificultava a detecção e análise do tráfego. Isso levantou preocupações sobre a possível perda de dados sensíveis e a necessidade de uma resposta rápida para proteger as informações da empresa.

### Resolução

John, responsável pelos backups, garantiu que todos os dados críticos estavam seguros e disponíveis para restauração a partir dos backups mais recentes. Ele confirmou que os backups estavam intactos e preparados para recuperação se necessário.

Gustavo, que gerencia as regras do firewall, ajustou as regras para monitorar e bloquear pacotes de dados de tamanhos menores que o normal e implementou políticas de filtragem para detectar padrões de transferência anômalos.

Paulo, o administrador de rede, iniciou uma investigação para identificar a origem da transferência de dados e isolou os sistemas envolvidos. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando a técnica de limitação de tamanho de dados e as medidas tomadas para a mitigação.

Pablo trabalhou para atualizar as regras de segurança no WAF e ajustou o SIEM QRadar para identificar padrões de tráfego associados à técnica de transferência de dados em tamanhos reduzidos.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe revisou e atualizou as políticas de segurança relacionadas à transferência de dados e proteção contra exfiltração disfarçada. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise da técnica de limitação de tamanho de dados e recomendações para fortalecer a segurança da transferência de dados.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção e prevenção de técnicas de exfiltração de dados disfarçadas. A equipe reforçou as políticas de monitoramento e implementou controles adicionais para identificar e bloquear tentativas de exfiltração usando pacotes de dados pequenos.

A TechGuard Systems também melhorou o monitoramento com Zabbix e Grafana e integrou a gestão de vulnerabilidades com o Tenable para prevenir e detectar técnicas de limitação de tamanho de transferência de dados. A empresa reforçou a proteção dos sistemas para garantir a segurança e integridade das informações.

