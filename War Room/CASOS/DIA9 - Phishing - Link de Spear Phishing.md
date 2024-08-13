<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1566.001 - Phishing: Spear Phishing Link" width="160" height="160">
  </a>
  <h1 align="center">"A Armadilha do Phishing: O Caso do Spear Phishing Link"</h1>
</p>

## :dart: O guia para "A Armadilha do Phishing: O Caso do Spear Phishing Link"

Na tarde de sexta-feira, a equipe de segurança da SecureTech Solutions enfrentou um incidente crítico envolvendo um ataque de spear phishing. O ataque estava associado ao TTP T1566.001, que descreve o uso de links de spear phishing para enganar alvos específicos e obter acesso não autorizado. A resposta ágil da equipe foi essencial para identificar e neutralizar a ameaça.

## :dart: Conteúdo

### Início

Às 15:00, Ilana, responsável pela conscientização em segurança, recebeu um alerta do SIEM QRadar sobre uma atividade incomum envolvendo e-mails recebidos por vários funcionários. Os e-mails continham links de spear phishing que pareciam legítimos, mas foram identificados como fraudulentos. Pablo, o analista de segurança, iniciou uma investigação imediata.

Ao revisar os logs com o XDR da SentinelOne, Pablo descobriu que os links de phishing estavam direcionando os usuários para um site falso projetado para capturar credenciais. A atividade estava associada ao TTP T1566.001 na matriz MITRE ATT&CK, que descreve o uso de links de phishing direcionados para enganar vítimas específicas.

### Impacto

O ataque de spear phishing estava comprometendo a segurança da empresa, pois alguns funcionários clicaram nos links maliciosos e forneceram suas credenciais em um site falso. Isso levantou preocupações sobre a possível exfiltração de dados e a possível instalação de malware nos sistemas afetados.

### Resolução

John, responsável pelos backups, verificou se os dados críticos estavam seguros e se os backups mais recentes estavam disponíveis para uma possível restauração. Ele garantiu que os dados eram restauráveis e que a integridade dos dados estava preservada.

Gustavo, que gerencia as regras do firewall, atualizou as regras para bloquear os sites de phishing identificados e implementar regras adicionais para detectar atividades de phishing. 

Paulo, o administrador de rede, isolou as estações de trabalho afetadas e iniciou uma varredura completa para identificar possíveis compromissos. Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado sobre o incidente, documentando como o ataque de phishing ocorreu e as medidas tomadas para mitigação.

Pablo trabalhou para aplicar patches e atualizações de segurança nos sistemas afetados e ajustar o WAF para proteger contra ataques de phishing semelhantes no futuro. Ele também atualizou o SIEM QRadar com novos alertas para detectar links de phishing e comportamentos associados.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão detalhada das políticas de segurança relacionadas ao phishing. Bruna elaborou um relatório pós-mortem detalhado, que incluía uma análise do ataque de spear phishing e recomendações para fortalecer a segurança contra futuros ataques.

Ilana atualizou os treinamentos de conscientização em segurança para incluir informações sobre a detecção de spear phishing e melhores práticas para evitar cliques em links suspeitos. A equipe reforçou as políticas de filtro de e-mail e implementou soluções de antiphishing mais robustas.

A SecureTech Solutions melhorou o monitoramento com Zabbix e Grafana e começou a realizar simulações regulares de phishing para treinar os funcionários. A empresa também integrou a gestão de vulnerabilidades com o Tenable e reforçou a segurança da rede para prevenir e detectar tentativas de phishing.

