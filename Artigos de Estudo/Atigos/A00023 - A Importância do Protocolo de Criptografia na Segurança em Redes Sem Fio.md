<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/seguranca_wifi.png" alt="A Importância do Protocolo de Criptografia na Segurança em Redes Sem Fio" width="160" height="160">
  </a>
  <h1 align="center">A Importância do Protocolo de Criptografia na Segurança em Redes Sem Fio</h1>
</p>

## :dart: Introdução

A segurança da rede Wi-Fi desempenha um papel fundamental na proteção dos dados pessoais, prevenção de acesso não autorizado, uso adequado da largura de banda, proteção de dispositivos conectados e garantia da privacidade dos usuários. Aqui estão alguns pontos chave sobre a importância da segurança em redes Wi-Fi:

- **Proteção de Dados Pessoais:** Uma rede Wi-Fi segura estabelece uma barreira de proteção para dados pessoais transmitidos, como senhas, detalhes bancários e informações pessoais, evitando a interceptação por indivíduos mal-intencionados.
- **Prevenção de Acesso Não Autorizado:** Redes Wi-Fi seguras impedem o acesso não autorizado, evitando ataques cibernéticos e a realização de atividades criminosas que comprometam a integridade e a segurança das informações.
- **Uso Adequado da Largura de Banda:** A segurança da rede Wi-Fi evita o uso indevido da largura de banda por usuários não autorizados, garantindo uma conexão estável e de qualidade para os usuários legítimos.
- **Proteção de Dispositivos Conectados:** Impede que invasores acessem dispositivos conectados, protegendo-os contra malware, controle remoto não autorizado e coleta de dados sensíveis.
- **Garantia da Privacidade dos Usuários:** A segurança da rede Wi-Fi assegura que as atividades online dos usuários não sejam monitoradas ou interceptadas, especialmente durante transações financeiras e envio de informações confidenciais.

## :dart: Protocolo de Criptografia

### CCMP (Counter Mode with Cipher Block Chaining - Message Authentication Code Protocol)

O CCMP é um protocolo de segurança utilizado em redes Wi-Fi, especialmente no padrão WPA2 (Wi-Fi Protected Access 2). Ele combina o algoritmo de criptografia Counter Mode (CTR) e o protocolo Cipher Block Chaining Message Authentication Code (CBC-MAC). As principais características do CCMP são:

- **Confidencialidade dos Dados:** Utiliza o Advanced Encryption Standard (AES) no modo Counter para criptografar os dados transmitidos, garantindo que apenas destinatários autorizados possam acessar as informações.
- **Integridade dos Dados:** Emprega o CBC-MAC para verificar a integridade dos dados transmitidos, detectando alterações ou adulterações.
- **Proteção Contra Ataques de Replay:** Inclui números de pacotes exclusivos para evitar a repetição e interceptação de pacotes.
- **Gerenciamento de Chaves:** Implementa um mecanismo seguro para gerar e distribuir chaves de criptografia, assegurando que apenas dispositivos autorizados possam acessar a rede.

### Vulnerabilidades e Mitigações

- **Captura de Handshake:** O WPA2 pode ser vulnerável a ataques de captura de handshake, onde um atacante intercepta o processo de autenticação para obter a chave de criptografia. É crucial usar senhas fortes e manter o firmware atualizado para mitigar esses ataques.
- **Vulnerabilidade Dragonblood:** O protocolo Dragonfly, utilizado em redes mesh, possui uma vulnerabilidade conhecida como Dragonblood, que pode permitir ataques de desautenticação e força bruta. Manter os dispositivos atualizados e seguir boas práticas de segurança ajuda a reduzir os riscos associados.

## :dart: WPA3 (Wi-Fi Protected Access 3)

O WPA3 é a próxima geração do protocolo de segurança para redes Wi-Fi, oferecendo melhorias significativas sobre o WPA2, incluindo:

- **SAE (Simultaneous Authentication of Equals):** Introduz um novo método de autenticação que dificulta ataques de força bruta.
- **Criptografia Aprimorada:** Utiliza chaves de 192 bits e o protocolo Galois Counter Mode (GCM) para garantir maior resistência contra ataques.
- **Algoritmos de Chave Pública:** Adota chaves de 384 bits para maior segurança na autenticação.
- **Autenticação BIP-GMAC-256:** Garante a integridade e autenticidade dos pacotes de transmissão em redes Wi-Fi.

O WPA3 melhora a segurança das redes Wi-Fi, protegendo a privacidade dos dados, dificultando ataques e fortalecendo a autenticidade e integridade dos dispositivos e pacotes transmitidos.

