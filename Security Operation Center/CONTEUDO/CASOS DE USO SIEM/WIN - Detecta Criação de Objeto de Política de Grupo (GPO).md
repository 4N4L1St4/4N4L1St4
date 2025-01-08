# WIN - Detecta Criação de Objeto de Política de Grupo (GPO)

## :dart: Descrição da Regra

A regra **"Detecta Criação de Objeto de Política de Grupo"** foi projetada para identificar a criação de novos Objetos de Política de Grupo (GPO) no **Active Directory**. A criação de GPOs pode ser um indicador de atividade administrativa ou maliciosa, e a detecção precoce pode ajudar na investigação de configurações inesperadas ou comprometidas.

## :dart: Como a Regra Funciona

### Filtro de Condição

A regra utiliza os seguintes eventos para identificar a criação de GPOs:

- **eventType = "Win-Security-4732"**: Este evento é gerado quando um novo GPO é criado ou modificado.
  
- **eventType = "Win-Security-4739" AND winGPOOperation CONTAIN "Create"**: Esse evento ocorre quando a operação de criação de GPO é realizada com sucesso.

## 🌐 Fluxo de Detecção de Criação de GPO

```
-------------------------------
|       Máquina Cliente        |
|  (Criando ou Modificando GPO)|
-------------------------------
            |
            v
-------------------------------
|       Máquina Alvo (AD)      |
| (Geração de Eventos de Log)  |
-------------------------------
            |
            v
-------------------------------
|    Wazuh (SIEM)              |
| (Análise e Alertas)          |
-------------------------------
```

### Possíveis Falsos Positivos

A criação de GPOs pode ocorrer por várias razões administrativas legítimas, incluindo:

- **Alterações normais de configuração de GPO** realizadas pelos administradores de sistema.
- **Atualizações de políticas de segurança** aplicadas a novos dispositivos ou grupos de usuários.

## :dart: Criando a Regra no Wazuh

A regra para detectar a criação de GPOs pode ser configurada no **Wazuh** da seguinte maneira:

```
<group name="windows,">
  <rule id="100010" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-4732</field>
  </rule>
  <rule id="100011" level="7">
    <decoded_as>json</decoded_as>
    <field name="eventType">Win-Security-4739</field>
    <field name="winGPOOperation">Create</field>
  </rule>
</group>
```

## :dart: Remediação em Caso de Crises

Quando a criação de um **GPO inesperado** é detectada, é essencial agir rapidamente para entender a origem e a intenção da criação. As ações imediatas recomendadas incluem:

### 1. **🔍 Revisar o GPO Criado**
Verifique quem foi o responsável pela criação do GPO e qual a finalidade da política configurada. Isso pode ser feito no Console de Gerenciamento de Política de Grupo (GPMC). Para revisar o GPO no PowerShell, use o comando:

```
Get-GPO -Name "nome_do_GPO"
```
### 2. **📜 Auditar os Logs de Segurança**
Verifique os logs de eventos de segurança do Active Directory para entender as circunstâncias em torno da criação do GPO e identificar quem fez a alteração. Para revisar os eventos no PowerShell, use:

```
Get-WinEvent -LogName Security -ComputerName "endereço_do_AD" | Where-Object {$_.Id -eq 4732}
```
Ou, para filtrar eventos relacionados a um GPO específico:

```
Get-WinEvent -LogName Security -ComputerName "endereço_do_AD" | Where-Object {$_.Message -like "*nome_do_GPO*"}
