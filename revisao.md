# Revisão Resolvida - FRC UnB (Versão Completa)

## **Parte 1: Exercícios de Revisão**

### **Questão 1**
> Em um roteador Cisco, para habilitarmos uma porta para a nossa rede interna, devemos realizar os seguintes comandos no sistema operacional da cisco. Primeiro acessamos a CLI do roteador, acessamos os modos privilegiado (enable) e modo de configuração (Configure terminal) e em seguida acessar a interface(ex: interface gig0/0/0) e digitar os seguintes comandos:

**Alternativas:**
- a. Ip address 192.168.1.1/No Shut
- b. Ip source 192.168.1.1 / No Shut
- c. Ip add 192.168.1.1 / Shut
- d. Ip 192.168.1.1/Shut
- e. Ip 168.192.1.256 / No Shut

**Resposta Correta:** a. Ip address 192.168.1.1/No Shut

**Explicação:** Para configurar uma interface, o comando correto é `ip address <ip> <máscara>`, seguido do comando `no shutdown` para ativá-la. A alternativa "a" é a que representa essa combinação de ações.

---
### **Questão 2**
> Marque a alternativa que apresenta a sequência correta para criar uma vlan de nome FaculdadesS e atribuir a ela as portas de 1 a 10 no Swich, considerando que já acessamos o Console do equipamento através dos comandos 'enable' e "configure terminal".

**Alternativas:**
- A- switchport access vlan 10, vlan 10, name FaculdadesS, interface range fa0/1-02,
- B- vlan 10, name FaculdadesS, interface range fa0/1-10, switchport access vlan 10
- C- name FaculdadesS, vlan 10, interface range fa0/1-10, switchport access vlan 10
- D- interface range fa0/1-10, switchport access vlan 10, vlan 10, name FaculdadesS
- E- switchport access vlan 10, interface range fa0/1-10, vlan 10, name FaculdadesS

**Resposta Correta:** B- vlan 10, name FaculdadesS, interface range fa0/1-10, switchport access vlan 10

**Explicação:** A sequência correta é: criar a vlan (`vlan 10`), nomeá-la (`name FaculdadesS`), selecionar as interfaces (`interface range fa0/1-10`) e, por fim, associá-las à vlan (`switchport access vlan 10`).

---
### **Questão 3**
> Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta:
> I. O ip 192.168.50.1 corresponde a um ip de classe C.
> II. O comando para desligar uma interface no switch é shutdown.
> III. O comando 'ping' permite testar a conectividade de um switch.
> IV. 255.255.0.0 corresponde a uma máscara de subrede do tipo B.
> V. Utilizamos o comando Banner Motd para atribuir um nome a um Switch.

**Alternativas:**
- a) le IV
- b) leV
- c) II, III e IV
- d) I, II, IV
- e) lell

**Resposta Correta:** d) I, II, IV

**Explicação:** As afirmativas I, II e IV estão corretas. A afirmativa V está incorreta, pois o comando para atribuir nome é `hostname`.

---
### **Questão 4**
> Responda de forma objetiva o que cada comando executado no Switch/ Router realiza:

- **`Configure Terminal`**: Entra no modo de configuração global, onde é possível alterar as configurações do dispositivo.
- **`Hostname FacUnb`**: Altera o nome do dispositivo para "FacUnb".
- **`Copy running-config startup-config` ou `wr`**: Salva a configuração atual (em execução na RAM) para a configuração de inicialização (na NVRAM), para que não se perca ao reiniciar.
- **`Ip add 192.168.1.1 255.255.255.0`**: (Com a sintaxe correta `ip address ...`) Atribui o endereço IP e a máscara de sub-rede a uma interface.
- **`Banner motd #PROIBIDO ACESSO NÃO AUTORIZADO#`**: Define uma mensagem de aviso que aparece para quem tentar acessar o dispositivo.

---
### **Questão 5**
> Informe os comandos necessários no Packet tracer para realizar as seguintes configurações.

- **i. Criar uma vlan chamada Engenharia considerando estar no modo de configuração global e vincular ela as interfaces de g0/1-5.**
  **Resposta:**
  ```bash
  vlan 2
  name Engenharia
  exit
  interface range g0/1-5
  switchport mode access
  switchport access vlan 2
  ii. Colocar senha no console, utilizar o comando para inicializar pedindo a senha e reiniciar o Switch.
Resposta:

Bash

line console 0
password unb
login
exit
reload
iii. O ip 192.168.5.0 é:
Resposta: b. Rede

Questão 6
Analise as alternativas abaixo e identifique o conceito correspondente.

() conectam diferentes redes entre si.

() protocolo de comunicação em uma rede de computadores

() conectam vários dispositivos a uma mesma rede.

() protegem as redes contra acessos não autorizados.

() Nome dado a um equipamento ligado a rede

Resposta Correta: A sequência da associação é: B, E, A, D, C (Roteador, TCP/IP, Switch, Firewall, Host).

Questão 7
Para que uma rede funcione de forma básica, precisamos ao menos de dois parâmetros configurados:

Alternativas:

a. Switch e Router

b. Ip e Endereço Mac

c. Ip e Máscara de sub-rede

d. Router e servidor

e. Servidor e switch

Resposta Correta: c. Ip e Máscara de sub-rede

Explicação: Um dispositivo precisa de um endereço IP para ser identificado e uma Máscara de Sub-rede para saber a qual rede pertence.

Questão 8
Qual dos protocolos abaixo não corresponde a um protocolo da camada de apresentação segundo o modelo OSI.

Alternativas:

a. DNS

b. FTP

c. HTTP

d. UDP

e. HTTPS

Resposta Correta: d. UDP

Explicação: UDP é um protocolo da Camada de Transporte (Camada 4). Os outros são da Camada de Aplicação.

Questão 9
Quais as vantagens ao se criar uma Vlan?

Resposta: Melhor gerenciamento, maior segurança, melhor desempenho da rede e melhor aproveitamento da estrutura física.

Questão 10
Qual é o papel do Servidor DNS?

Resposta: Realizar a resolução de nomes, ou seja, traduzir nomes de domínio (ex: https://www.google.com/search?q=www.google.com) em endereços IP (ex: 142.250.218.100).

Parte 2: Avaliação 01
QUESTÃO 1
Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta:
I. O ip 172.168.50.1 corresponde a um ip de classe C.
II. O comando para desligar uma interface no switch é "no shutdown".
III. O comando 'ping' permite testar a conectividade de um PC para outro PC.
IV. 255.255.0.0 corresponde a uma máscara de subrede do tipo B.
V. Utilizamos o comando "shutdown" para reiniciar o Router.

Alternativas:

a) le IV

b) lev

c) III e IV

d) I, II, IV

e) II, III, V

Resposta Correta: c) III e IV

Explicação: As afirmativas III e IV estão corretas. A I está errada (é classe B), a II está errada (shutdown desliga, no shutdown liga) e a V está errada (reload reinicia).

QUESTÃO 2
Analise as alternativas e marque V para as alternativas verdadeiras e F para as falsas:
1-() o número ip "192.168.1.0" é um endereço de um gateway.
2-() o comando "ipconfig" no prompt permite visualizar as informações de rede, como o ip, gateway...
3-() 0 comando 'sh ip int brief' permite visualizar informações das interfaces
4-() 0 servidor DNS faz traduções de nome para ip e vice-versa.

Alternativas:

a- FEVV

b- FVVV

c- FVVF

d- VVFV

e- ۷۷۷۷

Resposta Correta: b- FVVV

Explicação: A primeira afirmativa é falsa, pois 192.168.1.0 é um endereço de rede. Todas as outras são verdadeiras.

QUESTÃO 3
Analise cada alternativa e marque e indique a palavra, comando ou termo para completar a frase.

Resposta Correta: d- Rede, 'enable secret unb', 'sh run', 'int g0/0/0.10'

Explicação: 192.168.10.0 é um endereço de Rede; enable secret cria uma senha criptografada; sh run mostra a configuração (incluindo senhas); int g0/0/0.10 cria uma sub-interface.

QUESTÃO 4
Analise os seguintes conceitos:
1- São uma parte essencial da segmentação de redes, permitindo a separação lógica de dispositivos em uma rede física.
2- É a porta do roteador responsável por interligar a rede.
3- Tipo de servidor que permite realizar a tradução de nome para ip e vice-versa.

Alternativas:

A- Vlan, gateway, cliente/servidor

B- Gateway, DHCP, Vlan

C- Vlan, DNS, Gateway

D- Gateway, Vlan, DHCP

E- Vlan, Gateway, DNS

Resposta Correta: E- Vlan, Gateway, DNS

Explicação: Os conceitos descritos são, respectivamente, VLAN, Gateway e DNS.

QUESTÃO 5
São camadas do modelo OSI, exceto:

Alternativas:

a- Transporte

b- Enlace de Dados

c- Física

d- Sessão

e- Internet

Resposta Correta: e- Internet

Explicação: A camada "Internet" pertence ao modelo TCP/IP, não ao modelo OSI.

QUESTÃO 6
Analise as informações abaixo e marque a alternativa correta

Resposta Correta: a) Todas as afirmativas estão corretas (com ressalvas na afirmativa 2, que é uma simplificação).

Explicação: As afirmativas 1, 3, 4 e 5 estão corretas. A afirmativa 2 é uma simplificação, pois as camadas superiores dos modelos TCP/IP e OSI não são idênticas.

QUESTÃO 7
Responda de forma objetiva o que cada comando executado no Switch/ Router realiza:

'Show ip interface brief": Exibe um resumo do status das interfaces de rede, incluindo seus IPs e se estão ativas.

'No ip domain lookup": Desativa a busca por DNS no CLI, evitando demoras quando um comando é digitado errado.

"Do" (ex: "do Copy running-config startup-config").: Permite executar um comando de modo privilegiado (como show ou copy) sem sair do modo de configuração.

'No Ip add 192.168.1.1 255.255.255.0': (Com a sintaxe correta no ip address...) Remove o endereço IP de uma interface.

QUESTÃO 8
Informe os comandos necessários no Packet tracer para realizar as seguintes configurações.

1- Cite ao menos 03 protocolos da camada de apresentação.
Resposta: SSL, TLS, JPEG, GIF, MPEG (protocolos de criptografia e formatos de dados).

2- Colocar senha no console, utilizar o comando para inicializar pedindo a senha e reiniciar o Switch.
Resposta:

Bash

line console 0
password <senha>
login
exit
reload
3- Crie uma Vlan chamada Redes com número 03 e atribua a ela as interfaces de 1 a 5 no Switch considerando estar no modo de configuração global.
Resposta:

Bash

vlan 3
name Redes
exit
interface range fastEthernet 0/1-5
switchport mode access
switchport access vlan 3
4- Explique a diferença ou para que serve, o Router e Switch:
Resposta: Um Switch opera na Camada 2 para conectar dispositivos na mesma rede usando endereços MAC. Um Roteador opera na Camada 3 para conectar redes diferentes usando endereços IP e determinar o melhor caminho para os dados.
