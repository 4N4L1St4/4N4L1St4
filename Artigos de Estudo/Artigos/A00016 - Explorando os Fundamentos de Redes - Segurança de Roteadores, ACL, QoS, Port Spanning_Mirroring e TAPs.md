<p align="center">
  <a href="SUA_URL_DE_IMAGEM">
    <img src="./images/fundamentos_redes.png" alt="Fundamentos de Redes" width="160" height="160">
  </a>
  <h1 align="center">Explorando os Fundamentos de Redes: Segurança de Roteadores, ACL, QoS, Port Spanning/Mirroring e TAPs</h1>
</p>

## :shield: Segurança do Roteador

A segurança do roteador é essencial para proteger a rede e os dispositivos conectados. Aqui estão os principais aspectos sobre a segurança do roteador:

- **Senhas e Credenciais**: Utilize senhas fortes e únicas, altere a senha padrão e armazene as credenciais de forma segura.
- **Atualizações de Firmware**: Mantenha o firmware do roteador atualizado para aplicar correções de segurança e patches.
- **Firewall**: Ative o firewall embutido para filtrar o tráfego e proteger contra ataques externos.
- **Filtragem de Pacotes**: Configure regras de filtragem para controlar o tráfego com base em IPs, portas e protocolos.
- **Desativar Serviços Não Utilizados**: Reduza a superfície de ataque desativando serviços desnecessários.
- **Monitoramento e Registro**: Habilite o monitoramento para detectar e investigar atividades suspeitas.
- **Segurança Física**: Mantenha o roteador em um local seguro e controlado.
- **Segurança sem Fio (Wi-Fi)**: Proteja a rede Wi-Fi com criptografia forte e uma senha segura, e desative a transmissão do SSID.
- **Configurações Padrão**: Modifique configurações padrão conhecidas para evitar exploração por invasores.
- **Backup de Configuração**: Faça backups regulares das configurações para rápida recuperação em caso de falha ou comprometimento.

## :lock: ACL - Access Control List

As ACLs são usadas para controlar o acesso a recursos em um sistema de computador ou rede. Veja os principais pontos sobre ACLs:

- **Definição de Permissões**: Especifica permissões concedidas ou negadas a usuários, grupos ou IPs.
- **Filtragem de Tráfego**: Aplicadas em roteadores, switches ou firewalls para controlar pacotes com base em IPs, portas e protocolos.
- **Granularidade**: Permitem um controle preciso sobre o acesso aos recursos com diferentes níveis de granularidade.
- **Regras de Prioridade**: Aplicadas em uma ordem específica para garantir que as permissões sejam aplicadas corretamente.
- **Manutenção e Gerenciamento**: Requerem atualizações e revisões contínuas conforme as necessidades de acesso mudam.
- **Auditoria e Monitoramento**: Importante auditar e monitorar o uso das ACLs para detectar atividades suspeitas e violações de segurança.

## :chart_with_upwards_trend: QoS - Quality of Service

QoS refere-se a técnicas e políticas para gerenciar e priorizar o tráfego de rede. Aqui estão os principais pontos sobre QoS:

- **Priorização de Tráfego**: Atribui prioridades diferentes ao tráfego com base em suas características e requisitos.
- **Gerenciamento de Largura de Banda**: Controla a largura de banda para evitar congestionamentos e distribuir recursos de forma eficiente.
- **Controle de Congestionamento**: Ajuda a mitigar congestionamentos e garantir uma transmissão fluida de pacotes.
- **Classificação de Tráfego**: Classifica o tráfego em categorias para aplicar políticas de QoS adequadas.
- **Políticas de QoS**: Define regras para priorizar, limitar a taxa de transferência e outros parâmetros de desempenho.
- **Mecanismos de QoS**: Inclui filas de prioridade, agendamento de pacotes, limitação de taxa e marcação de pacotes.
- **Aplicações do QoS**: Utilizado em redes que exigem desempenho consistente para aplicativos sensíveis à latência e qualidade.

## :repeat: Port Spanning ou Port Mirroring

Port Spanning ou Port Mirroring é uma técnica para monitorar o tráfego em uma porta de switch, replicando pacotes para outra porta. Aqui estão os principais pontos:

- **Monitoramento de Tráfego**: Permite que um dispositivo de monitoramento receba uma cópia do tráfego de uma porta específica.
- **Replicação de Pacotes**: Replicação dos pacotes recebidos ou enviados para análise sem interromper a comunicação normal.
- **Configuração de Portas**: Configuração do switch para definir a porta de origem e a porta espelhada.
- **Uso em Análise de Rede**: Usado para análise e solução de problemas, identificação de padrões e detecção de ameaças.
- **Limitações de Largura de Banda**: Considerar a carga adicional nas portas para evitar congestionamentos.
- **Segurança e Privacidade**: Limitar o acesso à porta espelhada e proteger a privacidade dos dados transmitidos.

## :computer: TAP - Terminal Access Point

TAP é um dispositivo para capturar e monitorar o tráfego de rede de forma não intrusiva. Veja os principais pontos sobre TAPs:

- **Acesso Não Intrusivo**: Captura o tráfego sem interferir na comunicação normal da rede.
- **Monitoramento de Tráfego**: Captura uma cópia exata dos pacotes para análise detalhada.
- **Métodos de Conexão**: Inclui TAPs de fibra óptica e cobre, dependendo do tipo de cabos utilizados.
- **Duplicação de Pacotes**: Direciona cópias dos pacotes para portas de saída dedicadas para análise.
- **Preservação da Integridade**: Garante captura precisa e contínua sem perda ou alteração dos pacotes.
- **Segurança e Confiabilidade**: Projetado para ser seguro e confiável, imune a problemas de configuração e ataques.

Esses fundamentos são essenciais para o gerenciamento eficaz e seguro das redes, garantindo a proteção, a eficiência e a confiabilidade das comunicações e dados transmitidos.
