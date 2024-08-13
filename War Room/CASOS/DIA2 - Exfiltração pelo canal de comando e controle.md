<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Exfiltration Over Command and Control Channel" width="160" height="160">
  </a>
  <h1 align="center">"A Grande Fuga: Exfiltração Através do Canal de Comando e Controle"</h1>
</p>

## :dart: O guia para "A Grande Fuga: Exfiltração Através do Canal de Comando e Controle"

Em um dia comum no escritório da InfoSec Corp, uma equipe de analistas estava realizando suas tarefas diárias quando começaram a notar um aumento inexplicável no tráfego de rede. O que parecia ser uma anomalia passageira logo se transformou em uma grande preocupação quando ficou claro que dados sensíveis estavam sendo exfiltrados para fora da rede da empresa.

## :dart: Conteúdo

### Início

Era uma segunda-feira de manhã, e a equipe de segurança estava revisando os logs do SIEM QRadar quando Pablo, o analista de segurança, detectou um tráfego de rede incomum. Usando o XDR da SentinelOne, ele notou que uma grande quantidade de dados estava sendo transmitida para um IP externo, o que parecia indicar uma potencial exfiltração.

### Impacto

A análise inicial revelou que os dados estavam sendo exfiltrados através de um canal de comando e controle (C2). Esse método, identificado como T1041 na matriz MITRE ATT&CK, permitia que o atacante enviasse dados para fora da rede de forma disfarçada. A quantidade de dados sendo transferida era alarmante, e a equipe temia que informações sensíveis e confidenciais pudessem ter sido comprometidas.

### Resolução

John, responsável pelos backups, verificou se os dados recentes estavam seguros e acessíveis em seus backups. Gustavo, responsável pelas regras de firewall, foi contatado para ajustar as regras e bloquear o tráfego para o IP suspeito.

Paulo, o administrador de rede, rapidamente configurou um filtro no firewall Checkpoint para bloquear qualquer comunicação com o endereço IP de comando e controle. Enquanto isso, Bruna, que estava encarregada do pós-mortem, começou a compilar um relatório detalhado do incidente.

Pablo utilizou o WAF para identificar e mitigar o tráfego de saída que estava usando protocolos comuns de aplicação para disfarçar a exfiltração. Ele trabalhou junto com a equipe para atualizar o SIEM QRadar com novos alertas que identificariam padrões semelhantes no futuro.

### Implantação de Medidas de Segurança

Após a contenção e resolução do incidente, a equipe iniciou uma revisão das políticas de segurança para prevenir futuros ataques. Bruna elaborou um relatório pós-mortem que detalhava como a exfiltração ocorreu, as vulnerabilidades exploradas e as melhorias necessárias.

Ilana foi encarregada de atualizar os treinamentos de conscientização em segurança, enfatizando a importância de monitorar tráfego de rede e detectar sinais de exfiltração de dados. A equipe também decidiu integrar a gestão de vulnerabilidades com o Tenable e melhorar as práticas de monitoramento com o Zabbix e Grafana.

Para reforçar a segurança de futuros eventos, a InfoSec Corp implementou novas regras no firewall, ajustou o WAF para detectar e bloquear tráfego suspeito e fez uma revisão abrangente das políticas de acesso e controle de dados. A empresa também começou a realizar simulações regulares de ataques para testar a prontidão e a eficácia de suas medidas de segurança.

