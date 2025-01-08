<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Guia de Casos de Uso SIEM" width="160" height="160">
  </a>
  <h1 align="center">🔎 Casos de Uso SIEM</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este guia explora os principais casos de uso de um SIEM (Security Information and Event Management), destacando como essa ferramenta essencial pode ser utilizada para identificar, investigar e mitigar ameaças de segurança dentro de uma organização. Com exemplos práticos e cenários comuns, você entenderá melhor o valor do SIEM na proteção da infraestrutura de TI.

## :dart: Conteúdo

### 1. Detecção de Ameaças Internas

#### Descrição:
O SIEM pode monitorar e correlacionar eventos em tempo real para detectar atividades anômalas vindas de dentro da organização, como acessos não autorizados, uso indevido de dados sensíveis, e comportamentos fora do padrão de usuários internos.

#### Planilha de Exemplo de Detecção de Ameaças Internas

| Nome da Regra | Categoria da Regra | Descrição da Regra | Tipo de Evento | Condição de Filtro |
|---------------|--------------------|--------------------|----------------|--------------------|
| Baseline De Processos WAF | Disponibilidade | Detecta o Processo de Aumento de Requisição Para uma Aplicação |  |  |
| Carbon Black Fatal Errors | Security | Detects fatal Carbon Black errors | Carbon Black Fatal Errors | eventType IN (Group@PH_SYS_EVENT_Fatal) AND eventType CONTAIN ""CarbonBlack-"" |
| Cisco AVC: Application Flows with QoS Queue Packet Drops | Performance | Detecta quedas de pacotes de fila de QoS conforme relatado pelo Cisco 
| Windows: Non-privileged Usage of Reg or Powershell | Security | Search for usage of reg or Powershell by non-privileged users to modify service configuration in registry. This rule is adapted from https://github.com/SigmaHQ/sigma/blob/master/rules/windows/process_creation/proc_creation_win_susp_non_priv_reg_or_ps.yml | Windows: Non-privileged Usage of Reg or Powershell | eventType=""Win-Sysmon-1-Create-Process"" AND ((command REGEXP "".*reg .*"" AND command REGEXP "".*add.*"") OR command REGEXP "".* sp .*|.*new-itemproperty.*|.*powershell.*|.*set-itemproperty.*"") AND (integrityLevel=""Medium"" AND command REGEXP "".*ControlSet.*"" AND command REGEXP "".*Services.*"" AND command REGEXP "".*FailureCommand.*|.*ImagePath.*|.*ServiceDLL.*"") |


### Conclusão

Os casos de uso do SIEM são fundamentais para qualquer estratégia de segurança cibernética. Com a capacidade de detectar, investigar e responder a ameaças em tempo real, o SIEM torna-se uma peça central na defesa proativa da organização, garantindo a integridade, confidencialidade e disponibilidade dos dados.
