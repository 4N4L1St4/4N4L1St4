<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Application Layer Protocol: Application Layer Protocols" width="160" height="160">
  </a>
  <h1 align="center">"Monitorar e responder a tentativas de mapeamento da rede e descoberta de serviços."</h1>
</p>

## :dart: Assunto e Tema

**Assunto:** Detecção de Atividade de Reconhecimento

**TTP:** T1071.001 - Application Layer Protocol: Application Layer Protocols

**Motivo:** Monitorar e responder a tentativas de mapeamento da rede e descoberta de serviços.

## :dart: O guia para "A Invasão do Dia de Ano Novo"

Em um tranquilo dia 1º de janeiro de 2024, a maioria dos funcionários da empresa TechSecure estava em férias comemorando a virada do ano. Poucas pessoas estavam atentas à rede, o que parecia ser uma oportunidade perfeita para um ataque. Mas a equipe de segurança estava preparada para qualquer eventualidade.

## :dart: Conteúdo

### Início

Era um feriado universal no Brasil, e a empresa TechSecure estava com a equipe reduzida. John, responsável pelos backups, estava de plantão, mas Gustavo, responsável pelas regras do firewall, e Paulo, responsável pela rede, estavam ausentes. Bruna, encarregada do pós-mortem, e Ilana, responsável pela conscientização em segurança, também estavam de férias. No entanto, Pablo estava atento a qualquer sinal de atividade suspeita.

Durante a madrugada, Pablo notou um aumento incomum de tráfego na rede. Utilizando o XDR da SentinelOne e o SIEM QRadar, ele detectou padrões que indicavam uma possível tentativa de mapeamento da rede. A equipe sabia que essas atividades poderiam estar associadas ao TTP T1071.001, que envolve o uso de protocolos de aplicação para reconhecimento.

### Impacto

O tráfego anômalo estava explorando as camadas de aplicação da rede, tentando descobrir serviços expostos e mapeando a topologia da infraestrutura. Se não fosse contido, o ataque poderia comprometer informações sensíveis e abrir portas para acessos não autorizados. O firewall Checkpoint estava sendo sobrecarregado, e a falta de atualização de algumas regras estava permitindo que o tráfego não desejado passasse.

### Resolução

Paulo, após receber uma notificação do QRadar, iniciou uma revisão das regras do firewall. Gustavo, mesmo de férias, foi contatado para fornecer orientações sobre as regras de firewall. Ele recomendou a criação de uma regra adicional para bloquear o tráfego suspeito e restringir o acesso aos serviços sensíveis.

Pablo também começou a analisar o tráfego suspeito com o auxílio do WAF e do Zabbix + Grafana para identificar e mitigar a ameaça. A equipe de resposta usou scripts PowerShell e ShellScript para automatizar a atualização das regras do firewall e aplicar patches rápidos nos servidores.

Com a ajuda do sistema de backup Veeam, John restaurou as configurações anteriores que estavam comprometidas. O uso do PAM CyberArk foi crucial para garantir que as credenciais de acesso permanecessem seguras e não fossem utilizadas pelos invasores.

### Implantação de Medidas de Segurança

Após a resolução do incidente, Bruna foi encarregada de realizar um pós-mortem detalhado para entender o que aconteceu e como melhorar as defesas. Ela elaborou um relatório que incluía a necessidade de uma revisão das regras de firewall e a implementação de políticas mais rígidas de monitoramento.

Ilana desenvolveu campanhas de conscientização sobre a importância de manter a vigilância constante, mesmo durante períodos de férias, e sobre como reconhecer sinais de atividades suspeitas. A equipe decidiu integrar o Tenable para uma gestão mais eficaz das vulnerabilidades e realizar treinamentos regulares para a equipe de segurança.

Para reforçar a segurança futura, a TechSecure atualizou suas práticas de monitoramento e resposta, incluindo o aprimoramento dos controles de acesso, a implementação de novos alertas no SIEM QRadar e a revisão dos protocolos de segurança em seus ambientes de servidores e clientes.
