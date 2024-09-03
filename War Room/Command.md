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

> "Este guia oferece uma coleção de comandos essenciais que um analista de segurança da informação pode usar no dia a dia. Eles cobrem diversas áreas, como monitoramento de redes, gerenciamento de usuários e análise de logs. O objetivo é fornecer uma referência rápida para tarefas rotineiras e resolução de problemas, ajudando a aumentar a eficiência e a precisão na sua função."

## ⚠️ Lista de Comandos

### 1. **Scan de Rede com ICMP usando PowerShell**
  - **Descrição:** Verifica a conectividade de todos os endereços IP em uma sub-rede.

  ```
  FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL)
  ```

### 2. **Ping para Verificar Conectividade**
  - **Descrição:** Testa a conectividade com um host específico.

  ```
  ping 1.1.1.1
  ```

### 3. **Consulta DNS com Nslookup**
  - **Descrição:** Resolve um endereço IP para seu nome de domínio associado.

  ```
  nslookup 1.1.1.1
  ```

### 4. **Consulta de Usuários em um Servidor Remoto**
  - **Descrição:** Lista os usuários conectados a um servidor específico.

  ```
  query user /server:<Endereço do Servidor>
  ```

### 5. **Consulta de Contas de Usuário com WMI**
  - **Descrição:** Verifica contas de usuário locais em uma máquina remota.

  ```
  wmic /node:SRVPRN useraccount where "localaccount=true" get name,sid,disabled
  ```

### 6. **Busca de Usuário no Active Directory**
  - **Descrição:** Localiza um usuário no Active Directory pelo SAMID.

  ```
  dsquery user -samid 216265
  ```

### 7. **Verificação do Status de Serviço com SC**
  - **Descrição:** Consulta o status de um serviço em um servidor remoto.

  ```
  sc \\172.16.0.17 query WinCollect
  ```

### 8. **Teste de Conectividade de Porta com PowerShell**
  - **Descrição:** Testa a conectividade com uma porta específica em um host remoto.

  ```
  Test-NetConnection -ComputerName 172.16.0.21 -Port 445
  ```

### 9. **Listagem de Processos em Máquina Remota**
  - **Descrição:** Lista processos em execução em uma máquina remota e filtra resultados por um termo específico.

  ```
  tasklist /S:172.16.0.137 /V | findstr /i mesh
  ```

### 10. **Listagem de Diretórios Remotos**
  - **Descrição:** Exibe o conteúdo de um diretório em um compartilhamento de rede.

  ```
  dir \\172.16.0.21\C$
  ```

### 11. **Execução de Comandos Remotos com PsExec**
  - **Descrição:** Executa comandos em um computador remoto usando PsExec.

  ```
  psexec \\172.16.0.21 cmd
  ```

### 12. **Busca de Texto em Arquivos com grep**
  - **Descrição:** Busca por um termo específico em arquivos de configuração do OSSEC.

  ```
  grep -r "92200" /var/ossec/ruleset/rules/*.xml
  ```

### 13. **Scan de Usuários Logados na Rede**
  - **Descrição:** Verifica quais máquinas na sub-rede possuem usuários logados.

  ```
  FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && echo Address: 172.16.0.%i && query user /server:172.16.0.%i 2>NUL)
  ```

### 14. **Listagem de Pastas de Usuários em Máquinas Remotas**
  - **Descrição:** Lista pastas de usuários em máquinas remotas na sub-rede, ordenadas por data de acesso.

  ```
  1..254 | %{if (ping -n 1 -w 1 172.16.0.$_ | findstr /i "TTL=12") { gci \\172.16.0.$_\C$\Users | Select-Object -Property Name,FullName,Attributes,CreationTime,LastAccessTime,LastWriteTime | Sort-Object -Property LastAccessTime,LastWriteTime -Descending | FT -AutoSize -Wrap -Force }}
  ```

### 15. **Busca por Pastas Compartilhadas na Rede**
  - **Descrição:** Scaneia a rede em busca de pastas compartilhadas.

  ```
  netexec smb -t 600 172.16.0.0/16 -u "" -p "" --shares 2>NUL >> rede_172.16.0.0-16.md
  ```

### 16. **Listagem de Produtos Instalados com WMI**
  - **Descrição:** Lista os produtos instalados em uma máquina usando WMI.

  ```
  get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
  ```

### 17. **Desinstalação de Produto com MSIExec**
  - **Descrição:** Remove um produto instalado usando MSIExec.

  ```
  msiexec /x {} /qn
  ```

### 18. **Listar Sessões de Usuários Locais**
  - **Descrição:** Lista todas as sessões de usuários em uma máquina local.

  ```
  query session
  ```

### 19. **Listar Tarefas de Usuários Específicos**
  - **Descrição:** Exibe as tarefas em execução para um usuário específico.

  ```
  tasklist /V | findstr <Nome do Usuario do Domínio>
  ```

### 20. **Consultar Status de Serviço em Máquina Remota**
  - **Descrição:** Consulta o status de um serviço específico em uma máquina remota.

  ```
  Get-Service -Name "*" -ComputerName "<Endereço do Servidor>" | grep Loqed
  ```
### 21. **Iniciar Serviço em Máquina Remota**
  - **Descrição:** Força a inicialização de um processo em uma máquina remota.

  ```
  PS> Invoke-Command -ComputerName <Endereço de Servidor> -ScriptBlock { Start-Service -Name $args[0] } -ArgumentList LoqedWd
  ```

### 22. **Redirecionar Porta para IP Remoto ou Local (_`cmd`_)**
  - **Descrição:** Configura o redirecionamento de porta para um IP remoto ou local.

  ```
  # Adicionar
  C:\> netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=445 connectaddress=192.168.0.3 connectport=445
  # Remover
  C:\> netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=445

  # OBS: O comando acima apenas cria o redirecionamento de porta. Caso seja necessário liberar via Firewall (Local), use o seguinte comando:
  C:\> netsh advfirewall firewall add rule name="Port Forwarding" protocol=TCP dir=in localport=<listen_port> action=allow
  ```

### 23. **Deletar Arquivos Temporários de Internet (_`cmd`_)**
  - **Descrição:** Remove arquivos temporários da internet.

  ```
  C:\> RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
  ```

### 24. **Deletar Cookies de Internet (_`cmd`_)**
  - **Descrição:** Remove cookies armazenados.

  ```
  C:\> RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
  ```

### 25. **Deletar Histórico de Internet (_`cmd`_)**
  - **Descrição:** Remove o histórico de navegação.

  ```
  C:\> RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
  ```

### 26. **Deletar Dados de Formularios de Internet (_`cmd`_)**
  - **Descrição:** Remove os dados dos formulários preenchidos.

  ```
  C:\> RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
  ```

### 27. **Deletar Senhas de Páginas da Internet (_`cmd`_)**
  - **Descrição:** Remove senhas armazenadas de páginas da internet.

  ```
  C:\> RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
  ```

### 28. **Lista Todos os Usuários no Domínio (_`cmd`_)**
  - **Descrição:** Lista todas as contas de usuário no domínio.

  ```
  C:\> wmic useraccount list full
  ```

### 29. **Lista Informações de um Usuário (_`cmd`_)**
  - **Descrição:** Exibe informações detalhadas sobre um usuário específico.

  ```
  C:\> net user nome_do_usuario /domain
  ```

### 30. **Lista Informações de um Usuário (_`powershell`_)**
  - **Descrição:** Exibe informações detalhadas sobre um usuário específico no Active Directory.

  ```
  PS> Get-ADUser -Filter 'samAccountName -like "JaneDoe"' | Select-Object -Property *
  ```

### 40. **Listar Tentativas de Conexão RDP (_`powershell`_)**
  - **Descrição:** Lista as tentativas de conexão RDP registradas.

  ```
  PS:\> $EventData = Foreach ($event in $xml.Event){ New-Object PSObject -Property @{ TimeCreated = (Get-Date ($event.System.TimeCreated.SystemTime) -Format 'yyyy-MM-dd hh:mm:ss K'); User = $event.UserData.EventXML.Param1; Domain = $event.UserData.EventXML.Param2; Client = $event.UserData.EventXML.Param3; }} $EventData | FT
  ```

### 41. **Kill Remote Session (conn) em um Host Remoto (_`cmd`_)**
  - **Descrição:** Finaliza uma sessão remota em um host remoto.

  ```
  C:\> rwinsta /server:hostname_or_ip Session_ID
  ```

### 42. **Force Logoff to Remote Session (conn, disc) em um Host Remoto (_`cmd`_)**
  - **Descrição:** Força o logoff de uma sessão remota. Pode ser usado em toda uma rede com base no nome de usuário.

  ```
  # Em um único target
  C:\> logoff SessionID /server:hostname_or_ip
  # Em toda uma rede e baseado no nome de usuário
  FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && echo Address: 172.16.0.%i && @(for /F "tokens=1,2" %A in ('"query session /server:172.16.0.%i 2>NUL | findstr "cyberark-domicio" 2>NUL"') DO (logoff %B /server:172.16.0.%i)))
  ```

### 43. **Listar Todos os Serviços na Máquina (Verboso) (_`cmd`_)**
  - **Descrição:** Lista todos os serviços na máquina com detalhes.

  ```
  C:\> for /F "tokens=1,2" %A in ('"sc \\localhost query | findstr "SERVICE_NAME NOME_DO_SERV""') DO (sc \\localhost qc %B)
  ```

### 44. **Forçar o Logoff em Todas as Sessões (Disc) em um Host Remoto (_`cmd`_)**
  - **Descrição:** Força o logoff de todas as sessões desconectadas em um host remoto.

  ```
  C:\> for /F "tokens=1,2" %A in ('"query session /server:hostname_or_ip | findstr "Disco" | findstr /V "service,console" "') DO (logoff %B /server:hostname_or_ip)
  ```

### 45. **Fazer o Dump da Memória de um Processo (_`cmd`_)**
  - **Descrição:** Cria um dump da memória de um processo específico.

  ```
  C:\> rundll32 C:\windows\System32\comsvcs.dll, MiniDump PID_Do_Processo C:\nome_do_arquivo.dmp full
  ```

### 46. **Enviar Comando (_message_) para um `Named Pipe` (_`powershell`_)**
  - **Descrição:** Envia uma mensagem para um named pipe, local ou remoto.

  ```
  <#
  .Synopsis
      Sends a message of a named pipe.
  .DESCRIPTION
      Sends a message of a named pipe. This named pipe can exist locally or on a remote machine. By default,
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

### 47. **Mostrar/Exportar Credenciais Salvas (_`cmd`_)**
  - **Descrição:** Exibe a janela de gerenciamento de credenciais salvas.

  ```
  C:\> rundll32 keymgr.dll, KRShowKeyMgr
  ```

### 48. **Listar e Ler Logs de Eventos (_`cmd`_)**
  - **Descrição:** Lista e lê logs de eventos disponíveis no sistema.

  ```
  REM - Listar arquivos de logs disponíveis
  C:\> wevtutil le

  REM - Ler os dados de um arquivo de log
  C:\> wevtutil qe Security
  ```

### 49. **Buscar Palavra-Chave em Todos os Logs de Eventos do Windows (_`powershell`_) - 1**
  - **Descrição:** Realiza uma busca por uma palavra-chave em logs de eventos do Windows.

  ```
  # Exemplo de busca pela palavra "*PSEXE*" na propriedade $_.Message nos últimos (-10) dias do System log 
  PS:\> Get-Eventlog -LogName System -After (Get-date).AddDays(-1) | Where-Object {$_.Message -like "*PSEXE*"} | Select-Object -Property *

  # Exemplo de busca pela palavra "*PSEXE*" na propriedade $_.Message nos últimos (-10) dias em todos os logs
  PS:\> Get-EventLog -List | select log | ForEach-Object { $ErrorActionPreference = "SilentlyContinue"; Write-Host "LogName: $($_.Log)"; Get-Eventlog -LogName $_.Log -After (Get-date).AddDays(-10)} | Where-Object {$_.Message -like "*cmd.exe*"} | Select-Object -Property *
  ```

### 50. **Buscar `Palavra Chave` em Todos os Logs e Eventos do Windows (.evtx) (_`powershell`_) - 2**
  - **Descrição:** Busca por uma palavra-chave em todos os logs de eventos do Windows.

  ```
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

### 51. **Lista Erros de Logon na Máquina (_`powershell`_)**
  - **Descrição:** Lista os erros de logon nos últimos 2 dias.

  ```
  # Exemplo de busca nos últimos (-2) dias 
  PS:\> Get-Eventlog -LogName security -After  (Get-date).AddDays(-2) | Where-Object {$_.EventID -eq 4625} | Select-Object -Property *
  ```

### 52. **Listar Usuários com Senhas Salvas (_`powershell`_)**
  - **Descrição:** Lista os usuários com senhas salvas e converte a senha de Decimal para ASCII.

  ```
  PS:\> Get-ADUser -Filter {(userPassword -ne "$NULL") -OR (unixUserPassword -ne "$NULL")} -Properties UserPrincipalName,userPassword,unixUserPassword
  # Obs: A senha é armazenada em formato Decimal e portanto precisa ser convertida para ASCII.
  # Use o comando de exemplo abaixo para converter:
  PS:\> [char[]]@(99,64,103,101,99,101,49,50,51) -join ''
  ```

### 53. **Alterar Senha de Usuário (_`powershell`_)**
  - **Descrição:** Altera a senha de um usuário usando dois métodos diferentes.

  ```
  # Método 1
  PS:\> ([ADSI]'WinNT://172.16.0.112/matricula_do_usuario').ChangePassword("senha_antiga", "senha_nova")
  # Método 2
  PS:\> Set-AdAccountPassword -Identity matricula_do_usuario -OldPassword (Read-Host -asSecureString "Enter the current password") -NewPassword (Read-Host -asSecureString "Enter the new password")
  ```

### 54. **Lista Programas Instalados em uma Máquina (_`powershell`_)**
  - **Descrição:** Lista todos os programas instalados na máquina local e remota.

  ```
  # Lista na máquina local
  PS:\> Get-WmiObject -Class Win32_Product

  # Lista usando um filtro por Nome do Programa
  PS:\> Get-WmiObject -Class Win32_Product | where { $_.Name -like "*Python*" }
  
  # Lista todos programas na máquina remota
  PS:\> Get-WmiObject -Class Win32_Product -ComputerName $ip_do_host_remoto
  ```

### 55. **Mostrar Explicação de um Erro de Execução no Windows Baseado no Código do Erro (_`cmd`_)**
  - **Descrição:** Mostra a explicação de um código de erro específico.

  ```
  C:\> NET HELPMSG $CodigoDoErro
  ```

### 56. **Lista as Configurações de Auditoria na Máquina (_`cmd`_)**
  - **Descrição:** Obtém e configura as políticas de auditoria no Windows.

  ```
  # Obtém a configuração de política de auditoria do sistema.
  C:\> auditpol /get /category:"*"
  C:\> auditpol /list /subcategory:* /r

  # Configura eventos de logon para capturar atividades de sucesso/falha.
  C:\> auditpol /set /subcategory:"Logon" /success:enable /failure:enable
  ```

### 57. **Listar Últimas Atualizações Instaladas (_`cmd`_)**
  - **Descrição:** Lista as atualizações instaladas e desinstala uma atualização específica.

  ```
  REM - Listar atualizações
  C:\> wmic qfe list

  REM - Desinstalar uma atualização
  C:\> wusa /uninstall /kb:Numero_do_kb
  ```

### 58. **Listar Atualizações Pendentes (_`powershell`_)**
  - **Descrição:** Lista atualizações pendentes no sistema.

  ```
  C:\> (((New-Object -ComObject Microsoft.Update.Session).CreateUpdateSearcher()).Search('IsInstalled=0').updates) | Out-GridView
  ```

### 59. **Atualizar e Listar Políticas de Grupo - GPO (_`cmd`_)**
  - **Descrição:** Atualiza e lista as políticas de grupo.

  ```
  REM - Atualiza
  C:\> gpupdate /force

  REM - Lista informações de GPO da máquina
  C:\> gpresult /R
  ```

### 60. **Copiar Arquivo Bloqueado (Locked) pelo Sistema (_`cmd`_)**
  - **Descrição:** Copia um arquivo bloqueado usando o utilitário `esentutl`.

  ```
  C:\WINDOWS\system32\esentutl.exe /y <SOURCE> /vss /d <DEST>
  ```

### 61. **Ativar Serviço Sem Permissão de Administrador (_`cmd`_)**
  - **Descrição:** Ativa um serviço sem permissões administrativas usando Named Pipe.

  ```
  # Lista os dados do serviço para saber se ele permite ativação via Named PIPE
  C:\> sc qtriggerinfo RemoteRegistry
  # Ativa o Serviço usando o valor de DATA como Nome do PIPE
  echo start > \\.\pipe\winreg
  ```

### 62. **Consultar Registros Remotos (_`cmd`_)**
  - **Descrição:** Consulta e lista informações de registro remoto.

  ```
  REM - Habilita a consulta de registro remoto
  C:\> sc \\RemoteComputer config remoteregistry start=auto

  REM - Lista informações de uma classe de registro
  C:\> reg query \\RemoteComputer\HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest

  REM - Lista informações das chaves contidas em uma classe de registro
  C:\> reg query \\RemoteComputer\HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /S

  REM - Desabilita a consulta de registro remoto
  C:\> sc \\RemoteComputer config remoteregistry start=disabled
  ```

### 63. **Listar Nome dos Dispositivos `USB` Conectados à Máquina (_`cmd`_)**
  - **Descrição:** Lista os dispositivos USB conectados à máquina.

  ```
  REM - Habilita a consulta de registro remoto
  C:\> sc \\RemoteComputer config remoteregistry start=auto

  C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB /s | findstr /I "FriendlyName"

  C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBSTOR /s | findstr /I "DiskId FriendlyName"

  C:\> reg query HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\SWD\WPDBUSENUM\ /s | findstr /I "FriendlyName ContainerID"

  REM - Desabilita a consulta de registro remoto
  C:\> sc \\RemoteComputer config remoteregistry start=disabled
  ```

### 64. **Listar Programas Instalados na Máquina (_`cmd`_)**
  - **Descrição:** Lista os programas instalados na máquina local e remota.

  ```
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

### 65. **Desinstalar um Programa (_`cmd`_)**
  - **Descrição:** Desinstala um programa específico localmente ou remotamente.

  ```
  REM - Local
  C:\> wmic product where name="XXX": call uninstall /Interactive:Off: unintalss software

  REM - Remoto
  C:\> wmic /node:TargetComputerName product where name="XXX": call uninstall /Interactive:Off
  ```

### 66. **Fazer Download de Arquivo em Linha de Comandos (_`cmd`_)**
  - **Descrição:** Faz o download de um arquivo usando `certutil.exe` ou `bitsadmin.exe`.

  ```
  REM - Usando o certutil.exe
  C:\> certutil.exe -urlcache -f http://example.com/arquivo.x NomeDoArquivo.x

  REM - Usando o bitsadmin.exe
  C:\> bitsadmin.exe /transfer downloadfileteste /download /priority normal https://gist.githubusercontent.com/rosswd/cad64650ca1b03bd1789a69edbeb586c/raw/260018b7b17a1fec284bc1c25f817ff332e65560/bitsadmin.md %USERPROFILE%\Desktop\teste.md
  ```

### 67. **Fazer Upload de Arquivo em Linha de Comandos (_`cmd`_)**
  - **Descrição:** Faz o upload de um arquivo usando `certreq.exe`.

  ```
  REM - Usando o certutil.exe
  C:\> CertReq.exe -Post -config http://127.0.0.1/ c:\windows\System32\drivers\etc\hosts
  ```

### 68. **Reset/Flush DNS (_`cmd`_)**
  - **Descrição:** Reseta e atualiza as configurações de DNS.

  ```
  C:\> ipconfig /flushdns
  C:\> ipconfig /registerdns
  C:\> ipconfig /release 
  C:\> ipconfig /renew
  C:\> netsh winsock reset
  C:\> netsh interface ip delete destinationcache
  
  REM - Obs: O comando /release vai desconectar a rede e o /renew vai reconectar.
  ```

### 69. **Instalar/Habilitar Telnet (_`cmd`_)**
  - **Descrição:** Instala o cliente e servidor Telnet.

  ```
  REM - Cliente
  C:\> pkgmgr /iu:"TelnetClient"

  REM - Servidor
  C:\> pkgmgr usefull /iu :"TellnetServer"
  ```

### 70. **Listar Network Adapters e seus Respectivos MACs (_`cmd`_)**
  - **Descrição:** Lista os adaptadores de rede e seus MACs.

  ```
  REM - Caso queira utilizar o Network Adapter no windump.exe ou tshark.exe, substituir '\Device\Tcpip_{card...}' por '\Device\NPF_{card...}' 
  C:\> getmac -v
  ```

### 71. **Listar Comandos Executados via Win+R (_`cmd`_)**
  - **Descrição:** Lista os comandos executados via diálogo de execução (Win+R).

  ```
  C:\> reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
  ```

### 72. **Listar com Verbosidade Todas as Tarefas Agendadas da Máquina (_`cmd`_)**
  - **Descrição:** Lista todas as tarefas agendadas com detalhes, localmente ou remotamente.

  ```
  REM local
  C:\> schtasks /query /v /fo LIST
  
  REM Remoto
  C:\> schtasks /query /S remote_ip_or_hostname /v /fo LIST
  
  REM Remover Tarefa Agendada
  C:\> schtasks /delete /tn h2dog /f
  ```

### 73. **Gerar Hashes de Arquivo (_`cmd`_)**
  - **Descrição:** Gera hashes de arquivos usando diferentes algoritmos.

  ```
  REM - Algoritmos de Hash: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512 (Obs: Case Sensitive)
  C:\> certutil -hashfile C:\path\to\file.x MD5
  ```

### 74. **Verificar Configurações de Proxy via Registro (_`cmd`_)**
  - **Descrição:** Verifica as configurações de proxy no registro do Windows.

  ```
  C:\> reg query "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings"
  ```

### 75. **Visualizar Logs de Acesso UltraVNC (_`cmd`_)**
  - **Descrição:** Visualiza os logs de acesso do UltraVNC.

  ```
  C:\> type "C:\Program Files (x86)\UltraVNC\mslogon.log"
  ```

### 76. **Visualizar Logs de Acesso AnyDesk (_`cmd`_)**
  - **Descrição:** Visualiza os logs de acesso do AnyDesk, específico e geral.

  ```
  REM - Ver Logs de acesso (Usuário Específico)
  C:\> type C:\Users\teste_user\AppData\Roaming\AnyDesk\ad.trace | findstr "2021-11-18" | findstr /i "External address: Preparing"

  REM - Ver Logs de acesso (Geral)
  C:\> type %programdata%\AnyDesk\ad_svc.trace | findstr "2021-11-18" | findstr /i "External address: Preparing"
  ```

### 77. **Salvar Todos os `.tar.gz` de uma Lib do Python (_`python`_)**
  - **Descrição:** Faz o download de arquivos `.tar.gz` de uma lib do Python.

  ```
  C:\> python -m pip download -d dir_to_save packge_name --no-binary :all:
  ```

### 78. **Executar Comando em Outro Terminal (_`bash`/`python`_)**
  - **Descrição:** Executa comandos em outro terminal ou acompanha o acesso a outro terminal.

  ```
  # Apenas executar comando
  user@hostname:~$ sudo python3 -c '[__import__("fcntl").ioctl(1, 21522, c) for c in "ls -lha\n"]' > /dev/pts/1
  
  # Executar comando para acompanhar o acesso a outro terminal (Requer o binário screen instalado)
  user@hostname:~$ sudo python3 -c '[__import__("fcntl").ioctl(1, 21522, c) for c in "screen -S nome_qlqr && clear\n"]' > /dev/pts/1
  user@hostname:~$ sudo screen -x nome_qqlr 
  ```

### 79. **Executar Comando em Outro Terminal (_`bash`/`perl`_)**
  - **Descrição:** Executa um comando em outro terminal usando Perl.

  ```
  # Apenas executar comando
  user@hostname:~$ echo -e "cat /etc/passwd\r\n" | sudo perl -e 'ioctl STDOUT, 0x5412, $_ for split //, do{ chomp($_ = <>); $_ }' > /dev/pts/1
  ```

### 80. **Checar Leak de Senha (_`bash`_)**
  - **Descrição:** Verifica se uma senha está comprometida em um banco de dados de vazamentos.

  ```
  # Apenas executar comando
  user@hostname:~$ read -s -p Senha: senha; senha=$(printf "$senha" | sha1sum | cut -d' ' -f1); curl -k -s https://api.pwnedpasswords.com/range/${senha:0:5} | grep -i ${senha:6:40}
  ```

### 81. **Verificar se Máquina Linux Está no DOMÍNIO (AD) (_`bash`_)**
  - **Descrição:** Verifica se uma máquina Linux está integrada a um domínio Active Directory.

  ```
  user@hostname:~$ realm list

  user@hostname:~$ adcli info nome.dominio.com
  ```

### 82. **Verificar se Máquina Linux Está no DOMÍNIO (AD) (_`bash`_)**
  - **Descrição:** Verifica informações sobre um usuário específico em um domínio AD.

  ```
  # Login SSH no servidor 172.16.0.180 (SRVMTA01)
  user@hostname:~$ /opt/zimbra/bin/zmprov ga teste.user@email.com.br
  ```

### 83. **Lista Eventos de Conexão SMB na Máquina (_`powershell`_)**
  - **Descrição:** Lista eventos relacionados a conexões SMB, tanto de cliente quanto de servidor.

  ```
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

### 84. **Listar Conexões SMB (_`powershell`/`cmd`_)**
  - **Descrição:** Lista conexões SMB ativas e arquivos abertos, e realiza operações de fechamento.

  ```
  PS:\> Get-SmbConnection   # Lista as Conexões de Saída da máquina
  PS:\> Get-SmbSession      # Lista as Conexões de Entrada na máquina
  PS:\> Get-OpenFiles       # Lista todas as pastas/arquivos sendo acessados na máquina (Entrada)

  PS:\> Close-SmbSession  -SessionId 1725436002409  # Fecha uma conexão de entrada na máquina pelo ID da sessão (Get-SmbSession)
  PS:\> Close-SmbOpenFile -FileId 16143250013       # Fecha um arquivo aberto na máquina pelo ID (Get-OpenFiles)
  PS:\> Remove-SmbMapping -LocalPath /path/aqui     # Remove um mapeamento

  C:\> openfiles /query                     # Lista pastas/arquivos abertos por uma conexão remota via SMB
  C:\> openfiles /Disconnect /A username    # Fecha a conexão com pastas/arquivos abertos por uma conexão remota via SMB
  ```

### 85. **Listar Regras de Firewall (_`powershell`_)**
  - **Descrição:** Lista regras de firewall, filtrando por nome e exportando para CSV.

  ```
  PS:\> Show-NetFirewallRule | where {$_.DisplayName -Like "*Test*" -AND $_.Action -eq 'Block' -AND $_.Direction -eq "Inbound"} | select DisplayName
  
  # Exportar para CSV
  PS:\> (New-object –comObject HNetCfg.FwPolicy2).Rules | export-csv fwl_rules_IP.csv
  ```

### 86. **Ativar o NetFramework v3.5 Utilizando uma ISO Montada ou Pendrive Bootável do Windows (_`cmd`_)**
  - **Descrição:** Habilita o .NET Framework 3.5 a partir de uma fonte especificada.

  ```
  C:\> dism /online /enable-feature /featurename:NetFx3 /All /Source:x:\sources\sxs /LimitAccess
  ```

### 87. **Bypass Erro: '_`no matching key exchange method/type found`_' em Conexão SSH (_`bash`_)**
  - **Descrição:** Resolve problemas de negociação de algoritmos durante uma conexão SSH.

  ```
  # Caso de Erro (method):
  # user@hostname:~/$ ssh admin@172.16.0.120
  # Unable to negotiate with 172.16.0.120 port 22: no matching key exchange method found. Their offer: diffie-hellman-group1-sha1 
  # user@hostname:~/$ ssh admin@172.16.0.120 -oKexAlgorithms=diffie-hellman-group1-sha1
  # Unable to negotiate with 172.16.0.120 port 22: no matching cipher found. Their offer: aes128-cbc,blowfish-cbc,twofish-cbc,3des-cbc

  user@hostname:~/$ ssh admin@172.16.0.120 -oKexAlgorithms=diffie-hellman-group1-sha1 -c aes128-cbc # solução

  # Caso de Erro (type):
  # user@hostname:~/$ ssh admin@172.16.0.46
  # Unable to negotiate with 172.16.0.46 port 22: no matching host key type found. Their offer: ssh-dss

  user@hostname:~/$ ssh admin@172.16.0.46 -oHostKeyAlgorithms=+ssh-dss # solução
  ```

### 88. **Decrypt UltraVNC Password (_`bash`_)**
  - **Descrição:** Decripta uma senha do UltraVNC a partir de uma string hexadecimal.

  ```
  echo -n D31CB1830A3F935251 | xxd -r -p | openssl enc -des-cbc --nopad --nosalt -K e84ad660c4721ae0 -iv 0000000000000000 -d | hexdump -Cv
  ```

### 89. **Hidden TTY em Sessão SSH (_`Bash`_)**
  - **Descrição:** Executa uma sessão SSH sem TTY e visualiza sessões ocultas.

  ```
  serti@kali> ssh -o UserKnownHostsFile=/dev/null -T serti@10.10.64.230 "bash -i"

  # Para ver sessões ocultas/sem TTY, basta usar os comandos
  serti@kali> loginctl                          # listar sessões
  serti@kali> loginctl show-session  [SESSID]   # listar informações da sessão 
  ```

### 90. **Compress Text from PIPE (_`Bash`_)**
  - **Descrição:** Comprime texto da saída padrão e codifica em base64.

  ```
  echo TextToCompress | gzip -cf | base64 -w0
  ```

### 91. **Compartilhar um Conteúdo em Texto no Site `termbin.com` (_`Bash`_)**
  - **Descrição:** Envia texto para o site termbin.com e obtém um link acessível publicamente.

  ```
  echo teste | nc termbin.com 9999
  # O comando acima irá gerar um link acessível na internet contendo o conteúdo enviado
  # Ex: https://termbin.com/46hq 
  ```

### 92. **Monitorar Pacotes Direto no Firewall (_`CLI - Fortigate`_)**
  - **Descrição:** Monitora pacotes na interface especificada do firewall Fortigate.

  ```
  # Syntax:
  #     diagnose sniffer packet <interface> <filter> <verbose> <count> <Timestamp format>
  FGT1KD_01_SEDE $ diagnose sniffer packet any 'udp and src host 172.16.0.136 and dst host 172.16.32.68 and dst port 514' 6
  ```

### 93. **Filtrar Pacotes Direto no Firewall via TTL (_`CLI - Fortigate`_)**
  - **Descrição:** Filtra pacotes com base no TTL no firewall Fortigate.

  ```
  FGT1KD_01_SEDE $ diagnose sniffer packet any 'udp and port 514 and src host 172.16.0 and ip[8]>126 and ip[8]<129'
  ```

### 94. **Usar Socat para Redirecionar Porta no Linux (_`Bash`_)**
  - **Descrição:** Redireciona a porta TCP de uma máquina para outra usando Socat.

  ```
  sudo socat TCP-LISTEN:8080,fork,reuseaddr TCP:172.16.0.105:3389
  ```

### 95. **Filtrar ICMP-IPv6 com Base no TTL (_`Bash`_)**
  - **Descrição:** Filtra pacotes ICMPv6 com base no TTL.

  ```
  # Windows
  sudo tcpdump -i any 'icmp6 && (ip6[7] >=124 and ip6[7] <=128)'

  # Linux
  sudo tcpdump -i any 'icmp6 && (ip6[7] >=60 and ip6[7] <=64)'
  ```

### 96. **Descoberta de Host IPv6 com Nmap (_`Bash`_)**
  - **Descrição:** Descobre hosts IPv6 utilizando um script do Nmap.

  ```
  nmap -6 --script=targets-ipv6-multicast-*
  ```

### 97. **Sniff Credenciais do Processo SSHD no Linux (_`Bash`_)**
  - **Descrição:** Captura credenciais passadas para o processo SSHD.

  ```
  sudo strace -t -e read,write,openat -f -p $(pgrep sshd | head -n1) 2>&1 | grep -v "~/.profile" | grep --line-buffered -F -e 'write(5, "\0\0\0\7' -e '\f\0\0\0' -e '.profile'
  ```

### 98. **Executar Comando Usando WMIClass (_`Powershell`_)**
  - **Descrição:** Executa um comando localmente ou remotamente usando WMIClass.

  ```
  # Local
  ([WmiClass]"\\.\root\cimv2:Win32_Process").Create("notepad.exe")
  [activator]::CreateInstance([type]::GetTypeFromProgID("MMC20.Application")).Document.ActiveView.ExecuteShellCommand("notepad.exe",$null,$null,"7")
  [activator]::CreateInstance([type]::GetTypeFromCLSID("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}")).Item().Document.Application.ShellExecute("notepad.exe",$null,$null,$null,"4")

  # Remoto
  ([WmiClass]"\\192.168.1.2\root\cimv2:Win32_Process").Create("notepad.exe")
  [activator]::CreateInstance([type]::GetTypeFromProgID("MMC20.Application","172.16.200.100")).Document.ActiveView.ExecuteShellCommand("notepad.exe",$null,$null,"7")
  [activator]::CreateInstance([type]::GetTypeFromCLSID("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}","172.16.200.100")).Item().Document.Application.ShellExecute("notepad.exe",$null,$null,$null,"4")
  ```

### 99. **Baseado em uma Lista, Remover Programas Usando o `Winget` (_`Powershell`_)**
  - **Descrição:** Remove programas baseados em uma lista de IDs usando Winget.

  ```
  type .\uninstall.txt | %{echo "[>] Uninstalling $_ :";winget rm --id "$_" --disable-interactivity --accept-source-agreements --force}
  ```

### 100. **Listar Soluções de Antivirus Instaladas (_`Powershell`_)**
  - **Descrição:** Lista produtos antivírus instalados no sistema.

  ```
  Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct -ErrorAction SilentlyContinue | Select-Object -Property displayName,instanceGuid,pathToSignedProductExe,pathToSignedReportingEx,productState,timestamp
  ```

### 101. **Cópias de Sombra no Windows (_`Powershell`/`cmd`_)**
  - **Descrição:** Gerencia cópias de sombra no Windows, incluindo listagem, acesso, remoção e criação.

  ```
  # Lista cópias de sombras disponíveis
  vssadmin list shadows
  
  # Acessar arquivos na cópia de sombra (Exemplo)
  mklink /d Nome_da_Pasta_de_Destino \?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1
  
  # Remover pasta montada com a cópia de sombra
  rmdir Nome_da_Pasta_de_Destino
  
  # Remover cópia de sombra (Via ShadowID)
  vssadmin delete shadow /shadow={44f95267-f951-4770-90f1-5746e7b2cb22}
  
  # Criar cópia de sombra (Via DiscName)
  ([WMICLASS]"root\cimv2:win32_shadowcopy").create("C:\", "ClientAccessible")
  ```

### 102. **Listar Eventos de Reboot (_`Powershell`_)**
  - **Descrição:** Lista eventos relacionados a reinicializações do sistema.

  ```
  Get-EventLog System -Newest 10000 |  Where EventId -in 41,1074,1076,6005,6006,6008,6009,6013 |  Format-Table TimeGenerated,EventId,UserName,Message -AutoSize -wrap
  ```

### 103. **Forçar o Update e Execução de Scripts de GPO (_`cmd`_)**
  - **Descrição:** Força a atualização das políticas de grupo e execução dos scripts associados.

  ```
  gpupdate /force && gpscript.exe /startup && gpscript.exe /Logon
  ```

### 104. **Proteger Serviço (_`cmd`_)**
  - **Descrição:** Configura permissões detalhadas para um serviço específico.

  ```
  # Proteger Serviço
  sc sdset "TesteSvc" D:(D;;DCLCWPDTSD;;;IU)(D;;DCLCWPDTSD;;;SU)(D;;DCLCWPDTSD;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)

  # Desproteger Serviço
  sc sdset "TesteSvc" D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)
  ```

### 105. **Listar Serviços com Pipes Nomeados (_`cmd`_)**
  - **Descrição:** Lista serviços em máquinas remotas com pipes nomeados.

  ```
  FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 10.10.64.%i 2>NUL | findstr /I "TTL=12" 1>NUL 2>NUL && for /F "tokens=1,2" %A in ('"sc \\10.10.64.%i query state= all| findstr "SERVICE_NAME NOME_DO_SERV""') DO @(
  echo 10.10.64.%i: %B && sc \\10.10.64.%i qtriggerinfo "%B") | grep -E --color "10.10.64.%i:|DADOS|EVENTO DE REDE|NETWORK EVENT" | grep -E --color "NOMEADO|NAMED" -C1)
  ```

### 106. **Listar Possíveis Configurações Incorretas de Permissão na Pasta de NETLOGON (_`cmd`_)**
  - **Descrição:** Verifica permissões na pasta NETLOGON para encontrar configurações incorretas.

  ```
  dir /S /Q \\mydomain.local\NETLOGON | findstr /R "DIR ^[0-9] Pasta Folder" | findstr /i /v "BUILTIN\Administra"
  ```

### 107. **Consultar MTU das Interfaces de Rede (_`cmd`_)**
  - **Descrição:** Consulta ou altera o MTU das interfaces de rede.

  ```
  # Consultar
  netsh interface ipv4 show subinterfaces
  
  # Mudar
  netsh int ipv4 set subinterface "NOME_DA_INTERFACE" mtu=tamanho MTU store=persistent
  ```

### 108. **Testar MTU (_`cmd`_)**
  - **Descrição:** Testa o MTU de uma interface.

  ```
  # Para testar o MTU de uma interface, lembre-se de subtrair 28 ao MTU que deseja testar (altere as partes em cinza conforme necessidade)
  # Por exemplo, para testar o MTU de 1500 utilize o comando ping IP_DESTINO -f -l 1472
  ping IP_DESTINO -f -l tamanho MTU
  ```

### 109. **Identificar Usuário pelo SID (_`Powershell`_)**
  - **Descrição:** Identifica um usuário no Active Directory pelo SID.

  ```
  Get-ADUser -Filter * | Where-Object -Property SID -like "S-1-5-21-35927030-1094727795-1882987033-6186" | Select-Object -Property *
  ```

### 110. **Verificar Propriedades do BitLocker (_`Powershell`_)**
  - **Descrição:** Lista propriedades dos volumes protegidos pelo BitLocker.

  ```
  Get-BitLockerVolume | Select-Object -Property *
  ```

### 111. **Listar Conexões por Processo (_`Bash`_)**
  - **Descrição:** Lista conexões por processo e exibe detalhes das conexões.

  ```
  ps aux | while read a b c d e f g h i j k l;do if [[ $(lsof -w -R -i -a -p $b 2>/dev/null | wc -l) -gt 0 ]];then printf "\n%-12s | %-9s | %-100s | %s\n" "$a" "$b" "$k" "$(lsof -w -R -i -a -p $b 2>/dev/null | wc -l)" && lsof -w -R -i -a -p $b 2>/dev/null | cat -n ;fi;done
  ```

### 112. **Verificar Vazamento de Senha (_`Bash`_)**
  - **Descrição:** Verifica se uma senha foi vazada utilizando o serviço "Have I Been Pwned".

  ```
  #!/bin/sh

  read -s -p "Senha:" senha
  senha=$(printf "$senha" | sha1sum | cut -d' ' -f1)
  printf "\rHASH -> %s\n" "$(curl -k -s https://api.pwnedpasswords.com/range/${senha:0:5} | grep -i ${senha:6:40})"
  ```

### 113. **Verificar Arquivos Ocultos (RootKit) (_`Bash`_)**
  - **Descrição:** Identifica arquivos ocultos que podem ser indícios de rootkits.

  ```
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

