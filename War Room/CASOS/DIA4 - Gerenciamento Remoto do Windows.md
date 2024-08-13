<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="T1028 - Windows Remote Management" width="160" height="160">
  </a>
  <h1 align="center">"O Incidente do Gerenciamento Remoto: O Caso do T1028"</h1>
</p>

## :dart: O guia para "O Incidente do Gerenciamento Remoto: O Caso do T1028"

Em uma manhã de quarta-feira, a equipe de segurança da TechGuard Inc. foi confrontada com uma situação crítica. Um alerta de segurança inesperado indicava que uma atividade não autorizada estava ocorrendo em um dos servidores da empresa, utilizando o Windows Remote Management (WinRM) para potencialmente comprometer o ambiente. O incidente foi rapidamente associado ao TTP T1028, que descreve o uso do WinRM para administração remota.

## :dart: Conteúdo

### Início

Na manhã de quarta-feira, às 08:00, John, o especialista em backups, estava revisando os logs de atividades recentes quando se deparou com um alerta gerado pelo SIEM QRadar. O alerta indicava uma atividade incomum no servidor de arquivos crítico da empresa. Pablo, o analista de segurança, foi imediatamente chamado para investigar.

Ao examinar os logs com o XDR da SentinelOne, Pablo percebeu que a atividade estava associada ao Windows Remote Management (WinRM). Isso sugeria que alguém poderia estar utilizando o WinRM para executar comandos remotamente e explorar o servidor. A equipe rapidamente percebeu que isso correspondia ao TTP T1028, que explora o WinRM para administração remota e possível exfiltração de dados.

### Impacto

A equipe estava preocupada com a possibilidade de que o WinRM estivesse sendo usado de forma maliciosa para acessar e exfiltrar dados sensíveis. A análise inicial indicou que o atacante poderia ter obtido acesso ao servidor utilizando credenciais comprometidas e estava executando comandos para explorar e manipular dados.

### Resolução

Gustavo, responsável pelas regras do firewall, rapidamente configurou o firewall Checkpoint para bloquear conexões WinRM não autorizadas. Paulo, o administrador de rede, revisou as configurações de acesso remoto e ajustou as regras para garantir que apenas IPs autorizados pudessem acessar o WinRM.

Bruna, encarregada do pós-mortem, começou a compilar um relatório detalhado do incidente. Ela documentou como o WinRM foi utilizado para a administração remota e as medidas que foram tomadas para conter a atividade maliciosa.

Pablo usou o WAF para monitorar e bloquear qualquer atividade suspeita relacionada ao WinRM, enquanto atualizava o SIEM QRadar com novos alertas para detectar padrões semelhantes no futuro.

### Implantação de Medidas de Segurança

Após a contenção do incidente, a equipe iniciou uma revisão abrangente das políticas de segurança relacionadas ao WinRM. Bruna elaborou um relatório pós-mortem detalhado, que incluiu uma análise de como a configuração do WinRM poderia ter sido explorada e as melhores práticas para evitar futuros incidentes.

Ilana, responsável pela conscientização em segurança, atualizou os treinamentos para incluir práticas recomendadas sobre o uso seguro do WinRM e a importância de monitorar o acesso remoto. A equipe também revisou e reforçou as regras do firewall e as políticas de gerenciamento de acesso.

A TechGuard Inc. integrou a gestão de vulnerabilidades com o Tenable e melhorou o monitoramento com Zabbix e Grafana para garantir que qualquer uso não autorizado de WinRM fosse detectado imediatamente. A empresa também começou a realizar auditorias regulares de segurança para garantir que todas as configurações de gerenciamento remoto estivessem seguras.

