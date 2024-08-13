 <p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Guia de Resolução de Incidentes (SNOC)" width="160" height="160">
  </a>
  <h1 align="center">Guia de Resolução de Incidentes (SNOC)</h1>
</p>

## :dart: O guia para alavancar a sua carreira

"Este guia foi elaborado para aqueles que desejam aprimorar suas habilidades em resolução de incidentes. Aqui, você encontrará informações valiosas sobre como identificar, mitigar e resolver incidentes de segurança de forma eficaz."

## ⚠️ Aviso importante

> "Antes de tudo, você pode me ajudar e colaborar. Deu bastante trabalho fazer esse repositório e organizá-lo para melhorar seus estudos ou trabalho. Portanto, você pode me ajudar das seguintes maneiras:"

[![LinkedIn](https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gabriel-oliveira-215812184/)
[![Gmail](https://img.shields.io/badge/-Gmail-%23333?style=for-the-badge&logo=gmail&logoColor=white)](mailto:noc@controleti.net)
[![Instagram](https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/analistagabriel.exe/)

## 💡 Nossa proposta

> "Compartilhar informações detalhadas sobre resolução de incidentes e práticas recomendadas para melhorar a sua atuação em situações de crise. O guia será atualizado continuamente com novas informações e técnicas."

## :beginner: Para quem está começando agora

> "A resolução de incidentes pode parecer complexa à primeira vista, mas não se assuste com a quantidade de informações. Com o tempo e a prática, você ganhará confiança e habilidades para lidar com qualquer situação. Comece aos poucos e estude cada tópico com atenção."

## 📚 ÍNDICE

### 🚨 Resolução de Incidentes (SNOC)

- **Detecção de Atividade de Reconhecimento**
  - **TTP:** [T1071.001 - Application Layer Protocol: Application Layer Protocols](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA1%20-%20Detec%C3%A7%C3%A3o%20de%20Atividade%20de%20Reconhecimento.md)
  - **Motivo:** Monitorar e responder a tentativas de mapeamento da rede e descoberta de serviços.

- **Prevenção de Exfiltração de Dados**
  - **TTP:** [T1041 - Exfiltration Over Command and Control Channel](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA2%20-%20Exfiltra%C3%A7%C3%A3o%20pelo%20canal%20de%20comando%20e%20controle.md)
  - **Motivo:** Impedir que dados críticos sejam enviados para fora da rede via canais de comando e controle.

- **Resposta a Ameaças Internas**
  - **TTP:** [T1071.003 - Application Layer Protocol: Web Protocols](https://attack.mitre.org/techniques/T1071/003)
  - **Motivo:** Lidar com atividades suspeitas de insiders que podem abusar de protocolos da web para atividades maliciosas.

- **Monitoramento de Ferramentas de Administração Remota**
  - **TTP:** [T1028 - Windows Remote Management](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA4%20-%20Gerenciamento%20Remoto%20do%20Windows.md)
  - **Motivo:** Detectar e responder ao uso não autorizado de ferramentas de administração remota.

- **Análise de Atividade de Escalada de Privilégios**
  - **TTP:** [T1068 - Exploitation for Client Execution](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA5%20-%20Exploracao%20para%20execucao%20de%20cliente.md)
  - **Motivo:** Investigar e mitigar tentativas de escalada de privilégios através de exploração de vulnerabilidades.

- **Gerenciamento de Incidentes de Cobalt Strike**
  - **TTP:** [T1203 - Exploitation for Client Execution](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA6%20-%20Exploracao%20para%20execucao%20do%20cliente.md)
  - **Motivo:** Responder a incidentes envolvendo ferramentas de penetração como Cobalt Strike.

- **Mitigação de Acesso Não Autorizado**
  - **TTP:** [T1070.001 - Indicator Removal on Host: Clear Windows Event Logs](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA7%20-%20Remocao%20do%20indicador%20no%20host%20-%20Limpar%20logs%20de%20eventos%20do%20Windows.md)
  - **Motivo:** Prevenir e detectar tentativas de limpar logs para ocultar atividades maliciosas.

- **Controle de Análise de Dados de Malware**
  - **TTP:** [T1083 - File and Directory Discovery](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA8%20-%20Exploracao%20para%20execucao%20do%20cliente.md)
  - **Motivo:** Monitorar e analisar a descoberta de arquivos e diretórios usados por malware.

- **Resposta a Ataques de Phishing**
  - **TTP:** [T1566.001 - Phishing: Spear Phishing Link](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA9%20-%20Phishing%20-%20Link%20de%20Spear%20Phishing.md)
  - **Motivo:** Identificar e mitigar campanhas de phishing direcionadas a indivíduos dentro da organização.

- **Análise de Comportamento de Comando e Controle**
  - **TTP:** [T1071.004 - Application Layer Protocol: DNS](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA10%20-%20Protocolo%20da%20camada%20de%20aplicacao%20-%20DNS.md)
  - **Motivo:** Detectar e responder a atividades de comando e controle via DNS.

- **Resposta a Exploração de Vulnerabilidades**
  - **TTP:** [T1203 - Exploitation for Client Execution](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA11%20-%20Exploracao%20para%20execucao%20do%20cliente.md)
  - **Motivo:** Lidar com ataques que exploram vulnerabilidades em aplicativos cliente.

- **Monitoramento de Processos de Injeção de Código**
  - **TTP:** [T1055 - Process Injection](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA12%20-%20Injecao%20de%20Processo.md)
  - **Motivo:** Detectar e responder a injeções de código malicioso em processos legítimos.

- **Gerenciamento de Tentativas de DDoS**
  - **TTP:** [T1499 - Endpoint Denial of Service](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA13%20-%20Negacao%20de%20servico%20de%20ponto%20final.md)
  - **Motivo:** Monitorar e mitigar ataques de negação de serviço distribuído.

- **Resposta a Atividades de Engenharia Social**
  - **TTP:** [T1587.001 - Acquire Infrastructure: Domain Registration](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA14%20-%20Adquirir%20Infraestrutura%20-%20Registro%20de%20Dominio.md)
  - **Motivo:** Identificar e mitigar atividades de engenharia social através da aquisição de domínios e infraestrutura.

- **Análise de Tráfego de Rede Suspeito**
  - **TTP:** [T1040 - Network Sniffing](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA15%20-%20Sniffing%20de%20rede.md)
  - **Motivo:** Detectar e responder a atividades de sniffing de rede para coletar informações sensíveis.

- **Monitoramento de Utilização de Credenciais**
  - **TTP:** [T1078 - Valid Accounts](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA16%20-%20Contas%20Validas.md)
  - **Motivo:** Detectar e mitigar o uso não autorizado de contas válidas.

- **Resposta a Ataques de Ransomware**
  - **TTP:** [T1486 - Data Encrypted for Impact](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA17%20-%20Dados%20criptografados%20para%20impacto.md)
  - **Motivo:** Gerenciar e mitigar ataques de ransomware que criptografam dados críticos.

- **Análise de Atividades de Natação de Rede**
  - **TTP:** [T1030 - Data Transfer Size Limits](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA18%20-%20Limites%20de%20tamanho%20de%20transferencia%20de%20dados.md)
  - **Motivo:** Monitorar a transferência de dados para detectar tentativas de exfiltração.

- **Gerenciamento de Uso de Ferramentas de Pentest**
  - **TTP:** [T1203 - Exploitation for Client Execution](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA19%20-%20Exploracao%20para%20execucao%20do%20cliente.md)
  - **Motivo:** Monitorar e gerenciar o uso de ferramentas de teste de penetração.

- **Controle de Acesso a Dados Sensíveis**
  - **TTP:** [T1070.003 - Indicator Removal on Host: Clear Linux or Mac System Logs](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA20%20-%20Remocao%20do%20indicador%20no%20host%20-%20limpar%20logs%20do%20sistema%20Linux%20ou%20Mac.md)
  - **Motivo:** Prevenir e responder a tentativas de remoção de indicadores em sistemas Linux ou Mac.

- **Análise de Implementações de Malware**
  - **TTP:** [T1047 - Windows Management Instrumentation](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA21%20-%20Instrumentacao%20de%20gerenciamento%20do%20Windows.md)
  - **Motivo:** Detectar e responder ao uso de WMI para operações de malware.

- **Resposta a Violação de Dados**
  - **TTP:** [T1071.001 - Application Layer Protocol: Application Layer Protocols](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA22%20-%20Protocolo%20da%20camada%20de%20aplica%C3%A7%C3%A3o.md)
  - **Motivo:** Gerenciar e responder a incidentes de violação de dados.

- **Monitoramento de Sessões Remotas**
  - **TTP:** [T1021.001 - Remote Services: Remote Desktop Protocol](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA23%20-%20Servicos%20remotos%20-%20Protocolo%20de%20area%20de%20trabalho%20remota.md)
  - **Motivo:** Monitorar e controlar sessões remotas para prevenir acessos não autorizados.

- **Análise de Técnicas de Persistência**
  - **TTP:** [T1053.001 - Scheduled Task/Job: Windows Task Scheduler](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA24%20-%20Tarefa_trabalho%20agendado%20-%20Agendador%20de%20tarefas%20do%20Windows.md)
  - **Motivo:** Detectar e responder a tentativas de persistência através de tarefas agendadas.

- **Gerenciamento de Ataques de Credenciais**
  - **TTP:** [T1555 - Credentials from Password Stores](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA25%20-%20Credenciais%20de%20lojas%20de%20senhas.md)
  - **Motivo:** Monitorar e mitigar ataques visando armazenamentos de credenciais.

- **Controle de Configuração de Sistemas**
  - **TTP:** [T1218.001 - System Binary Proxy Execution: Regsvr32](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA26%20-%20Execucao%20de%20proxy%20binario%20do%20sistema%20-%20Regsvr32.md)
  - **Motivo:** Monitorar e controlar a execução de binários de sistema para prevenir abusos.

- **Resposta a Ataques de Escalamento**
  - **TTP:** [T1075 - Pass the Ticket](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA27%20-%20Passe%20o%20Bilhete.md)
  - **Motivo:** Gerenciar e mitigar ataques de escalamento que utilizam tickets de autenticação.

- **Análise de Recompensas de Malware**
  - **TTP:** [T1049 - System Network Connections Discovery](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA28%20-%20Descoberta%20de%20conexoes%20de%20rede%20do%20sistema.md)
  - **Motivo:** Detectar e responder a malware que realiza descobertas de conexões de rede.

- **Gerenciamento de Abuso de Scripts**
  - **TTP:** [T1059.001 - Command-Line Interface: Windows Command Shell](https://github.com/4N4L1St4/4N4L1St4/blob/main/War%20Room/CASOS/DIA29%20-%20Interface%20de%20linha%20de%20comando%20-%20Shell%20de%20comando%20do%20Windows.md)
  - **Motivo:** Monitorar e controlar o uso de interfaces de linha de comando para prevenir abusos.

- **Controle de Segurança de Dados em Nuvem**
  - **TTP:** [T1531 - Account Access Removal](https://attack.mitre.org/techniques/T1531)
  - **Motivo:** Monitorar e gerenciar o acesso a dados em ambientes de nuvem para prevenir exfiltração e abuso.
