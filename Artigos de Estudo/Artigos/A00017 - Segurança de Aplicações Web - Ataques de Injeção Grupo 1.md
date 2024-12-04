<p align="center">
  <a href="https://example.com/imagem-seguranca-web">
    <img src="./images/guia.png" alt="Segurança de Aplicações Web" width="160" height="160">
  </a>
  <h1 align="center">Segurança de Aplicações Web: Ataques de Injeção | Grupo 1</h1>
</p>

## :dart: Artigo "Segurança de Aplicações Web: Ataques de Injeção | Grupo 1"

Os ataques de injeção são uma classe comum de ataques de segurança que visam explorar vulnerabilidades em sistemas que interagem com entrada de dados não confiáveis. Esses ataques ocorrem quando um invasor insere dados maliciosos em uma aplicação ou sistema com o objetivo de manipular o comportamento do sistema, obter informações sensíveis ou executar ações não autorizadas.

## :dart: Injeção de SQL

**O que é?**  
A injeção de SQL é um tipo de ataque comumente utilizado em aplicações web que interagem com bancos de dados SQL. Esse ataque ocorre quando um invasor consegue inserir comandos SQL maliciosos em campos de entrada de dados, explorando uma falha de segurança na aplicação.

**Funcionamento:**  
- **Inserção Maliciosa:** A injeção de SQL ocorre quando um invasor insere instruções SQL não autorizadas em campos de entrada, como formulários web, parâmetros de URL ou até mesmo cookies. Essas instruções são interpretadas pelo banco de dados como parte da consulta legítima, permitindo que o invasor execute comandos indesejados.
- **Objetivo:** O objetivo principal da injeção de SQL é obter acesso não autorizado ao banco de dados ou manipular suas informações. Isso pode incluir a extração de dados confidenciais, a modificação ou exclusão de registros, a execução de comandos do sistema operacional ou até mesmo o controle total do servidor.

**Prevenção:**
- **Prepared Statements:** Utilizar consultas parametrizadas para separar os dados da lógica SQL.
- **Validação e Sanitização:** Validar e sanitizar todas as entradas de dados, garantindo que apenas valores esperados sejam aceitos.
- **Privilégios Limitados:** Limitar os privilégios de acesso ao banco de dados para minimizar o impacto de um eventual ataque.
- **Atualizações:** Manter o software atualizado, incluindo o sistema operacional, o servidor web e o banco de dados, para corrigir vulnerabilidades conhecidas.
- **Monitoramento:** Implementar mecanismos de detecção e monitoramento para identificar possíveis ataques de injeção de SQL.

**Notícias sobre Injeção de SQL**  
A empresa de monitoramento de páginas web Sucuri revelou nesta terça-feira (17) a existência de uma nova onda de ataques a sites na internet que já infectou 190 mil páginas, de acordo com resultados de uma busca no Google. Os invasores estão incluindo um código que redireciona os visitantes para uma oferta de um antivírus fraudulento, que vai detectar pragas que não existem ou infectar o sistema para depois oferecer a "solução".  
Em março, um ataque semelhante infectou 200 mil páginas de blogs com o software WordPress. Desta vez, segundo a Sucuri, os sites afetados têm em comum o uso da tecnologia ASP ou ASP.net, usada para criar páginas dinâmicas em ambientes com servidores Windows.  
A empresa acredita que os atacantes estão usando erros nos sistemas dos sites para realizar um ataque de SQL Injection (injeção de SQL), que envolve o envio de comandos diretos ao banco de dados para ler ou alterar dados, o que permite, por exemplo, a inclusão do código malicioso.  
O site que está hospedando o ataque foi registrado no dia 1º de abril e páginas infectadas começaram a aparecer no dia 4 do mesmo mês.  
[Leia mais](https://g1.globo.com/tecnologia/noticia/2012/04/nova-onda-de-ataques-sites-infecta-190-mil-paginas-web.html)

## :dart: Directory Traversal Injection

**O que é?**  
Directory Traversal Injection, também conhecido como Path Traversal, é um tipo de ataque que explora uma vulnerabilidade em sistemas que não realizam uma devida validação de entradas de usuário ao acessar arquivos ou diretórios no servidor. Nesse tipo de ataque, um invasor pode manipular as entradas de forma a acessar diretórios e arquivos além daqueles que deveriam ser permitidos, incluindo arquivos sensíveis ou críticos do sistema.

**Funcionamento:**  
O ataque ocorre quando um aplicativo web permite que os usuários especifiquem caminhos de arquivos ou diretórios, mas não verifica ou filtra adequadamente essas entradas. O invasor pode inserir caracteres especiais, como "../" ou ".." para navegar acima do diretório atual e acessar diretórios fora do escopo permitido.

**Consequências:**  
- Acesso a arquivos confidenciais, como arquivos de configuração, credenciais de usuário, arquivos de log.
- Vazamento de informações sensíveis, comprometimento do sistema, execução de comandos maliciosos ou controle total do servidor.

**Prevenção:**
- **Validação e Filtragem:** Validar e filtrar todas as entradas de usuário que envolvem caminhos de arquivos ou diretórios.
- **Restrições de Acesso:** Restringir o acesso a diretórios sensíveis ou críticos por meio de permissões adequadas.
- **Listas Brancas:** Utilizar listas brancas (whitelists) em vez de listas negras (blacklists) ao permitir ou restringir caminhos de arquivos ou diretórios.
- **Práticas de Codificação Seguras:** Utilizar funções e bibliotecas seguras para manipulação de caminhos de arquivos.

## :dart: XML Injection

**O que é?**  
XML Injection é uma vulnerabilidade de segurança que ocorre quando entradas não confiáveis são inseridas em documentos XML de forma inadequada. Essa vulnerabilidade permite que um invasor injete código malicioso em um documento XML legítimo, o que pode levar a várias consequências negativas.

**Funcionamento:**  
Os invasores podem explorar a XML Injection de várias maneiras, como inserir tags XML maliciosas, modificar os dados dentro do documento XML ou até mesmo executar código arbitrário.

**Consequências:**  
- Vazamento de informações confidenciais.
- Interrupção do serviço.
- Execução de comandos maliciosos no servidor e comprometimento do sistema.

**Prevenção:**
- **Validação e Filtragem:** Validar e filtrar todas as entradas de usuário que são incorporadas em documentos XML.
- **Bibliotecas Seguras:** Utilizar bibliotecas ou frameworks seguros para manipulação de XML.
- **Codificação Apropriada:** Utilizar a técnica de "escape" ou codificação apropriada para caracteres especiais e metacaracteres em XML.
- **Permissões Restritas:** Limitar as permissões de acesso aos documentos XML.

## :dart: DLL Injection

**O que é?**  
DLL Injection, também conhecida como DLL hijacking ou DLL side-loading, é uma técnica de ataque na qual um invasor consegue injetar um arquivo DLL (Dynamic Link Library) malicioso em um processo legítimo em execução. Essa técnica explora o mecanismo de carregamento dinâmico de bibliotecas compartilhadas no sistema operacional.

**Funcionamento:**  
As bibliotecas DLL são arquivos que contêm código executável e dados compartilhados por várias aplicações. Elas são carregadas dinamicamente pelos programas em tempo de execução para fornecer funcionalidades específicas. Quando um programa não realiza uma verificação adequada ao carregar bibliotecas DLL, abre-se uma brecha para a DLL Injection.

**Consequências:**  
- **Substituição:** Substituição de uma DLL legítima por uma DLL maliciosa com o mesmo nome.
- **Inserção:** Inserção de uma nova DLL em um diretório de pesquisa utilizado pelo programa alvo.
- **Ações Indesejadas:** Captura de informações, modificação do comportamento do programa ou acesso não autorizado.

**Prevenção:**
- **Verificação de DLLs:** Realizar a verificação adequada de bibliotecas DLL, incluindo a utilização de caminhos de pesquisa confiáveis e assinaturas digitais.
- **Proteção de Integridade:** Utilizar mecanismos de proteção de integridade e assinatura de código.
- **Controle de Acesso:** Implementar mecanismos de controle de acesso para restringir o carregamento de DLLs a partir de diretórios confiáveis.
- **Atualizações:** Manter o sistema operacional e os programas atualizados.
- **Práticas de Codificação:** Verificar e validar todas as entradas do usuário, evitar a concatenação direta de caminhos de DLLs e utilizar APIs seguras para carregar bibliotecas DLL.

**Notícias sobre DLL Injection**  
"A empresa israelense disse que explorou dois métodos diferentes - auto-injeção e injeção remota de processos - para obter a injeção de código de uma maneira que não apenas melhore a eficiência do ataque, mas também contorna a detecção."  
"Na primeira abordagem, um aplicativo personalizado é utilizado para carregar diretamente a DLL vulnerável em seu espaço de endereço e, finalmente, executar o código desejado usando a seção RWX. A injeção remota do processo, por outro lado, implica o uso da seção RWX na DLL vulnerável para executar a injeção do processo em um processo remoto, como o ssh.exe."  
"A singularidade dessa técnica reside no fato de que não há necessidade de alocar memória, defina permissões ou crie um novo encadeamento dentro do processo de destino para iniciar a execução do nosso código injetado ", disseram os pesquisadores."  
"Essa diferenciação diferencia essa estratégia de outras técnicas existentes e a torna
