<p align="center">
  <a href="https://example.com/imagem-xss">
    <img src="./images/guia.png" alt="Segurança de Aplicações Web: Ataques de XSS" width="160" height="160">
  </a>
  <h1 align="center">Segurança de Aplicações Web: Ataques de Cross-Site Scripting (XSS) | Grupo 2</h1>
</p>

## :dart: Artigo "Segurança de Aplicações Web: Ataques de Cross-Site Scripting (XSS) | Grupo 2"

Os ataques de Cross-Site Scripting (XSS) são uma das vulnerabilidades mais comuns e perigosas encontradas em aplicativos da web. Eles permitem que um invasor injete código malicioso em páginas da web exibidas para outros usuários, comprometendo a segurança e a integridade dos dados.

Existem três principais tipos de ataques de XSS:

## :dart: XSS Persistente

**O que é?**  
O XSS persistente, também conhecido como Persistent XSS ou Stored XSS, é um tipo de ataque de Cross-Site Scripting que ocorre quando o código malicioso é injetado em um aplicativo da web e permanece armazenado em um local persistente, como um banco de dados, servidor ou sistema de arquivos. Diferente do XSS refletido, no qual o código é refletido temporariamente em uma única solicitação, o XSS persistente afeta todos os usuários que acessam a página ou recurso infectado.

**Funcionamento:**  
Os ataques de XSS persistente ocorrem quando um aplicativo da web não valida ou sanitiza adequadamente a entrada do usuário antes de armazená-la no sistema. Isso permite que um invasor injete código malicioso que será exibido para todos os usuários que acessarem a página infectada.

**Consequências:**  
- **Roubo de informações confidenciais:** O código malicioso pode ser usado para capturar informações sensíveis inseridas pelos usuários, como nomes de usuário, senhas, informações de cartão de crédito e outros dados confidenciais.
- **Sequestro de sessões:** Um ataque de XSS persistente pode permitir que o invasor sequestre a sessão de um usuário legítimo, obtendo acesso não autorizado à conta e executando ações em nome do usuário.
- **Distribuição de malware:** O código malicioso injetado pode redirecionar os usuários para sites que hospedam malware, resultando no download e infecção dos sistemas dos usuários.
- **Defacement (desfiguração) de sites:** Um ataque de XSS persistente pode permitir que um invasor modifique o conteúdo de um site, exibindo mensagens falsas, ofensivas ou prejudiciais.

**Prevenção:**
- **Validar e sanitizar:** Validar e sanitizar todas as entradas de usuário antes de armazená-las no sistema.
- **Escape de caracteres:** Utilizar mecanismos de escape de caracteres apropriados ao exibir dados inseridos pelos usuários.
- **Listas de permissões:** Implementar listas de permissões para permitir somente tags e atributos HTML seguros e bloquear qualquer outra entrada não confiável.
- **Parâmetros vinculados:** Utilizar parâmetros vinculados (bind parameters) ou consultas parametrizadas ao acessar o banco de dados para evitar a execução não intencional de código injetado.
- **Content Security Policy (CSP):** Implementar uma política de segurança de conteúdo (Content Security Policy - CSP) para restringir a origem de recursos e limitar a execução de scripts.

## :dart: XSS Não Persistente

**O que é?**  
O XSS não persistente, também conhecido como Non-Persistent XSS ou Reflected XSS, é um tipo de ataque de Cross-Site Scripting que ocorre quando o código malicioso é injetado em uma solicitação HTTP e é refletido de volta ao usuário em uma página da web específica. Diferente do XSS persistente, no qual o código malicioso é armazenado permanentemente no aplicativo, o XSS não persistente ocorre em tempo real, geralmente em resposta a uma ação do usuário.

**Funcionamento:**  
Os ataques de XSS não persistente são frequentemente realizados por meio de links maliciosos, formulários ou outros pontos de entrada em um aplicativo da web. O invasor manipula os dados enviados ao servidor, inserindo código malicioso que é então refletido na resposta HTTP enviada de volta ao navegador do usuário. O código injetado é executado no contexto do usuário, permitindo que o invasor execute ações maliciosas.

**Consequências:**  
- **Roubo de informações do usuário:** O código malicioso pode ser usado para capturar informações confidenciais inseridas pelo usuário, como nomes de usuário, senhas ou detalhes de cartão de crédito.
- **Redirecionamento para sites maliciosos:** O invasor pode redirecionar os usuários para sites fraudulentos ou maliciosos, que podem solicitar informações adicionais ou induzir o usuário a baixar malware.
- **Execução de ações não autorizadas:** O código malicioso pode executar ações em nome do usuário, como fazer alterações indesejadas nas configurações da conta ou enviar mensagens em seu nome.

**Prevenção:**
- **Validar e sanitizar:** Validar e sanitizar todas as entradas de usuário antes de incorporá-las nas respostas HTTP.
- **Escape de caracteres:** Utilizar mecanismos de escape de caracteres apropriados ao exibir dados inseridos pelos usuários.
- **Listas de permissões:** Implementar listas de permissões para permitir somente tags e atributos HTML seguros e bloquear qualquer outra entrada não confiável.
- **Parâmetros vinculados:** Utilizar parâmetros vinculados (bind parameters) ou consultas parametrizadas ao acessar o banco de dados para evitar a execução não intencional de código injetado.
- **Content Security Policy (CSP):** Implementar um mecanismo de Content Security Policy (CSP) para restringir a origem de recursos e limitar a execução de scripts.
- **Educação dos usuários:** Educar os usuários sobre os riscos de clicar em links não confiáveis ou fornecer informações confidenciais em sites não verificados.

## :dart: XSS Baseado em DOM

**O que é?**  
O XSS baseado em DOM (DOM-based XSS) é um tipo de ataque de Cross-Site Scripting que explora vulnerabilidades no Modelo de Objeto de Documento (DOM) do navegador. Diferente do XSS persistente e não persistente, que ocorrem no servidor ou no lado do cliente, o XSS baseado em DOM ocorre inteiramente no lado do cliente, sem a necessidade de comunicação com o servidor.

**Funcionamento:**  
Nesse tipo de ataque, o invasor manipula o código JavaScript que é executado no navegador do usuário, explorando a forma como o DOM é construído e modificado pela página. O código malicioso injetado pode ser ativado quando o navegador manipula o DOM, causando a execução não intencional de scripts maliciosos.

**Características:**  
- **Execução no lado do cliente:** O ataque ocorre exclusivamente no navegador do usuário, sem interação com o servidor. Isso significa que o código malicioso não é enviado para o servidor, tornando-o mais difícil de detectar em comparação com outros tipos de XSS.
- **Manipulação do DOM:** O invasor aproveita as manipulações e interações do DOM pela página para injetar e executar código malicioso. Isso pode ocorrer quando o código JavaScript presente na página modifica o DOM de forma insegura ou quando o invasor influencia a forma como o DOM é processado pelo navegador.
- **Impacto limitado:** O XSS baseado em DOM geralmente afeta apenas o usuário que acessa diretamente a página comprometida. A exploração desse tipo de vulnerabilidade não permite que o código malicioso seja propagado para outros usuários ou armazenado permanentemente no aplicativo.

**Prevenção:**
- **Validar e sanitizar:** Validar e sanitizar todas as entradas de usuário antes de incorporá-las no código JavaScript que manipula o DOM.
- **Funções e métodos seguros:** Utilizar funções e métodos seguros fornecidos pelo framework ou biblioteca JavaScript utilizada para manipulação do DOM.
- **Concatenação segura:** Evitar a concatenação direta de dados não confiáveis no código JavaScript. Em vez disso, utilize parâmetros vinculados ou construa o código dinamicamente com precauções de segurança.
- **Content Security Policy (CSP):** Implementar um mecanismo de Content Security Policy (CSP) para restringir a execução de scripts e limitar as origens de recursos.
- **Atualizações:** Manter o navegador e as bibliotecas JavaScript atualizadas com as versões mais recentes, que podem incluir correções de segurança.

Além disso, é importante realizar testes de segurança regulares para identificar e corrigir possíveis vulnerabilidades de XSS baseado em DOM. A conscientização e a educação dos desenvolvedores sobre as melhores práticas de segurança também são essenciais para mitigar os riscos associados a esse tipo de ataque.
