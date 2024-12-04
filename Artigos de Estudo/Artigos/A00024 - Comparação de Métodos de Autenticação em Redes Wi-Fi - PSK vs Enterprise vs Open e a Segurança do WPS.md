<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/comparacao_metodos_autenticacao_wifi.png" alt="Comparação de Métodos de Autenticação em Redes Wi-Fi" width="160" height="160">
  </a>
  <h1 align="center">Comparação de Métodos de Autenticação em Redes Wi-Fi: PSK vs Enterprise vs Open e a Segurança do WPS</h1>
</p>

## :dart: Introdução

Os métodos de autenticação em redes sem fio desempenham um papel crucial na segurança e no controle de acesso. Aqui está uma visão geral dos principais métodos:

### WEP (Wired Equivalent Privacy)

O WEP foi o primeiro método de autenticação e criptografia para redes sem fio, mas é considerado inseguro e vulnerável a ataques. Recomenda-se não usar mais o WEP.

### WPA (Wi-Fi Protected Access)

O WPA é uma melhoria em relação ao WEP, utilizando chaves de criptografia dinâmicas e um algoritmo mais forte. Foi introduzido para substituir o WEP.

### WPA2 (Wi-Fi Protected Access 2)

O WPA2 é uma versão aprimorada do WPA, amplamente utilizado hoje. Utiliza o protocolo de autenticação 802.1X com EAP (Extensible Authentication Protocol) e suporta criptografia AES (Advanced Encryption Standard), oferecendo maior segurança do que o TKIP do WPA.

### WPA3 (Wi-Fi Protected Access 3)

O WPA3 é a versão mais recente e avançada, introduzindo o protocolo SAE (Simultaneous Authentication of Equals) para uma autenticação mais robusta e criptografia individualizada para cada dispositivo, melhorando a segurança geral da rede.

### 802.1X/EAP

O 802.1X é um protocolo de autenticação utilizado em redes com e sem fio, funcionando com o EAP para fornecer autenticação baseada em certificados. Métodos como EAP-TLS, EAP-PEAP e EAP-TTLS permitem autenticação segura.

## :dart: Métodos de Autenticação

### PSK (Pre-Shared Key)

No PSK, uma chave pré-acordada é compartilhada entre dispositivos e o ponto de acesso. É fácil de configurar e comum em redes domésticas e pequenas empresas, mas pode ser suscetível a ataques de força bruta se a chave não for forte.

### Enterprise

O método Enterprise utiliza um servidor de autenticação (como o RADIUS) para verificar credenciais de cada usuário. Oferece maior segurança e flexibilidade, sendo ideal para ambientes corporativos e institucionais.

### Open

O método Open não exige autenticação para conectar-se à rede, o que facilita o acesso, mas também representa um risco significativo, pois qualquer pessoa dentro do alcance pode se conectar e potencialmente interceptar o tráfego.

## :dart: WPS (Wi-Fi Protected Setup)

O WPS foi projetado para simplificar a conexão de dispositivos à rede Wi-Fi. Existem dois métodos principais:

- **PIN (Personal Identification Number):** Insere um código numérico de 8 dígitos para conectar o dispositivo ao roteador.
- **PBC (Push Button Configuration):** Pressiona um botão físico no roteador e no dispositivo para estabelecer a conexão.

Embora o WPS facilite a configuração, ele tem preocupações de segurança, como vulnerabilidades a ataques de força bruta. Recomenda-se desabilitar o WPS e usar métodos tradicionais de autenticação, como WPA2-PSK, para maior segurança.

