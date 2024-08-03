<p align="center">
  <a href="https://www.example.com/images/prtg.png">
    <img src="./images/guia.png" alt="Guia sobre PRTG e Configurações Relacionadas" width="160" height="160">
  </a>
  <h1 align="center">Guia Completo sobre PRTG e Configurações Relacionadas</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este guia oferece uma visão abrangente sobre a utilização do PRTG como ferramenta de monitoramento de rede, detalhando desde a solicitação de dispositivos até a criação de relatórios de disponibilidade e desempenho. Ao configurar corretamente o PRTG e utilizar relatórios informativos, você pode assegurar a eficiência e a saúde da sua infraestrutura de TI.

## :dart: Conteúdo

### 🔧 PRTG
O **PRTG** é uma solução de monitoramento poderosa e fácil de usar que permite supervisionar todos os aspectos da sua infraestrutura de TI, desde redes até servidores e aplicações. Ele oferece uma interface intuitiva para configurar sensores, visualizar dados e receber alertas em tempo real.

### 🔄 Solicitar Dispositivos para Monitoramento
Para monitorar dispositivos na sua rede utilizando o PRTG, é importante seguir um processo organizado de solicitação e inclusão de novos dispositivos:

1. **Identificação do Dispositivo**
   - **Descrição**: Determine quais dispositivos precisam ser monitorados, como servidores, switches, roteadores, ou aplicações.
   - **Ação**: Documente o nome do dispositivo, endereço IP, e as métricas que precisam ser monitoradas.

2. **Solicitação Formal**
   - **Descrição**: Envie uma solicitação formal ao administrador do PRTG para a inclusão do dispositivo.
   - **Ação**: Inclua na solicitação todas as informações relevantes, incluindo credenciais SNMP ou WMI, se necessário.

3. **Configuração e Teste**
   - **Descrição**: Após a adição do dispositivo, configure os sensores de monitoramento e teste a conectividade e a coleta de dados.
   - **Ação**: Verifique se o dispositivo está enviando dados corretamente para o PRTG e ajuste as configurações conforme necessário.

### 📄 Documento para Configuração de Encaminhamento de SNMP
O **SNMP (Simple Network Management Protocol)** é essencial para o monitoramento de muitos dispositivos de rede. Uma configuração adequada do encaminhamento SNMP garante que o PRTG receba todos os dados necessários.

1. **Configuração SNMP no Dispositivo**
   - **Descrição**: Configure o dispositivo para enviar dados SNMP para o servidor PRTG.
   - **Ação**: Acesse o dispositivo via CLI ou GUI, habilite o SNMP, e configure o endereço IP do servidor PRTG como destinatário.

2. **Documento de Configuração**
   - **Descrição**: Crie um documento que detalhe o processo de configuração SNMP para diferentes tipos de dispositivos.
   - **Ação**: Inclua comandos específicos e exemplos de configuração para switches, roteadores, e servidores.

3. **Verificação de Conectividade**
   - **Descrição**: Após a configuração, teste a conectividade SNMP e verifique se o PRTG está recebendo os dados corretamente.
   - **Ação**: Use ferramentas como `snmpwalk` para garantir que os dados estão fluindo para o servidor PRTG.

### 📑 Modelos de Relatório
O PRTG permite a criação de relatórios detalhados que são essenciais para analisar a disponibilidade e o desempenho da infraestrutura monitorada:

1. **Modelo de Relatório de Disponibilidade**
   - **Descrição**: Um relatório que apresenta a porcentagem de tempo em que os dispositivos estiveram disponíveis durante um determinado período.
   - **Ação**: Configure o relatório no PRTG para incluir todas as métricas de disponibilidade relevantes e programe a geração automática.

2. **Modelo de Relatório de Desempenho**
   - **Descrição**: Um relatório focado no desempenho dos dispositivos, incluindo métricas como uso de CPU, memória, e tráfego de rede.
   - **Ação**: Defina os parâmetros de desempenho no PRTG e configure os gráficos e tabelas para facilitar a análise.

### 📉 Relatório de Disponibilidade
O **Relatório de Disponibilidade** é essencial para entender o uptime dos dispositivos críticos da sua infraestrutura:

1. **Coleta de Dados**
   - **Descrição**: O PRTG coleta dados de disponibilidade em tempo real e os armazena para análise posterior.
   - **Ação**: Verifique se todos os dispositivos críticos estão incluídos na coleta de dados de disponibilidade.

2. **Configuração de Relatório**
   - **Descrição**: Configure o PRTG para gerar relatórios periódicos de disponibilidade, com gráficos e tabelas para facilitar a visualização.
   - **Ação**: Personalize o relatório para incluir diferentes intervalos de tempo e agrupamentos de dispositivos.

3. **Análise e Interpretação**
   - **Descrição**: Use o relatório para identificar padrões de indisponibilidade e tomar ações corretivas.
   - **Ação**: Gere relatórios mensais, trimestrais ou anuais para acompanhar a evolução da disponibilidade ao longo do tempo.

### 📈 Relatório de Desempenho
O **Relatório de Desempenho** oferece insights detalhados sobre a utilização dos recursos dos dispositivos monitorados:

1. **Definição de Métricas**
   - **Descrição**: Defina as métricas de desempenho que são mais importantes para sua organização, como uso de CPU, memória, e latência de rede.
   - **Ação**: Configure o PRTG para monitorar essas métricas e armazenar os dados em intervalos regulares.

2. **Configuração de Relatórios**
   - **Descrição**: Crie relatórios que apresentem gráficos de desempenho, mostrando a evolução das métricas ao longo do tempo.
   - **Ação**: Ajuste os parâmetros do relatório para destacar picos de uso e possíveis gargalos de desempenho.

3. **Tomada de Decisões Baseada em Dados**
   - **Descrição**: Use os relatórios de desempenho para identificar áreas que precisam de otimização ou upgrades.
   - **Ação**: Acompanhe regularmente esses relatórios para tomar decisões informadas sobre a infraestrutura.

---

Este guia oferece uma estrutura completa para trabalhar com o PRTG, desde a solicitação de dispositivos até a geração de relatórios detalhados. Se precisar de mais informações ou ajustes, estarei à disposição para ajudar!
