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
  PowerShell> FOR /L %i IN (1,1,254) DO @(ping -w 1 -n 1 172.16.0.%i 2>NUL)
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
  CMD> netexec smb -t 600 172.25.0.0/16 -u "" -p "" --shares 2>NUL >> rede_172.25.0.0-16.md
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
