<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Segurança de Aplicações Web: Ataques de Esgotamento de Recursos | Grupo 4" width="160" height="160">
  </a>
  <h1 align="center">Segurança de Aplicações Web: Ataques de Esgotamento de Recursos | Grupo 4</h1>
</p>

## :dart: Artigo "Segurança de Aplicações Web: Ataques de Esgotamento de Recursos | Grupo 4"

Os ataques de esgotamento de recursos, também conhecidos como ataques de DoS (Denial of Service) ou DDoS (Distributed Denial of Service), são técnicas usadas por invasores para sobrecarregar recursos de um sistema, serviço ou rede, tornando-os inacessíveis para usuários legítimos. Esses ataques têm o objetivo de interromper ou prejudicar o funcionamento normal do sistema-alvo. Para se proteger contra ataques de esgotamento de recursos, algumas medidas preventivas incluem:

- Implementar sistemas de detecção e prevenção de intrusões (IDS/IPS) para identificar e bloquear tráfego malicioso.
- Utilizar sistemas de balanceamento de carga e distribuição de tráfego para lidar com picos de demanda e mitigar os efeitos de ataques de esgotamento de recursos.
- Configurar limites de taxa (rate limiting) para limitar o número de solicitações permitidas por usuário ou endereço IP.
- Implementar mecanismos de autenticação robustos para evitar ataques de esgotamento de recursos de autenticação.
- Monitorar constantemente os recursos do sistema, como CPU, memória e largura de banda, para identificar e responder rapidamente a picos anormais de atividade.
- Realizar testes de estresse e avaliações de segurança regulares para identificar e corrigir vulnerabilidades antes que sejam exploradas em ataques reais.

## :dart: Resource Exhaustion

**Funcionamento do Ataque:**
O Resource Exhaustion, ou esgotamento de recursos, é um tipo de ataque em que um invasor tenta consumir ou esgotar os recursos de um sistema ou aplicativo, levando à indisponibilidade ou degradação do desempenho. Esse tipo de ataque visa sobrecarregar recursos como CPU, memória, largura de banda, conexões de rede, entre outros, impedindo que usuários legítimos tenham acesso adequado aos serviços.

**Exemplos de Ataques:**
- **Ataques de Esgotamento de CPU:** O invasor executa tarefas que exigem alto poder de processamento para consumir toda a capacidade da CPU do sistema, tornando-o lento ou inoperante.
- **Ataques de Esgotamento de Memória:** O invasor aloca uma quantidade excessiva de memória no sistema, levando-o a esgotar sua capacidade e causar travamentos ou falhas no sistema.
- **Ataques de Esgotamento de Largura de Banda:** O invasor envia uma quantidade massiva de dados para o sistema, ocupando toda a largura de banda disponível e impedindo que outros usuários legítimos acessem os serviços.
- **Ataques de Esgotamento de Conexões:** O invasor cria um grande número de conexões simultâneas com o sistema, esgotando os recursos de gerenciamento de conexões e impedindo que usuários legítimos estabeleçam conexões válidas.
- **Ataques de Esgotamento de Armazenamento:** O invasor preenche o armazenamento do sistema com dados desnecessários ou com tamanho exagerado, ocupando todo o espaço disponível e impedindo a gravação ou o acesso a dados legítimos.

**Impactos Potenciais:**
Esses ataques podem ter impactos significativos nos sistemas e serviços, levando à interrupção dos serviços, indisponibilidade para usuários legítimos, degradação do desempenho e prejuízos financeiros para as organizações afetadas.

## :dart: SSL Strip

**Funcionamento do Ataque:**
SSL Strip é um tipo de ataque cibernético que visa comprometer a segurança das comunicações protegidas por SSL/TLS (Secure Sockets Layer/Transport Layer Security). O objetivo do ataque é interceptar o tráfego entre um cliente e um servidor, desabilitando ou removendo a camada de criptografia SSL/TLS, tornando as informações transmitidas vulneráveis a interceptação e leitura por terceiros.

Normalmente, quando um cliente estabelece uma conexão com um servidor protegido por SSL/TLS, ocorre uma negociação de segurança em que ambas as partes concordam com um conjunto de algoritmos criptográficos e estabelecem uma conexão segura. Essa conexão segura garante que as informações transmitidas entre o cliente e o servidor sejam criptografadas e protegidas contra interceptação.

No entanto, o ataque SSL Strip explora a vulnerabilidade de que, em certas circunstâncias, um invasor pode se posicionar entre o cliente e o servidor, interceptar o tráfego e forçar a comunicação a ser realizada sem o uso do SSL/TLS. Isso é possível quando o invasor consegue manipular o tráfego de redirecionamento (por exemplo, através de um ataque de envenenamento de cache DNS ou ataques de phishing).

**Medidas Preventivas:**
- **Utilizar o Protocolo HTTPS:** Sempre que possível, use o protocolo HTTPS para se comunicar com os sites e serviços online. O HTTPS garante uma conexão segura usando SSL/TLS, criptografando os dados transmitidos entre o cliente e o servidor.
- **Verificar o Certificado SSL:** Ao acessar um site, verifique se o certificado SSL é válido e confiável. Certifique-se de que o URL comece com "https://" e de que não existem alertas ou erros de certificado durante a conexão.
- **Educação e Conscientização:** Esteja atento a técnicas de phishing e ataques de redirecionamento que possam ser usados para realizar um ataque SSL Strip. Seja cauteloso ao clicar em links suspeitos e esteja atento a sinais de alerta, como alterações no URL ou avisos de segurança do navegador.
- **HSTS (HTTP Strict Transport Security):** Os sites podem implementar o HSTS para forçar a conexão segura através do HTTPS, impedindo que os navegadores acessem o site através de uma conexão não criptografada.

## :dart: DOS (Denial of Service) e DDoS (Distributed Denial of Service)

**Ataque de Negação de Serviço (DOS):**
Um ataque de Negação de Serviço (DOS) ocorre quando um único dispositivo ou uma rede de dispositivos maliciosos é usado para inundar um serviço ou sistema com tráfego ou solicitações de forma que ele se torne incapaz de responder às solicitações legítimas. Isso resulta na indisponibilidade do serviço para usuários legítimos.

**Tipos de Ataques DOS:**
- **Inundação de Solicitações:** Enviar um grande volume de solicitações para um serviço específico, sobrecarregando sua capacidade de processamento.
- **Exploração de Vulnerabilidades:** Explorar vulnerabilidades em um serviço para esgotar seus recursos, como CPU, memória ou largura de banda.
- **Congestionamento de Rede:** Inundar um serviço com tráfego de rede malicioso ou inválido, congestionando a infraestrutura de rede.

**Ataque Distribuído de Negação de Serviço (DDoS):**
Um ataque Distribuído de Negação de Serviço (DDoS) é uma variação do ataque DOS, em que múltiplos dispositivos comprometidos, também conhecidos como "botnets", são usados para realizar o ataque de forma coordenada e distribuída. Esses dispositivos são controlados remotamente por um invasor e podem estar localizados em diferentes partes do mundo.

**Tipos de Ataques DDoS:**
- **Ataque de Amplificação:** Usar servidores de terceiros para amplificar o tráfego malicioso.
- **Ataque de Exaustão de Largura de Banda:** Sobrecarregar a largura de banda do alvo com tráfego massivo.
- **Ataque de Exaustão de Recursos:** Esgotar os recursos do sistema alvo, como CPU e memória.
- **Ataque de Camada de Aplicativo:** Visar vulnerabilidades em aplicações web para sobrecarregar o servidor.

**Medidas Preventivas:**
- **Implementar Soluções de Mitigação de DDoS:** Use firewalls de aplicativos, balanceadores de carga e sistemas de detecção e prevenção de intrusões (IDS/IPS).
- **Configurar Limites de Taxa:** Limite o número de solicitações ou tráfego aceitos por um serviço.
- **Monitorar o Tráfego de Rede:** Utilize ferramentas de análise para identificar padrões de tráfego malicioso.
- **Usar Serviços de Proteção contra DDoS:** Conte com provedores de nuvem ou empresas especializadas em segurança cibernética.
- **Manter Sistemas Atualizados:** Atualize todos os sistemas e dispositivos com as últimas correções de segurança e patches.

A mitigação efetiva de ataques DOS e DDoS envolve uma combinação de tecnologias de segurança, monitoramento constante e planejamento de resposta a incidentes para garantir a disponibilidade dos serviços e proteger as infraestruturas contra esses tipos de ataques.
