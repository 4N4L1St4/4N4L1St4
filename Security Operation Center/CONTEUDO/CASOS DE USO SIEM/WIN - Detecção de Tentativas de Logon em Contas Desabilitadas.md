# Necessidade do Caso de Uso: Detecção de Tentativas de Logon em Contas Desabilitadas

## :dart: Introdução

### Descrição da Regra
A regra "Disabled Windows Account Logon Attempts" é projetada para detectar tentativas de logon em contas que foram desabilitadas no Active Directory. Quando um usuário ou sistema tenta autenticar em uma conta desabilitada, o SIEM gera um alerta para que a equipe de segurança investigue a atividade.1


## :dart: Como a Regra Funciona



### Filtro de Condição
O filtro de condição utilizado para identificar as tentativas de logon falhas envolve os seguintes eventos:
- `eventType = "Win-Security-531"`: Esse evento indica que houve uma tentativa de logon com uma conta desabilitada.
- `eventType = "Win-Security-4625" AND winLogonFailCode2 CONTAIN "0xC0000072"`: Esse evento é gerado quando há uma tentativa de logon em uma conta desabilitada, identificado pelo código de erro `0xC0000072`.

### Tipo de Evento
O tipo de evento é uma tentativa de logon falha. Esse tipo de evento pode ocorrer por diversos motivos, como uma senha incorreta ou uma conta que foi desativada.

## :dart: Remediação em Crises

Quando uma tentativa de logon é detectada para uma conta desabilitada, é crucial agir rapidamente para mitigar o risco:
1. **Bloquear tentativas adicionais**: Impedir novos logons usando políticas de bloqueio temporário ou regras de firewall.
2. **Revisar a conta do usuário**: Verificar se a conta foi desabilitada intencionalmente ou se houve um erro administrativo.
3. **Auditar os logs de segurança**: Analisar os logs do Active Directory e outros eventos relacionados para verificar se houve uma tentativa de comprometimento.

## :dart: Subcategoria da Regra

Esta regra se enquadra na subcategoria "Credential Access", que envolve a tentativa de acesso não autorizado às credenciais do sistema.

## :dart: Conclusão

A detecção de tentativas de logon em contas desabilitadas é um componente essencial da estratégia de segurança de uma organização. Garantir que tais tentativas sejam monitoradas e investigadas pode ajudar a prevenir ataques baseados em credenciais comprometidas ou ações maliciosas por usuários internos ou atacantes externos.

