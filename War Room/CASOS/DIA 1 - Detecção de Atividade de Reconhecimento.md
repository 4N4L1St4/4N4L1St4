<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Detecção de Atividade de Reconhecimento" width="160" height="160">
  </a>
  <h1 align="center">Detecção de Atividade de Reconhecimento</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este artigo aborda a importância de detectar e responder a atividades de reconhecimento em uma rede corporativa. Vamos explorar como as tentativas de mapeamento de rede e descoberta de serviços podem ser identificadas e mitigadas, utilizando práticas recomendadas e ferramentas de segurança avançadas. Ao final, você terá uma visão clara sobre como proteger sua infraestrutura contra ameaças de reconhecimento, implementando uma estratégia de defesa robusta.

## :dart: Conteúdo

No ambiente de uma empresa de tecnologia, uma equipe de segurança altamente especializada lida com a complexa tarefa de proteger a rede contra atividades maliciosas. 

**Início da História:**

Tudo começa quando Ilana, responsável por campanhas de conscientização na empresa, identifica um aumento súbito em tentativas de mapeamento da rede. Preocupada, ela notifica Gustavo, o responsável pelas regras no firewall (Checkpoint). Gustavo verifica os logs e detecta anomalias que sugerem tentativas de reconhecimento por meio de protocolos da camada de aplicação, como HTTP e DNS.

**Impacto do Problema:**

Essas atividades não passam despercebidas por Pablo, o analista de malware, que começa a investigar se há algum malware implantado na rede, utilizando ferramentas como XDR (SentinelONE) e SIEM (QRadar) para correlacionar eventos e determinar a origem das tentativas de reconhecimento. Enquanto isso, Paulo, que gerencia as redes da empresa, ajusta as configurações de VLANs e VPNs para minimizar possíveis vetores de ataque.

**Resolução e Remediação:**

Em resposta ao incidente, a equipe decide reforçar a segurança implementando um WAF (Web Application Firewall) para monitorar e bloquear acessos suspeitos aos serviços web da empresa. Bruna, encarregada do pós-mortem, documenta todo o incidente, identificando a necessidade de aprimorar as regras de detecção e resposta automática no SIEM para futuras tentativas de reconhecimento. Ao final, a equipe revisa as políticas de segurança e Ilana prepara uma nova campanha de conscientização, enfatizando a importância de relatórios rápidos e precisos sobre atividades suspeitas.

Com a colaboração de toda a equipe, a empresa consegue mitigar o risco de exposição a ataques mais graves, demonstrando a eficácia de uma estratégia de segurança integrada que inclui firewalls, monitoramento contínuo, e conscientização de todos os colaboradores.

