<p align="center">
  <a href="https://www.scnsoft.com/blog-pictures/infrastructure/noc.png">
    <img src="./images/guia.png" alt="Guia de Passo a Passo de Instalação de Agente" width="160" height="160">
  </a>
  <h1 align="center">🔧 Guia de Passo a Passo de Instalação de Agente</h1>
</p>

## :dart: O guia para alavancar a sua carreira

Este guia detalha o processo de instalação de agentes de monitoramento e segurança em sistemas operacionais Linux, Windows, e a configuração de syslog. A instalação correta desses agentes é essencial para garantir a visibilidade e a segurança contínua da infraestrutura de TI.

## :dart: Conteúdo

### 🐧 Instalação de Agente em Linux

#### Passo 1: Atualização do Sistema
Antes de instalar o agente, atualize o sistema:

```bash
sudo apt-get update && sudo apt-get upgrade -y   # Para distribuições baseadas em Debian/Ubuntu
sudo yum update -y                               # Para distribuições baseadas em RHEL/CentOS
```

#### Passo 2: Download do Agente
Baixe o instalador do agente:

```bash
wget https://url-do-agente/installer.sh -O agente_installer.sh
```

#### Passo 3: Instalação do Agente
Dê permissão de execução e execute o instalador:

```bash
chmod +x agente_installer.sh
sudo ./agente_installer.sh
```

#### Passo 4: Configuração do Agente
Configure o agente para apontar para o servidor de monitoramento:

```bash
sudo nano /etc/agente/config.conf
```

#### Passo 5: Iniciar o Agente
Inicie e habilite o agente:

```bash
sudo systemctl start agente
sudo systemctl enable agente
```

### 💻 Instalação de Agente em Windows

#### Passo 1: Download do Instalador
Baixe o instalador do agente do site oficial.

#### Passo 2: Executar o Instalador
Execute o instalador e siga as instruções na tela.

#### Passo 3: Configuração do Agente
Insira o endereço do servidor de monitoramento durante a instalação.

#### Passo 4: Verificação e Inicialização
Verifique e inicie o serviço do agente, se necessário:

```powershell
Get-Service -Name "NomeDoServicoDoAgente"
Start-Service -Name "NomeDoServicoDoAgente"
```

### 📜 Configuração de Syslog

#### Passo 1: Instalação do Syslog
Instale o syslog no Linux:

```bash
sudo apt-get install rsyslog -y   # Debian/Ubuntu
sudo yum install rsyslog -y       # RHEL/CentOS
```

#### Passo 2: Configuração do Syslog
Edite o arquivo de configuração para enviar logs ao servidor syslog:

```bash
sudo nano /etc/rsyslog.conf
```

Adicione:

```bash
*.* @servidor-syslog:514
```

#### Passo 3: Reiniciar o Syslog
Reinicie o serviço:

```bash
sudo systemctl restart rsyslog
```

#### Passo 4: Verificação de Logs
Verifique se os logs estão sendo enviados corretamente:

```bash
tail -f /var/log/syslog
```

### Conclusão

Este guia fornece as instruções necessárias para a instalação e configuração de agentes em Linux e Windows, bem como a configuração de syslog para coleta de logs. Seguindo esses passos, você garantirá a correta integração e funcionamento dos agentes, fortalecendo a segurança e o monitoramento contínuo de sua infraestrutura.
