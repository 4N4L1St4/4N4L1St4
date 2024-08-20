<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/guia.png" alt="Lista de Comandos" width="160" height="160">
  </a>
  <h1 align="center">Lista de Comandos</h1>
</p>

## 🎯 O Guia para "Remoção de Acesso a Contas: O Caso do T1531"

### Ferramentas Necessárias
Para realizar esta investigação, é essencial que o analista tenha acesso ao Sysinternals da Microsoft na estação de trabalho.

## 🎯 Conteúdo

### Cenário

- [Investigação 001](#investigação-001)
- [Investigação 002](#investigação-002)
- [Investigação 003](#investigação-003)
- [Investigação 004](#investigação-004)
- [Investigação 005](#investigação-005)
- [Investigação 006](#investigação-006)
- [Investigação 007](#investigação-007)
- [Investigação 008](#investigação-008)
- [Investigação 009](#investigação-009)
- [Investigação 010](#investigação-010)
- [Investigação 011](#investigação-011)

### Investigação 001

Se o SIEM atribuir uma atividade relacionada a um Process ID ou GUID de processos:

1. Acesse a máquina remotamente via PSexec:
    ```bash
    psexec \\nome_ou_ip_da_maquina_remota -u usuario_remoto -p senha_remota cmd
    ```
2. Em seguida, utilize o PowerShell para obter eventos específicos:
    ```powershell
    Get-WinEvent -FilterHashtable @{LogName="Microsoft-Windows-Sysmon/Operational"; Id=1} | Where-Object { $_.Properties[1].Value -eq "{00CCCCCC-700A-BBC3-DDD-000000001E00}" -or $_.Properties[4].Value -eq "6140" }
    ```

### Investigação 002

#### Cenário: Suspeita de Exfiltração de Dados por meio de Uploads a Servidores Externos

**Descrição:** O analista foi informado pelo SIEM sobre uma atividade suspeita onde grandes volumes de dados foram enviados para um servidor desconhecido.

**Passos de Investigação:**

1. **Identifique o tráfego de rede associado à exfiltração:**
    ```powershell
    Get-NetTCPConnection | Where-Object { $_.RemoteAddress -like "IP_DO_SERVIDOR_EXTERNO" }
    ```

2. **Verifique os logs de proxy para identificar a URL completa:**
    ```bash
    grep "IP_DO_SERVIDOR_EXTERNO" /var/log/proxy.log
    ```

3. **Revise os logs de firewall para confirmar o padrão de tráfego:**
    ```bash
    cat /var/log/firewall.log | grep "IP_DO_SERVIDOR_EXTERNO"
    ```

4. **Analise o histórico do navegador da máquina suspeita:**
    ```bash
    sqlite3 ~/.mozilla/firefox/PROFILE_NAME/places.sqlite "SELECT url FROM moz_places WHERE url LIKE '%UPLOAD_SITE%'"
    ```

### Investigação 003

#### Cenário: Intrusão Através de Vulnerabilidade Zero-Day

**Descrição:** Um alerta foi emitido sobre uma possível intrusão que explorou uma vulnerabilidade zero-day no servidor web.

**Passos de Investigação:**

1. **Revise os logs de acesso do servidor web:**
    ```bash
    grep "POST /path/to/vulnerable/script" /var/log/apache2/access.log
    ```

2. **Identifique processos suspeitos que possam ter sido iniciados pela exploração:**
    ```bash
    ps aux | grep "nome_do_processo_suspeito"
    ```

3. **Examine as conexões de rede ativas para detectar possíveis shells reversas:**
    ```bash
    netstat -anp | grep 'ESTABLISHED.*:4444'
    ```

4. **Cheque por arquivos ou scripts recém-criados no servidor:**
    ```bash
    find /var/www -type f -mtime -1
    ```

### Investigação 004

#### Cenário: Ransomware em Estação de Trabalho

**Descrição:** Uma estação de trabalho começou a exibir mensagens de resgate após um possível ataque de ransomware.

**Passos de Investigação:**

1. **Isolar a máquina da rede imediatamente:**
    ```bash
    iptables -A OUTPUT -p all -j DROP
    ```

2. **Verificar processos em execução relacionados ao ransomware:**
    ```powershell
    Get-Process | Where-Object { $_.ProcessName -like "*ransomware_name*" }
    ```

3. **Verificar modificações recentes em arquivos do sistema:**
    ```bash
    find / -type f -mmin -60
    ```

4. **Analisar as chaves de registro modificadas:**
    ```powershell
    Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' | Format-List
    ```

### Investigação 005

#### Cenário: Phishing com Sucesso - Credenciais Vazadas

**Descrição:** Um usuário relatou que caiu em um golpe de phishing e inseriu suas credenciais em um site falso.

**Passos de Investigação:**

1. **Bloquear a conta comprometida temporariamente:**
    ```powershell
    Disable-ADAccount -Identity "NomeDeUsuario"
    ```

2. **Revise os logs de autenticação para identificar logins suspeitos:**
    ```bash
    grep "NomeDeUsuario" /var/log/auth.log
    ```

3. **Alterar as credenciais e forçar logoff de todas as sessões ativas:**
    ```powershell
    Set-ADUser -Identity "NomeDeUsuario" -ResetPasswordOnNextLogon $true
    ```

4. **Investigar e remover qualquer redirecionamento de email não autorizado:**
    ```powershell
    Get-Mailbox -Identity "NomeDeUsuario" | Get-InboxRule
    ```

### Investigação 006

#### Cenário: Atividade Suspeita de Conta com Privilégios Elevados

**Descrição:** Foi detectado que uma conta com privilégios elevados executou atividades incomuns fora do horário de expediente.

**Passos de Investigação:**

1. **Revisar os logs de atividades para essa conta específica:**
    ```powershell
    Get-WinEvent -LogName "Security" | Where-Object { $_.Message -like "*NomeDeUsuario*" -and $_.TimeCreated -ge (Get-Date).AddHours(-12) }
    ```

2. **Verificar o histórico de comandos executados no PowerShell:**
    ```powershell
    Get-Content -Path "C:\Users\NomeDeUsuario\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt"
    ```

3. **Identificar processos iniciados pela conta:**
    ```bash
    ps -u NomeDeUsuario -o pid,cmd
    ```

4. **Auditar alterações no Active Directory feitas pela conta:**
    ```powershell
    Get-ADReplicationAttributeMetadata -Object "CN=NomeDeUsuario,CN=Users,DC=example,DC=com" -Server "DC1"
    ```

### Investigação 007

#### Cenário: Atividade de Malware - Comunicação com Servidor C2

**Descrição:** Detectou-se uma comunicação persistente entre uma estação de trabalho e um servidor C2 (Command & Control).

**Passos de Investigação:**

1. **Capturar tráfego de rede relacionado ao C2:**
    ```bash
    tcpdump -i eth0 host C2_SERVER_IP -w /tmp/c2_traffic.pcap
    ```

2. **Identificar processos que estão estabelecendo conexões com o servidor C2:**
    ```bash
    lsof -i @C2_SERVER_IP
    ```

3. **Verificar scripts ou tarefas agendadas maliciosas:**
    ```bash
    crontab -l | grep -i "malware_script"
    ```

4. **Analisar logs de DNS para solicitações relacionadas ao domínio do C2:**
    ```bash
    cat /var/log/dnsmasq.log | grep "C2_DOMAIN"
    ```

### Investigação 008

#### Cenário: Tentativa de Escalonamento de Privilégios

**Descrição:** O SIEM sinalizou uma tentativa de escalonamento de privilégios em uma máquina da rede.

**Passos de Investigação:**

1. **Revisar logs de autenticação para falhas de login:**
    ```bash
    grep "authentication failure" /var/log/auth.log
    ```

2. **Identificar alterações suspeitas nos grupos de usuários:**
    ```bash
    getent group sudo | grep "NomeDeUsuario"
    ```

3. **Monitorar a criação de novos arquivos SUID:**
    ```bash
    find / -perm -4000 -type f
    ```

4. **Verificar se há processos em execução com privilégios elevados:**
    ```bash
    ps aux | grep root
    ```

### Investigação 009

####
