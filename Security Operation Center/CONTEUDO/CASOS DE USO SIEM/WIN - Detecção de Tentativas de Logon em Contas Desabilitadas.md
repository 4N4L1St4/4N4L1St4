
# Necessidade do Caso de Uso: Detecção de Tentativas de Logon em Contas Desabilitadas

## :dart: Descrição da Regra

A regra **"Tentativas de Logon em Contas Desabilitadas"** foi projetada para identificar tentativas de autenticação em contas desabilitadas no **Active Directory**. Quando um usuário ou sistema tenta fazer login em uma conta desativada, o **SIEM** gera um alerta, permitindo que a equipe de segurança investigue a atividade.

## :dart: Como a Regra Funciona

### Filtro de Condição

A regra utiliza os seguintes eventos para identificar tentativas de logon falhas em contas desabilitadas:

- **`eventType = "Win-Security-531"`**: Este evento é gerado quando uma tentativa de logon é feita em uma conta desabilitada.
  
- **`eventType = "Win-Security-4625" AND winLogonFailCode2 CONTAIN "0xC0000072"`**: Esse evento ocorre quando uma tentativa de logon em uma conta desabilitada falha, identificado pelo código de erro `0xC0000072`.

### Tipo de Evento

O tipo de evento é uma tentativa de logon falha, que pode ocorrer por vários motivos, incluindo:

- **Senha incorreta**
- **Conta desabilitada**

## :dart: Remediação em Caso de Crises

Quando uma tentativa de logon é detectada em uma conta desabilitada, é fundamental agir rapidamente para mitigar os riscos. As ações recomendadas incluem:

1. **Bloquear Tentativas Adicionais**: Utilize políticas de bloqueio temporário ou regras de firewall para impedir novos logons.

2. **Revisar a Conta do Usuário**: Verifique se a conta foi desabilitada intencionalmente ou se houve algum erro administrativo.

3. **Auditar os Logs de Segurança**: Analise os logs do **Active Directory** e outros eventos relacionados para determinar se houve uma tentativa de comprometimento.

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
