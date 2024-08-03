<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Guia de Indicadores de Comprometimento (IOCs)" width="160" height="160">
  </a>
  <h1 align="center">🔍 Indicadores de Comprometimento (IOCs)</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este guia explora os Indicadores de Comprometimento (IOCs), que são evidências digitais utilizadas para identificar possíveis compromissos de segurança em sistemas e redes. Compreender e utilizar IOCs é fundamental para detectar, responder e mitigar ataques cibernéticos de forma eficaz.

## :dart: Conteúdo

### 1. O Que São Indicadores de Comprometimento (IOCs)?

#### Descrição:
Indicadores de Comprometimento (IOCs) são evidências digitais que podem ser usadas para identificar a presença de atividades maliciosas em um sistema ou rede. Eles incluem informações como hashes de arquivos, endereços IP, URLs e outros dados que podem indicar que um sistema foi comprometido.

### 2. Tipos Comuns de IOCs

#### Descrição:
Os IOCs podem variar em forma e tipo. Aqui estão alguns dos tipos mais comuns:

1. **Hashes de Arquivos:**
   - **Descrição:** Códigos gerados a partir do conteúdo de um arquivo, usados para verificar a integridade e identificar arquivos maliciosos.
   - **Exemplo:** MD5, SHA-1, SHA-256.

2. **Endereços IP:**
   - **Descrição:** Endereços numéricos que identificam dispositivos em uma rede. Endereços IP maliciosos podem ser usados para identificar atividades de comando e controle.
   - **Exemplo:** 192.168.1.1, 10.0.0.1.

3. **URLs e Domínios:**
   - **Descrição:** Endereços da web que podem estar associados a servidores de comando e controle ou sites maliciosos.
   - **Exemplo:** http://malicious-site.com, http://example.com/malware.

4. **Strings e Padrões em Arquivos:**
   - **Descrição:** Sequências de caracteres encontradas em arquivos que podem indicar a presença de malware.
   - **Exemplo:** Códigos ou comandos específicos em arquivos binários.

5. **Metadados de Arquivos:**
   - **Descrição:** Informações sobre arquivos, como data de criação, autor, e outros atributos que podem ajudar na identificação de compromissos.
   - **Exemplo:** Data de criação, nome do autor.

### 3. Como Coletar IOCs

#### Descrição:
A coleta de IOCs pode ser realizada através de várias técnicas e ferramentas:

- **Análise de Logs:** Revisão de logs de eventos para identificar sinais de comprometimento.
- **Monitoramento de Tráfego de Rede:** Inspeção do tráfego de rede para detectar comunicações com IPs ou domínios maliciosos.
- **Ferramentas de Segurança:** Uso de ferramentas como SIEM para detectar e correlacionar IOCs em tempo real.

### 4. Uso de IOCs na Detecção e Resposta

#### Descrição:
Os IOCs são utilizados em várias fases do ciclo de vida da segurança cibernética:

- **Detecção:** Identificar a presença de ameaças baseadas em IOCs coletados.
- **Resposta a Incidentes:** Usar IOCs para conter e mitigar os impactos de um ataque.
- **Análise Pós-Incidente:** Revisar IOCs para entender o ataque e melhorar as defesas futuras.

### 5. Ferramentas e Recursos para Trabalhar com IOCs

#### Descrição:
Existem várias ferramentas e recursos que ajudam na gestão e análise de IOCs:

- **MISP (Malware Information Sharing Platform):** Plataforma para compartilhamento e colaboração sobre IOCs.
- **OpenIOC:** Estrutura para representação e troca de IOCs.
- **STIX/TAXII:** Padrões para representação e compartilhamento de informações de ameaças.

#### Ferramentas Comuns:
- **VirusTotal:** Serviço para análise de arquivos e URLs para verificar a presença de malware.
- **Threat Intelligence Platforms:** Plataformas que fornecem dados sobre IOCs e ameaças conhecidas.

### 6. Desafios no Uso de IOCs

#### Descrição:
Alguns desafios ao usar IOCs incluem:

- **Falsos Positivos:** IOCs podem gerar alertas para atividades legítimas.
- **Evolução das Ameaças:** Atores maliciosos podem mudar suas técnicas para evitar detecção por IOCs.
- **Compartilhamento de Informações:** Garantir que as informações de IOCs sejam precisas e confiáveis.

### 7. Aspectos Legais e Éticos

#### Descrição:
Ao trabalhar com IOCs, é importante considerar:

- **Privacidade:** Garantir que a coleta e análise de IOCs não infrinjam a privacidade dos usuários.
- **Autorização:** Obter permissão adequada para coletar e analisar dados sensíveis.

### Conclusão

Os Indicadores de Comprometimento (IOCs) são essenciais para detectar, responder e mitigar ameaças cibernéticas. Compreender os diferentes tipos de IOCs, como coletá-los e como usá-los efetivamente é crucial para fortalecer a segurança de sistemas e redes. Utilizando ferramentas e práticas adequadas, as organizações podem melhorar sua capacidade de identificar e lidar com compromissos de segurança.
