<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Comandos para uso de analista de segurança da informação" width="160" height="160">
  </a>
  <h1 align="center">Comandos para Uso de Analista de Segurança da Informação</h1>
</p>

## 🎯 O Guia para Alavancar a Sua Carreira

"Este guia foi elaborado para aqueles que desejam aprimorar suas habilidades em resolução de incidentes. Aqui, você encontrará informações valiosas sobre como identificar, mitigar e resolver incidentes de segurança de forma eficaz."

## ⚠️ Aviso Importante

> "Antes de tudo, você pode me ajudar e colaborar. Deu bastante trabalho fazer esse repositório e organizá-lo para melhorar seus estudos ou trabalho. Portanto, você pode me ajudar das seguintes maneiras:"

[![LinkedIn](https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gabriel-oliveira-215812184/)
[![Gmail](https://img.shields.io/badge/-Gmail-%23333?style=for-the-badge&logo=gmail&logoColor=white)](mailto:noc@controleti.net)
[![Instagram](https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/analistagabriel.exe/)

## 💡 Nossa Proposta

> "Este guia oferece uma coleção de comandos essenciais que um analista de segurança da informação pode usar no dia a dia. Eles cobrem diversas áreas, como monitoramento de redes, gerenciamento de usuários, e análise de logs. O objetivo é fornecer uma referência rápida para tarefas rotineiras e resolução de problemas, ajudando a aumentar a eficiência e a precisão na sua função."

## ⚠️ Lista de Comandos

### 1. **Scan de Rede com ICMP usando PowerShell**
  - **Descrição:** Verifica a conectividade de todos os endereços IP em uma sub-rede.
  
  ```powershell
  CMD> FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL)
```

### 2. **Ping para Verificar Conectividade**
  - **Descrição:** Testa a conectividade com um host específico.

  ```cmd
  cmd>ping 1.1.1.1
```

### 3. **Consulta DNS com Nslookup**
  - **Descrição:** Resolve um endereço IP para seu nome de domínio associado.

  ```cmd
  cmd>nslookup 1.1.1.1
```

### 4. **Consulta de Usuários em um Servidor Remoto**
  - **Descrição:** Lista os usuários conectados a um servidor específico.

  ```cmd
  cmd>query user /server:<Endereço do Servidor>
```

### 5. **Consulta de Contas de Usuário com WMI**
  - **Descrição:** Verifica contas de usuário locais em uma máquina remota.

  ```cmd
  cmd>wmic /node:SRVPRN useraccount where "localaccount=true" get name,sid,disabled
```

### 6. **Busca de Usuário no Active Directory**
  - **Descrição:** Localiza um usuário no Active Directory pelo SAMID.

  ```cmd
  cmd>dsquery user -samid 216265
```

### 7. **Verificação do Status de Serviço com SC**
  - **Descrição:** Consulta o status de um serviço em um servidor remoto.

  ```cmd
  cmd>sc \\172.16.0.17 query WinCollect
```

### 8. **Teste de Conectividade de Porta com PowerShell**
  - **Descrição:** Testa a conectividade com uma porta específica em um host remoto.

  ```powershell
  ps>Test-NetConnection -ComputerName 172.16.0.21 -Port 445
```

### 9. **Listagem de Processos em Máquina Remota**
  - **Descrição:** Lista processos em execução em uma máquina remota e filtra resultados por um termo específico.

  ```powershell
  ps>tasklist /S:172.16.0.137 /V | findstr /i mesh
```

### 10. **Listagem de Diretórios Remotos**
  - **Descrição:** Exibe o conteúdo de um diretório em um compartilhamento de rede.

  ```cmd
  cmd>dir \\172.16.0.21\C$
```

### 11. **Execução de Comandos Remotos com PsExec**
  - **Descrição:** Executa comandos em um computador remoto usando PsExec.

  ```cmd
  cmd>psexec \\172.16.0.21 cmd
```

### 12. **Busca de Texto em Arquivos com grep**
  - **Descrição:** Busca por um termo específico em arquivos de configuração do OSSEC.

  ```shell
  shell> grep -r "92200" /var/ossec/ruleset/rules/*.xml
```

### 13. **Scan de Usuários Logados na Rede**
  - **Descrição:** Verifica quais máquinas na sub-rede possuem usuários logados.

  ```cmd
  CMD> FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && echo Address: 172.16.0.%i && query user /server:172.16.0.%i 2>NUL)
```

### 14. **Listagem de Pastas de Usuários em Máquinas Remotas**
  - **Descrição:** Lista pastas de usuários em máquinas remotas na sub-rede, ordenadas por data de acesso.

  ```powershell
  PS> 1..254 | %{if (ping -n 1 -w 1 172.16.0.$_ | findstr /i "TTL=12") { gci \\172.16.0.$_\C$\Users | Select-Object -Property Name,FullName,Attributes,CreationTime,LastAccessTime,LastWriteTime | Sort-Object -Property LastAccessTime,LastWriteTime -Descending | FT -AutoSize -Wrap -Force }}
```

### 15. **Busca por Pastas Compartilhadas na Rede**
  - **Descrição:** Scaneia a rede em busca de pastas compartilhadas.

  ```cmd
  CMD> netexec smb -t 600 172.16.0.0/16 -u "" -p "" --shares 2>NUL >> rede_172.16.0.0-16.md
```

### 16. **Listagem de Produtos Instalados com WMI**
  - **Descrição:** Lista os produtos instalados em uma máquina usando WMI.

  ```cmd
  CMD> get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
```

### 17. **Desinstalação de Produto com MSIExec**
  - **Descrição:** Remove um produto instalado usando MSIExec.

  ```cmd
  CMD> msiexec /x {} /qn
```

### 18. **Listar Sessões de Usuários Locais**
  - **Descrição:** Lista todas as sessões de usuários em uma máquina local.

  ```cmd
  CMD> query session
```

### 19. **Listar Tarefas de Usuários Específicos**
  - **Descrição:** Exibe as tarefas em execução para um usuário específico.

  ```cmd
  CMD> tasklist /V | findstr <Nome do Usuario do Domínio>
```

### 20. **Consultar Status de Serviço em Máquina Remota**
  - **Descrição:** Consulta o status de um serviço específico em uma máquina remota.

  ```powershell
  PS> Get-Service -Name "*" -ComputerName "<Endereço do Servidor>" | grep Loqed
```

### 21. **Iniciar Serviço em Máquina Remota**
  - **Descrição:** Força a inicialização de um processo em uma máquina remota.

  ```powershell
  PS> Invoke-Command -ComputerName <Endereço de Servidor> -ScriptBlock { Start-Service -Name $args[0] } -ArgumentList LoqedWd
```
- __Redirecionar porta para ip remoto ou local (_`cmd`_)__
```powershell
 # Adicionar
 C:\> netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=445 connectaddress=192.168.0.3 connectport=445
 # Remover
 C:\> netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=445

 # OBS: O comando acima apenas cria o redirecionamento de porta, mas caso seja necessario a liberacao via Firewall (Local), pode ser usado o seguinte comando:
 C:\> netsh advfirewall firewall add rule name="Port Forwarding" protocol=TCP dir=in localport=<listen_port> action=allow
```

- __Deletar Arquivos Temporarios de Internet (_`cmd`_)__
```cmd
 RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
```

- __Deletar Cookies de Internet (_`cmd`_)__
```cmd
 RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
```

- __Deletar Historico de Internet (_`cmd`_)__
```cmd
 RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
```

- __Deletar Dados de Formularios de Internet (_`cmd`_)__
```cmd
 RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
```

- __Deletar Senhas de Paginas da Internet (_`cmd`_)__
```cmd
 RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
```

- __Lista todos os usuarios no dominio (_`cmd`_)__
```cmd
 wmic useraccount list full
```

- __Lista Informações de um usuário (_`cmd`_)__
```powershell
 C:\> net user nome_do_usuario /domain
```

- __Lista Informações de um usuário (_`powershell`_)__
```powershell
 PS> Get-ADUser  -Filter 'samAccountName -like "JaneDoe"' | Select-Object -Property *
```

- __Lista Informações de status de instalação de softwares/updates (_`powershell`_)__
```powershell
 PS> gwmi -cl win32_reliabilityRecords -filter "Message like '%erro%'" | select ProductName,SourceName,Message | FT -AutoSize -Wrap
```

- __Abre a janela de busca para usuarios no dominio (_`UI`_)__
```cmd
 rundll32 dsquery, OpenQueryWindow
```


- __Pegar dados de versao e build do windows (_`cmd`_)__
```cmd
 C:\> wmic /node:E044662 os get Caption,BuildNumber,InstallDate,ProductType,RegisteredUser,SerialNumber
```

- __Listar pastas compartilhdas em host remoto (_`cmd`_)__
```cmd
 C:\> net view \\hostname_or_ip
```

- __Listar sessoes ativas em um host remoto (_`cmd`_)__
```ruby
 # Em um único target
 cmd> query session /server:hostname_or_ip
 # Em múltiplos targets
 FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && echo Address: 172.16.0.%i && query user /server:172.16.0.%i 2>NUL)
```

- __Listar usuarios ativos em um host remoto (_`cmd`_)__
```ruby
 query user /server:hostname_or_ip
```

- __Listar usuarios que já se logaram em host remoto (_`powershell/cmd`_)__
```powershell
 # CMD
 C:\> wmic /node:TargetComputerName NETLOGIN get Name, FullName, LastLogon, UserType, Privileges, NumberOfLogons, comment
 # POWERSHELL
 PS C:\> Get-WmiObject -Query "select Name, LastLogon, LastLogoff from Win32_NetworkLoginProfile" | Out-GridView
```

- __Encontrar usuario via SID (_`powershell`_)__
```powershell
 PS C:\> Get-ADUser -Filter * | Where-Object -Property SID -like 'S-1-5-21-35927030-1094727795-1882987033-68533'
```

- __Listar Processos relacionados a conexoes ativas (_`powershell`_)__
```powershell
 Get-NetTCPConnection| Select LocalAddress, LocalPort, RemoteAddress, RemotePort, State, OwningProcess,`
 @{n="StartTime";e={(Get-Process -Id $_.OwningProcess).StartTime}},`
 @{n="ProcessName";e={(Get-Process -Id $_.OwningProcess).ProcessName}},`
 @{n="Path";e={(Get-Process -Id $_.OwningProcess).Path}},`
 @{n="UserName";e={(Get-Process -Id $_.OwningProcess -IncludeUserName).UserName}},`
 @{n="Company";e={(Get-Process -Id $_.OwningProcess).Company}},`
 @{n="ProductVersion";e={(Get-Process -Id $_.OwningProcess).ProductVersion}},`
 @{n="Handle";e={(Get-Process -Id $_.OwningProcess).Handle}},`
 @{n="Threads";e={(Get-Process -Id $_.OwningProcess).Threads}} | FT -autosize -Force
```

- __Listar tentativas de conexao RDP (_`powershell`_)__
```powershell
 PS:\> $EventData = Foreach ($event in $xml.Event){ New-Object PSObject -Property @{ TimeCreated = (Get-Date ($event.System.TimeCreated.SystemTime) -Format 'yyyy-MM-dd hh:mm:ss K'); User = $event.UserData.EventXML.Param1; Domain = $event.UserData.EventXML.Param2; Client = $event.UserData.EventXML.Param3; }} $EventData | FT
```

- __Kill remote session(conn) em um host remoto (_`cmd`_)__
```ruby
 rwinsta /server:hostname_or_ip Session_ID
```

- __Force Logoff to remote session(conn,disc) em um host remoto (_`cmd`_)__
```ruby
 # Em um único target
 cmd> logoff SessionID /server:hostname_or_ip
 # Em toda uma rede e baseado no nome de usuário
cmd> FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && echo Address: 172.16.0.%i && @(for /F "tokens=1,2" %A in ('"query session /server:172.16.0.%i 2>NUL | findstr "cyberark-domicio" 2>NUL"') DO (logoff %B /server:172.16.0.%i)))
```

- __Listar todos os serviços na maquina (Verboso)(_`cmd`_)__
```ruby
 C:\> for /F "tokens=1,2" %A in ('"sc \\localhost query | findstr "SERVICE_NAME NOME_DO_SERV""') DO (sc \\localhost qc %B)
```

- __Forca o Logoff em todas as sessoes(Disc) em um host remoto (_`cmd`_)__
```ruby
 for /F "tokens=1,2" %A in ('"query session /server:hostname_or_ip | findstr "Disco" | findstr /V "service,console" "') DO (logoff %B /server:hostname_or_ip)
```

- __Faz o dump da memoria de um processo (_`cmd`_)__
```cmd
 rundll32 C:\windows\System32\comsvcs.dll, MiniDump PID_Do_Processo C:\nome_do_arquivo.dmp full
```

- __Enviar comando(_message_) para um- __`Named Pipe`__  (_`powershell`_)__
```powershell
<#
.Synopsis
    Sends a message of a named pipe.
.DESCRIPTION
    Sends a message of a named pipe.This named pipe can exist locally or on a remote machine. By default,
    this cmdlet sends the message using Unicode encoding.
.EXAMPLE
   Send-NamedPipeMessage -PipeName "DrainPipe" -ComputerName "domaincontroller" -Message "Screw you!"
.EXAMPLE
   Send-NamedPipeMessage -PipeName "SewerPipe" -Message "Hello, Pipe!"
#>
function Send-NamedPipeMessage
{
    param(
    # The named pipe to send the message on.
    [String]$PipeName,
    # The computer the named pipe exists on.
    [String]$ComputerName=".",
    # The message to send the named pipe on.
    [string]$Message,
    # The type of encoding to encode the string with
    [System.Text.Encoding]$Encoding = [System.Text.Encoding]::Unicode,
    # The number of milliseconds before the connection times out
    [int]$ConnectTimeout = 5000
    )

    $stream = New-Object -TypeName System.IO.Pipes.NamedPipeClientStream -ArgumentList $ComputerName,$PipeName,([System.IO.Pipes.PipeDirection]::Out), ([System.IO.Pipes.PipeOptions]::None),([System.Security.Principal.TokenImpersonationLevel]::Impersonation)
    $stream.Connect($ConnectTimeout)
    $bRequest = $Encoding.GetBytes($Message)
    $cbRequest = $bRequest.Length; 
    $stream.Write($bRequest, 0, $cbRequest); 
    $stream.Dispose()
}
```

- __Mostrar/Exportar credenciais salvas (_`cmd`_)__
```cmd
 C\> rundll32 keymgr.dll, KRShowKeyMgr
```

- __Lista e ler logs de eventos (_`cmd`_)__
```cmd
 REM - Listar arquivos de logs disponiveis
 C:\> wevtutil le
 
 REM - Ler os dados de um arquivo de log
 C:\> wevtutil qe Security
```

- __Faz uma busca por `palavra chave` em todos os Logs de Eventos do Windows (_`Poweshell`_) - 1__
```powershell
 # Exemplo de busca pela palavra "*PSEXE*" na propriedade $_.Message nos ultimos (-10) dias do System log 
 PS:\> Get-Eventlog -LogName System -After (Get-date).AddDays(-1) | Where-Object {$_.Message -like "*PSEXE*"} | Select-Object -Property *

 # Exemplo de busca pela palavra "*PSEXE*" na propriedade $_.Message nos ultimos (-10) dias em todos os logs
 
 PS:\> Get-EventLog -List | select log | ForEach-Object { $ErrorActionPreference = "SilentlyContinue"; Write-Host "LogName: $($_.Log)"; Get-Eventlog -LogName $_.Log -After (Get-date).AddDays(-10)} | Where-Object {$_.Message -like "*cmd.exe*"} | Select-Object -Property *
```

- __Buscar `Palavra Chave` em todos os Logs e Eventos do Windows (.evtx) (_`powershell`_) - 2__
```powershell
# ./script.ps1
$wordtosearch = Read-Host "[?] Digite uma palavra a ser buscada (Ex: JonDoe):"
$logs = Get-WinEvent -ListLog * 2>$null
foreach ($log in $logs) {
    $LogPath = $log.LogName
    $LogFilePath = $log.LogFilePath
    Write-Host "[>] LogName: ${LogPath} `t LogPath: ${LogFilePath}"
    Get-WinEvent $LogPath -ErrorAction Continue 2>$null| Where-Object { $_.ToXml() -like "*$wordtosearch*" } 2>$null| Format-Table -autosize -Force 2>$null
}
Write-Host "[.] Consulta concluída."
```

- __Lista erros de Logon na maquina (_`Poweshell`_)__
```powershell
 # Exemplo de busca nos ultimos (-2) dias 
 PS:\> Get-Eventlog -LogName security -After  (Get-date).AddDays(-2) | Where-Object {$_.EventID -eq 4625} | Select-Object -Property *
```

- __Listar usuarios com senhas salvas (_`Poweshell`_)__
```powershell 
 PS:\> Get-ADUser -Filter {(userPassword -ne "$NULL") -OR (unixUserPassword -ne "$NULL")} -Properties UserPrincipalName,userPassword,unixUserPassword
 # Obs: A senha eh armazenada em formato Decimal e portanto precisa ser convertida para ASCII.
 # Use o comando de exemplo a baixo para converter:
 PS:\> [char[]]@(99,64,103,101,99,101,49,50,51) -join ''
```

- __Alterar senha de usuario (_`Poweshell`_)__
```powershell 
 # Metodo 1
 PS:\> ([ADSI]'WinNT://172.16.0.112/matricula_do_usuario').ChangePassword("senha_antiga", "senha_nova")
 # Metodo 2
 PS:\> Set-AdAccountPassword -Identity matricula_do_usuario -OldPassword (Read-Host -asSecureString "Enter the current password") -NewPassword (Read-Host -asSecureString "Enter the new password")
```

- __Lista Programas instalados em uma maquina (_`powershell`_)__
```powershell
 #Lista na maquina local
 PS:\> Get-WmiObject -Class Win32_Product

 #Lista usando um filtro por Nome do Programa
 PS:\> Get-WmiObject -Class Win32_Product | where { $_.Name -like "*Python*" }
 
 #Lista todos programas na maquina remota
 PS:\> Get-WmiObject -Class Win32_Product -ComputerName $ip_do_host_remoto

```

- __Mostra explicacao de um erro de execução no windows baseado no codigo do erro (_`cmd`_)__
```powershell
 C:\> NET HELPMSG $CodigoDoErro
```

- __Lista as configurações de auditoria na maquina (_`cmd`_)__
```powershell
 #Obtain the system's audit policy configuration.
 C:\> auditpol /get /category:"*"
 C:\> auditpol /list /subcategory:* /r

 #Set Logon Events to capture Success/Failure activity.
 C:\> auditpol /set /subcategory:"Logon" /success:enable /failure:enable
```

- __Listar ultimas atualizacoes instaladas (_`cmd`_)__
```cmd
 REM - Listar atualizacoes
 C:\> wmic qfe list

 REM - Desinstalar uma atualizacao
 C:\> wusa /uninstall /kb:Numero_do_kb
```

- __Listar atualizacoes pendentes (_`powershell`_)__
```powershell
 C:\> (((New-Object -ComObject Microsoft.Update.Session).CreateUpdateSearcher()).Search('IsInstalled=0').updates) | Out-GridView
```

- __Atualizar e Listar Politicas de Grupo - GPO (_`cmd`_)__
```cmd
 REM - Atualiza
 C:\> gpupdate /force

 REM - Listar informações de GPO da maquina
 C:\> gpresult /R
```

- __Copiar arquivo bloquedo (Locked) pelo sistema (_`cmd`_)__
```powershell
C:\WINDOWS\system32\esentutl.exe /y <SOURCE> /vss /d <DEST>
```

- __Ativar servico sem permissão de Administrador (_`cmd`_)__
```powershell
# Lista os dados do servio para saber se ele permite ativacao via Named PIPE
sc qtriggerinfo RemoteRegistry
# Ativa o Servico usando o valor de DATA como Nome do PIPE
echo start > \\.\pipe\winreg
```

- __Consultar Registros Remoto (_`cmd`_)__
```cmd
 REM - Habilita a consulta de registro remoto
 C:\> sc \\RemoteComputer config remoteregistry start=auto

 REM - Listar informações de uma classe de registro
 C:\> reg query \\RemoteComputer\HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest
 
 REM - Listar informações das chaves contidas em uma classe de registro
 C:\> reg query \\RemoteComputer\HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /S

 REM - Desabilita a consulta de registro remoto
 C:\> sc \\RemoteComputer config remoteregistry start=disabled
```

- __Listar nome dos dispositivos- __`USB`__ conectados a maquina (_`cmd`_)__
```cmd
 REM - Habilita a consulta de registro remoto
 C:\> sc \\RemoteComputer config remoteregistry start=auto

 C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB /s | findstr /I "FriendlyName"
 
 C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBSTOR /s | findstr /I "DiskId FriendlyName"

 C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\SWD\WPDBUSENUM\ /s | findstr /I "FriendlyName ContainerID"

 REM - Desabilita a consulta de registro remoto
 C:\> sc \\RemoteComputer config remoteregistry start=disabled
```

- __Listar Programas Instalados na Maquina (_`cmd`_)__
 ```cmd

 REM - Listar Programas Instalados (x64) (Local)
 C:\> reg query HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall /S /v DisplayName
 
 REM - Listar Programas Instalados (x86) (Local)
 C:\> reg query HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall /S /v DisplayName
 
 REM - Listar Programas Instalados (x64) (Remoto)
 C:\> reg query \\RemoteComputer\HKEY_LOCAL_MACHINE\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall /S /v DisplayName
 
 REM - Listar Programas Instalados (x86) (Remoto)
 C:\> reg query \\RemoteComputer\HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall /S /v DisplayName
 
 REM - Listar Programas Instalados (WMIC) (Local)
 C:\> wmic product get name, version, vendor /format:list
 C:\> wmic product where "name like '%programname%'" get /format:list
 
 REM - Listar Programas Instalados (WMIC) (Remoto)
 C:\> wmic /node:TargetComputerName product get name, version, vendor /format:list
 C:\> wmic /node:TargetComputerName product where "name like '%programname%'" get /format:list
 
``` 

- __Desinstalar um programa (_`cmd`_)__
```cmd
 REM - Local
 C:\> wmic product where name="XXX": call uninstall /Interactive:Off: unintalss software

 REM - Remoto
 C:\> wmic /node:TargetComputerName product where name="XXX": call uninstall /Interactive:Off
 ```

- __Fazer Download de Arquivo em Linha de Comandos (_`cmd`_)__
```cmd
 REM - Usando o certiutil.exe
 C:\> certutil.exe -urlcache -f http://example.com/arquivo.x NomeDoArquivo.x

 REM - Usando o bitsadmin.exe
 C:\> bitsadmin.exe /transfer downloadfileteste /download /priority normal https://gist.githubusercontent.com/rosswd/cad64650ca1b03bd1789a69edbeb586c/raw/260018b7b17a1fec284bc1c25f817ff332e65560/bitsadmin.md %USERPROFILE%\Desktop\teste.md
```

- __Fazer Upload de Arquivo em Linha de Comandos (_`cmd`_)__
```cmd
 REM - Usando o certiutil.exe
 C:\> CertReq.exe -Post -config http://127.0.0.1/ c:\windows\System32\drivers\etc\hosts
```

- __Reset/Flush DNS (_`cmd`_)__
```cmd
 C:\> ipconfig /flushdns
 C:\> ipconfig /registerdns
 C:\> ipconfig /release 
 C:\> ipconfig /renew
 C:\> netsh winsock reset
 C:\> netsh interface ip delete destinationcache
 
 REM - Obs: O comando /release vai desconectar a rede e o /renew vai reconectar.
```

- __Instalar/Habilitar Telnet (_`cmd`_)__
```cmd
 REM - Cliente
 C:\> pkgmgr /iu:"TelnetClient"

 REM - Servidor
 C:\> pkgmgr usefull /iu :"TellnetServer"
```

- __Listar Network Adapters e seus respectivos MACs (_`cmd`_)__
```cmd
 REM - Caso queira utlizar o Network Adapter no windump.exe ou tshark.exe, substituir '\Device\Tcpip_{card...}' por '\Device\NPF_{card...}' 
 C:\> getmac -v
```

- __Listar comandos executados via Win+R (_`cmd`_)__
```cmd
 C:\> reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
```

- __# Listar com verbosidade todos as tarefas agendadas da maquina (_`cmd`_)__
```cmd
 REM local
 C:\> schtasks /query /v /fo LIST
 REM Remoto
 C:\> schtasks /query /S remote_ip_or_hostname /v /fo LIST
 REM Remover Tarefa Agendada
 C:\> schtasks /delete /tn h2dog /f
```

- __Gerar hashs de arquivo (_`cmd`_)__
```cmd
 REM - Algoritmos de Hash: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512 (Obs: Case Sensitive)
 C:\> certutil -hashfile C:\path\to\file.x MD5
```

- __Verificar configurações de Proxy via registro (_`cmd`_)__
```cmd
 C:\> reg query "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings"
```

- __Visualizar Logs de Acesso UltraVNC (_`cmd`_)__
```cmd
 C:\> type "C:\Program Files (x86)\UltraVNC\mslogon.log"
```

- __Visualizar Logs de Acesso AnyDesk (_`cmd`_)__
```cmd
 REM - Ver Logs de acesso (Usuario Especifico)
 C:\> type C:\Users\teste_user\AppData\Roaming\AnyDesk\ad.trace | findstr "2021-11-18" | findstr /i "External address: Preparing"

 REM - Ver Logs de acesso (Geral)
 C:\> type %programdata%\AnyDesk\ad_svc.trace | findstr "2021-11-18" | findstr /i "External address: Preparing"
```

- __Salvar todos os `.tar.gz` de uma lib do python (_`python`_)__
```python
 C:\> python -m pip download -d dir_to_save packge_name --no-binary :all:
```

- __Executar comando em outro terminal (_`bash`/`python`_)__
```bash
 # Apenas executar  comando
 user@hostname:~$ sudo python3 -c '[__import__("fcntl").ioctl(1, 21522, c) for c in "ls -lha\n"]' > /dev/pts/1
 
 # executar comando para acompanhar o acesso a outro terminal (Requer o binario screen instalado)
 user@hostname:~$ sudo python3 -c '[__import__("fcntl").ioctl(1, 21522, c) for c in "screen -S nome_qlqr && clear\n"]' > /dev/pts/1
 user@hostname:~$ sudo screen -x nome_qqlr 
```

- __Executar comando em outro terminal (_`bash`/`perl`_)__
```perl
 # Apenas executar  comando
 user@hostname:~$ echo -e "cat /etc/passwd\r\n" | sudo perl -e 'ioctl STDOUT, 0x5412, $_ for split //, do{ chomp($_ = <>); $_ }' > /dev/pts/1
```

- __Checar leak de senha (_`bash`_)__
```perl
 # Apenas executar  comando
 user@hostname:~$ read -s -p Senha: senha; senha=$(printf "$senha" | sha1sum | cut -d' ' -f1); curl -k -s https://api.pwnedpasswords.com/range/${senha:0:5} | grep -i ${senha:6:40}
```

- __Verificar se maquina Linux estah no DOMINIO (AD) (_`bash`_)__
```bash
 user@hostname:~$ realm list

 user@hostname:~$ adcli info nome.dominio.com
```

- __Verificar se maquina Linux estah no DOMINIO (AD) (_`bash`_)__
```bash
 # Login SSH on server 172.16.0.180 (SRVMTA01)
 user@hostname:~$ /opt/zimbra/bin/zmprov ga teste.user@email.com.br

```

- __Lista eventos de conexão SMB na maquina (_`powershell`_)__
```powershell
 # SMBClient -> Connectivity
 PS:\> get-winevent -logname Microsoft-Windows-SMBClient/Connectivity |  sort-object timeCreated | select-object *

 # SMBClient -> Connectivity (Filter By IP on Message column)
 PS:\> get-winevent -logname Microsoft-Windows-SMBClient/Connectivity | Where-Object {$_.Message -like "*92.53.96.109*"} |  sort-object timeCreated | select-object * 

 # SMBClient -> Operational
 PS:\> get-winevent -logname Microsoft-Windows-SMBClient/Operational |  sort-object timeCreated | select-object *
 
 # SMBClient -> Security
 PS:\> get-winevent -logname Microsoft-Windows-SMBClient/Security |  sort-object timeCreated | select-object *

 # SMBServer -> Connectivity
 PS:\> get-winevent -logname Microsoft-Windows-SMBServer/Connectivity |  sort-object timeCreated | select-object *

 # SMBServer -> Operational
 PS:\> get-winevent -logname Microsoft-Windows-SMBServer/Operational |  sort-object timeCreated | select-object *
 
 # SMBServer -> Security
 PS:\> get-winevent -logname Microsoft-Windows-SMBServer/Security |  sort-object timeCreated | select-object *

```

- __Listar Conexoes SMB (_`powershell`/`cmd`_)__
```powershell
 
 PS:\> Get-SmbConnection   #Lista as Conexoes de Saida da maquina
 PS:\> Get-SmbSession      #Lista as Conexoes de Entrada na maquina
 PS:\> Get-OpenFiles       #Lista todas as pastas/arquivos sendo acessados na maquina (Entrada)

 PS:\> Close-SmbSession  -SessionId 1725436002409  #Fecha uma conexao de entrada na maquina pelo ID da sessao (Get-SmbSession)
 PS:\> Close-SmbOpenFile -FileId 16143250013       #Fecha um arquivo aberto na maquina pelo ID (Get-OpenFiles)
 PS:\> Remove-SmbMapping -LocalPath /path/aqui     #Remove um mapeamento

 C:\> openfiles /query                     # Lista pastas/arquivos abertos por uma conexao remota via SMB
 C:\> openfiles /Disconnect /A username    # Fecha a conexao com pastas/arquivos abertos por uma conexao remota via SMB
```

- __Listar regras de firewall (_`powershell`_)__
```powershell
 
 PS:\> Show-NetFirewallRule | where {$_.DisplayName -Like "*Test*" -AND $_.Action -eq 'Block' -AND $_.Direction -eq "Inbound"} | select DisplayName
 
 # Exportar pra CSV
 PS:\> (New-object –comObject HNetCfg.FwPolicy2).Rules | export-csv fwl_rules_IP.csv

```

- __Ativar o NetFramework v3.5 utilizando uma iso montada ou pendrive bootavel do windows (_`cmd`_)__
```cmd
 C:\> dism /online /enable-feature /featurename:NetFx3 /All /Source:x:\sources\sxs /LimitAccess
```

- __Bypass Erro: '_`no matching key exchange method/type found`_' on SSH connection (_`Bash`_)__
```bash
 # Caso de Erro (method):
 # user@hostname:~/$ ssh admin@172.16.0.120
 # Unable to negotiate with 172.16.0.120 port 22: no matching key exchange method found. Their offer: diffie-hellman-group1-sha1 
 # user@hostname:~/$ ssh admin@172.16.0.120 -oKexAlgorithms=diffie-hellman-group1-sha1
 # Unable to negotiate with 172.16.0.120 port 22: no matching cipher found. Their offer: aes128-cbc,blowfish-cbc,twofish-cbc,3des-cbc

 user@hostname:~/$ ssh admin@172.16.0.120 -oKexAlgorithms=diffie-hellman-group1-sha1 -c aes128-cbc #solucao

 # Caso de Erro (type):
 # user@hostname:~/$ ssh admin@172.16.0.46
 # Unable to negotiate with 172.16.0.46 port 22: no matching host key type found. Their offer: ssh-dss

 user@hostname:~/$ ssh admin@172.16.0.46 -oHostKeyAlgorithms=+ssh-dss #solucao
```

- __Decrypt UltraVNC Password (_`Bash`_)__
```bash
 echo -n D31CB1830A3F935251 | xxd -r -p | openssl enc -des-cbc --nopad --nosalt -K e84ad660c4721ae0 -iv 0000000000000000 -d | hexdump -Cv
```

- __Hidden TTY on SSH session (_`Bash`_)__
```bash
 serti@kali> ssh -o UserKnownHostsFile=/dev/null -T serti@10.10.64.230 "bash -i"

# Para ver sessoes ocultas/sem TTY, basta usar os comandos
 serti@kali> loginctl                          # litar sessoes
 serti@kali> loginctl show-session  [SESSID]   # listar informacoes da sessao 
```

- __Compress Text from PIPE (_`Bash`_)__
```bash
 echo TextToCompress | gzip -cf | base64 -w0
```

- __Compartilhar um conteudo em texto no site `termbin.com` (_`Bash`_)__
```bash
 echo teste | nc termbin.com 9999
 # O comando acima ira gerar um link acessivel na internet conteudo o conteudo pipeado
 # Ex: https://termbin.com/46hq 
```

- __Monitorar pacotes direto no Firewall (_`CLI - Fortigate`_)__
```bash
 # Syntax:
 #     diagnose sniffer packet <interface> <filter> <verbose> <count> <Timestamp format>
 FGT1KD_01_SEDE $ diagnose sniffer packet any 'udp and src host 172.16.0.136 and dst host 172.16.32.68 and dst port 514' 6
```

- __Filtrar pacotes direto no Firewall via TTL (_`CLI - Fortigate`_)__
```bash
 FGT1KD_01_SEDE $ diagnose sniffer packet any 'udp and port 514 and src host 172.16.0 and ip[8]>126 and ip[8]<129'
```

- __Usar Socat para Redirecionar porta no Linux (_`Bash`_)__
```bash
 sudo socat TCP-LISTEN:8080,fork,reuseaddr TCP:172.16.0.105:3389
```

- __Filtrar icmp-IPV6 com base no TTL (_`Bash`_)__
```bash
 # Windows
 sudo tcpdump -i any 'icmp6 && (ip6[7] >=124 and ip6[7] <=128)'
 # Linux
 sudo tcpdump -i any 'icmp6 && (ip6[7] >=60 and ip6[7] <=64)'
```

- __Descoberta de Host IPV6 com Nmap (_`Bash`_)__
```bash
 nmap -6 --script=targets-ipv6-multicast-*
```

- __Sniff credenciais do SSHD proccess no Linux (_`Bash`_)__
```bash
 sudo strace -t -e read,write,openat -f -p $(pgrep sshd | head -n1) 2>&1 | grep -v "~/.profile" | grep --line-buffered -F -e 'write(5, "\0\0\0\7' -e '\f\0\0\0' -e '.profile'
```

- __Executar comando usando WMIClass (_`Powershell`_)__
```powershell
# Local
([WmiClass]"\\.\root\cimv2:Win32_Process").Create("notepad.exe")
[activator]::CreateInstance([type]::GetTypeFromProgID("MMC20.Application")).Document.ActiveView.ExecuteShellCommand("notepad.exe",$null,$null,"7")
[activator]::CreateInstance([type]::GetTypeFromCLSID("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}")).Item().Document.Application.ShellExecute("notepad.exe",$null,$null,$null,"4")
# Remoto
([WmiClass]"\\192.168.1.2\root\cimv2:Win32_Process").Create("notepad.exe")
[activator]::CreateInstance([type]::GetTypeFromProgID("MMC20.Application","172.16.200.100")).Document.ActiveView.ExecuteShellCommand("notepad.exe",$null,$null,"7")
[activator]::CreateInstance([type]::GetTypeFromCLSID("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}","172.16.200.100")).Item().Document.Application.ShellExecute("notepad.exe",$null,$null,$null,"4")
```

- __Baseado em uma lista, Remover Programas usando o `Winget`  (_`Powershell`_)__
```powershell
type .\uninstall.txt | %{echo "[>] Unisntalling $_ :";winget rm --id "$_" --disable-interactivity --accept-source-agreements --force}
```

- __Listar soluções de AntiVirus Instalada (_`Powershell`_)__
```powershell
Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct -ErrorAction SilentlyContinue | Select-Object -Property displayName,instanceGuid,pathToSignedProductExe,pathToSignedReportingEx,productState,timestamp
```


- __Copias de Sombra no Windows  (_`Powershell`/`cmd`_)__
```powershell
# Lista copias de sombras disponiveis
vssadmin list shadows
# Acessar arquivos na copia de sombra (Exemplo)
mklink /d Nome_da_Pasta_de_Destino \?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1
# Remover pasta montada com a copia de sombra
rmdir Nome_da_Pasta_de_Destino
# Remover copia de sombra (Via ShadowID)
vssadmin delete shadow /shadow={44f95267-f951-4770-90f1-5746e7b2cb22}
# Crear copia de sombra (Via DiscName)
([WMICLASS]"root\cimv2:win32_shadowcopy").create("C:\", "ClientAccessible")
```

- __Listar eventos de Reboot (_`Powershell`_)__
```powershell
Get-EventLog System -Newest 10000 |  Where EventId -in 41,1074,1076,6005,6006,6008,6009,6013 |  Format-Table TimeGenerated,EventId,UserName,Message -AutoSize -wrap
```

- __Forcar o update e execução de scripts de GPO (_`cmd`_)__
```powershell
gpupdate /force && gpscript.exe /startup && gpscript.exe /Logon
```

- __Proteger Servico (_`cmd`_)__
```powershell
# Proteger Servico
sc sdset "TesteSvc" D:(D;;DCLCWPDTSD;;;IU)(D;;DCLCWPDTSD;;;SU)(D;;DCLCWPDTSD;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)

# Desproteger servico
sc sdset "TesteSvc" D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)
```

- __Listar Servicos com PIPES NOMEADOS (_`cmd`_)__
```powershell
FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 10.10.64.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && for /F "tokens=1,2" %A in ('"sc \\10.10.64.%i query state= all| findstr "SERVICE_NAME NOME_DO_SERV""') DO @(
echo 10.10.64.%i: %B && sc \\10.10.64.%i qtriggerinfo "%B") | grep -E --color "10.10.64.%i:|DADOS|EVENTO DE REDE|NETWORK EVENT" | grep -E --color "NOMEADO|NAMED" -C1)
```

- __Listar Possiveis configurações incorretas de permissao na pasta de NETLOGON (_`cmd`_)__
```powershell
dir /S /Q \\mydomain.local\NETLOGON | findstr /R "DIR ^[0-9] Pasta Folder" | findstr /i /v "BUILTIN\Administra"
```

- __Consultar *MTU* das interfaces de rede (_`cmd`_)__
```powershell
# Consultar
netsh interface ipv4 show subinterfaces
# Mudar
netsh int ipv4 set subinterface "NOME_DA_INTERFACE" mtu=tamanho MTU store=persistent
```

- __Testar *MTU* (_`cmd`_)__
```powershell
# Para testar o MTU de uma interface, lembrando de subtrair 28 ao MTU que deseja testar (altere as partes em cinza conforme necessidade)
# Por exemplo, para testar o MTU de 1500 utilize o comando ping IP_DESTINO -f -l 1472
ping IP_DESTINO -f -l tamanho MTU
```

- __Identificar usuario pelo SID (_`Powershell`_)__
```powershell
Get-ADUser -Filter * | Where-Object -Property SID -like "S-1-5-21-35927030-1094727795-1882987033-6186" | Select-Object -Property *
```

- __Verificar propriedades do BitLocker (_`Powershell`_)__
```powershell
Get-BitLockerVolume | Select-Object -Property *
```

- __Listar Conexoes por processo (_`Bash`_)__
```bash
ps aux | while read a b c d e f g h i j k l;do if [[ $(lsof -w -R -i -a -p $b 2>/dev/null | wc -l) -gt 0 ]];then printf "\n%-12s | %-9s | %-100s | %s\n" "$a" "$b" "$k" "$(lsof -w -R -i -a -p $b 2>/dev/null | wc -l)" && lsof -w -R -i -a -p $b 2>/dev/null | cat -n ;fi;done
```

- __Verificar vazamento de senha (_`Bash`_)__
```bash
#!/bin/sh

read -s -p "Senha:" senha
senha=$(printf "$senha" | sha1sum | cut -d' ' -f1)
printf "\rHASH -> %s\n" "$(curl -k -s https://api.pwnedpasswords.com/range/${senha:0:5} | grep -i ${senha:6:40})"
``` 

- __Verificar arquivos ocultos (RootKit) (_`Bash`_)__
```bash
#!/bin/bash

if [ $# -eq 0 ]; then
        >&2 echo "Usage: $0 <folder_name>"
        exit 1
else
        LGRAY='\e[90m'
        LGREE='\e[92m'
        LCYAN='\e[96m'
        RESET='\e[0m'
        DISC=$(df -T | grep -E '/$' | cut -d' ' -f 1)
        find $1 -type d -not -path "/proc/*" 2>/dev/null | while read d
        do
                printf "$LGRAY\r%-80s$RESET" "$d"
                debugfs $DISC -R "ls -l $d" 2>/dev/null | while read a b c d e f g h i;do echo $i;done | egrep -v "^$|^file(A|B)$" | sort > fileA
                ls -Lha $d 2>/dev/null | sort | egrep -v "^$|^file(A|B)$" > fileB
                diff -u fileA fileB 2>/dev/null | grep -v '\-\-\-' | grep -E "^\-" | egrep -v '\-$' | while read f
                do
                        printf "$LGREE\r%-80s$RESET | $LCYAN%-40s$RESET \n" "$d" "$(echo $f | sed '0,/\-/s/\-//')"
                done
        done

        printf "\n"
        rm fileA fileB
fi
```

#