
# WIN - Detecção de Tentativas de Logon em Contas Desabilitadas

## :dart: Descrição da Regra

A regra **"Tentativas de Logon em Contas Desabilitadas"** foi projetada para identificar tentativas de autenticação em contas desabilitadas no **Active Directory**. Quando um usuário ou sistema tenta fazer login em uma conta desativada, o **SIEM** gera um alerta, permitindo que a equipe de segurança investigue a atividade.

## :dart: Como a Regra Funciona

### Filtro de Condição

A regra utiliza os seguintes eventos para identificar tentativas de logon falhas em contas desabilitadas:

- **`eventType = "Win-Security-531"`**: Este evento é gerado quando uma tentativa de logon é feita em uma conta desabilitada.
  
- **`eventType = "Win-Security-4625" AND winLogonFailCode2 CONTAIN "0xC0000072"`**: Esse evento ocorre quando uma tentativa de logon em uma conta desabilitada falha, identificado pelo código de erro `0xC0000072`.

### Possiveis falso positivo

O tipo de evento é uma tentativa de logon falha, que pode ocorrer por vários motivos, incluindo:

- **Senha incorreta**
- **Conta desabilitada proposital**

## :dart: Criando a Regra no Wazuh

A regra para detectar tentativas de logon em contas desabilitadas pode ser configurada no **Wazuh** da seguinte maneira:

```bash
<group name="windows,">
  <rule id="100000" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-531</field>
  </rule>
  <rule id="100001" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-4625</field>
    <field name="winLogonFailCode2">0xC0000072</field>
  </rule>
</group>
```

# WIN - Detecção de Tentativas de Logon em Contas Desabilitadas

## :dart: Descrição da Regra

A regra **"Tentativas de Logon em Contas Desabilitadas"** foi projetada para identificar tentativas de autenticação em contas desabilitadas no **Active Directory**. Quando um usuário ou sistema tenta fazer login em uma conta desativada, o **SIEM** gera um alerta, permitindo que a equipe de segurança investigue a atividade.

## :dart: Como a Regra Funciona

### Filtro de Condição

A regra utiliza os seguintes eventos para identificar tentativas de logon falhas em contas desabilitadas:

- **eventType = "Win-Security-531"**: Este evento é gerado quando uma tentativa de logon é feita em uma conta desabilitada.
  
- **eventType = "Win-Security-4625" AND winLogonFailCode2 CONTAIN "0xC0000072"**: Esse evento ocorre quando uma tentativa de logon em uma conta desabilitada falha, identificado pelo código de erro 0xC0000072.

### Possíveis Falsos Positivos

O tipo de evento é uma tentativa de logon falha, que pode ocorrer por vários motivos, incluindo:

- **Senha incorreta**
- **Conta desabilitada proposital**

## :dart: Criando a Regra no Wazuh

A regra para detectar tentativas de logon em contas desabilitadas pode ser configurada no **Wazuh** da seguinte maneira:

```
<group name="windows,">
  <rule id="100000" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-531</field>
  </rule>
  <rule id="100001" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-4625</field>
    <field name="winLogonFailCode2">0xC0000072</field>
  </rule>
</group>
```

## :dart: Remediação em Caso de Crises

Quando uma tentativa de logon em uma **conta desabilitada** é detectada, é crucial agir com rapidez e precisão para mitigar os riscos. As ações imediatas recomendadas incluem:

### 1. **🔍 Revisar a Conta do Usuário**
Verifique se a conta foi desabilitada **intencionalmente** ou se houve um **erro administrativo**. Ações humanas equivocadas podem ser corrigidas rapidamente, evitando alarmes falsos. Para revisar o status da conta no Windows, use o comando:

```
Get-ADUser -Identity "nome_da_conta" -Properties AccountDisabled
```

### 2. **🔒 Bloquear Tentativas Adicionais**

Implemente políticas de bloqueio temporário ou regras de firewall para impedir que novas tentativas de logon sejam realizadas, minimizando o impacto da ameaça. Você pode bloquear a conta usando o comando:

```
Disable-ADAccount -Identity "nome_da_conta"
```

Além disso, você pode configurar um bloqueio temporário usando o Windows Firewall:

```
New-NetFirewallRule -DisplayName "Bloqueio Logon" -Direction Inbound -Protocol TCP -Action Block -LocalPort 3389
```

### 3. **📜 Auditar os Logs de Segurança**

Analise detalhadamente os logs do Active Directory e outros eventos relacionados. Isso ajudará a identificar se houve uma tentativa de comprometimento e a traçar o caminho do invasor, caso tenha ocorrido. Para verificar os logs de eventos de segurança do Windows, use o comando:

```
Get-WinEvent -LogName Security | Where-Object {$_.Id -eq 4625}
```

Ou, para filtrar eventos relacionados a uma conta específica:

```
Get-WinEvent -LogName Security | Where-Object {$_.Message -like "*nome_da_conta*"}
```
