<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Guia de Técnicas de Hunting" width="160" height="160">
  </a>
  <h1 align="center">🎯 Técnicas de Hunting</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este guia detalha as técnicas de Hunting utilizadas para identificar e mitigar ameaças cibernéticas de forma proativa. As técnicas de Hunting são essenciais para descobrir ameaças que podem escapar das ferramentas de segurança automatizadas e fornecer insights valiosos para fortalecer a segurança da rede.

## :dart: Conteúdo

### 1. O Que São Técnicas de Hunting?

#### Descrição:
Técnicas de Hunting são métodos e abordagens utilizados para investigar e identificar sinais de atividades maliciosas e ameaças em redes e sistemas. Ao invés de esperar por alertas de ferramentas automatizadas, o Hunting busca ativamente por padrões e indicadores de compromissos.

### 2. Técnicas Comuns de Hunting

#### Descrição:
Algumas técnicas comuns de Hunting incluem:

1. **Análise de Anomalias:** 
   - **Descrição:** Identificar comportamentos ou padrões fora do normal que possam indicar uma ameaça. Pode envolver a análise de métricas de rede, uso de recursos e atividades de usuários.
   - **Exemplo:** Monitorar atividades incomuns de login em horários não usuais ou volumes anômalos de tráfego.

2. **Pesquisa de Indicadores de Comprometimento (IoCs):**
   - **Descrição:** Procurar por sinais conhecidos de compromissos, como hashes de arquivos, endereços IP maliciosos e domínios suspeitos.
   - **Exemplo:** Usar listas de IoCs de fontes confiáveis para buscar correspondências em logs e dados de rede.

3. **Análise de Logs:**
   - **Descrição:** Revisar e analisar logs de eventos para identificar padrões ou comportamentos que possam indicar uma ameaça.
   - **Exemplo:** Analisar logs de firewall para detectar tentativas de conexão suspeitas ou anômalas.

4. **Caça Baseada em Hipóteses:**
   - **Descrição:** Formar e testar hipóteses sobre possíveis ameaças com base em conhecimento prévio e inteligência sobre ameaças.
   - **Exemplo:** Desenvolver uma hipótese sobre uma técnica de ataque conhecida e buscar evidências de que ela está sendo usada na rede.

5. **Análise de Comportamento:**
   - **Descrição:** Avaliar o comportamento de usuários e sistemas para identificar atividades que possam ser indicativas de compromissos.
   - **Exemplo:** Monitorar mudanças no comportamento de um usuário que normalmente não acessa arquivos sensíveis.

6. **Análise de Tráfego de Rede:**
   - **Descrição:** Examinar o tráfego de rede para identificar atividades incomuns ou sinais de comunicação com servidores de comando e controle.
   - **Exemplo:** Analisar pacotes de rede para detectar comunicação com endereços IP suspeitos.

7. **Reconhecimento de Táticas e Técnicas:**
   - **Descrição:** Usar frameworks como MITRE ATT&CK para mapear e identificar táticas e técnicas usadas por adversários.
   - **Exemplo:** Aplicar o MITRE ATT&CK para correlacionar comportamentos observados com técnicas conhecidas.

### 3. Ferramentas e Recursos para Hunting

#### Descrição:
Diversas ferramentas e recursos são úteis para realizar Hunting de forma eficaz:

- **Soluções de SIEM:** Plataformas que agregam e analisam dados de segurança.
- **Ferramentas de Análise de Logs:** Softwares para análise detalhada de logs.
- **Frameworks de Threat Intelligence:** Recursos que fornecem informações sobre táticas e técnicas de ataque.

#### Ferramentas Comuns:
- **Elastic Stack (ELK):** Ferramenta para coleta e análise de dados de logs.
- **Splunk:** Plataforma para análise de eventos e dados de segurança.
- **MITRE ATT&CK Framework:** Estrutura para mapear técnicas e táticas de ataques cibernéticos.

### 4. Desafios no Hunting

#### Descrição:
O Hunting pode enfrentar vários desafios, incluindo:

- **Volume de Dados:** Gerenciar e analisar grandes volumes de dados pode ser complexo.
- **Falsos Positivos:** Distinguir entre atividades legítimas e maliciosas pode ser desafiador.
- **Falta de Recursos:** A necessidade de habilidades e ferramentas especializadas pode ser um obstáculo.

### 5. Aspectos Legais e Éticos

#### Descrição:
Durante o Hunting, é crucial considerar aspectos legais e éticos, como:

- **Privacidade dos Dados:** Garantir que a busca por ameaças não viole a privacidade dos dados dos usuários.
- **Permissão e Autorização:** Obter permissão adequada para acessar e analisar dados sensíveis.

### Conclusão

As técnicas de Hunting são uma abordagem proativa essencial para identificar e mitigar ameaças cibernéticas antes que causem danos significativos. Utilizando técnicas avançadas e ferramentas especializadas, as organizações podem melhorar significativamente sua capacidade de detectar e responder a incidentes de segurança.
