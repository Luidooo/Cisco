# Revisão Resolvida - FRC UnB

## **Parte 1: Exercícios de Revisão**

### **Questão 1**

> Em um roteador Cisco, para habilitarmos uma porta para a nossa rede interna, devemos realizar os seguintes comandos no sistema operacional da cisco. Primeiro acessamos a CLI do roteador, acessamos os modos privilegiado (enable) e modo de configuração (Configure terminal) e em seguida acessar a interface(ex: interface gig0/0/0) e digitar os seguintes comandos:

**Alternativas:**
a. Ip address 192.168.1.1/No Shut
b. Ip source 192.168.1.1 / No Shut
c. Ip add 192.168.1.1 / Shut
d. Ip 192.168.1.1/Shut
e. Ip 168.192.1.256 / No Shut

**Resposta Correta:** a. Ip address 192.168.1.1/No Shut

**Explicação:** Para configurar e ativar uma interface em um roteador Cisco, são necessários dois comandos principais: `ip address` para atribuir o endereço e `no shutdown` para ativar a interface. A alternativa **a** representa a combinação desses dois comandos essenciais. As outras alternativas estão incorretas por usarem sintaxe de comando inválida (`Ip source`, `Ip add`, `Ip`), por desativarem a interface (`Shut`), ou por usarem um endereço IP inválido (`168.192.1.256`).

---

### **Questão 2**

> Marque a alternativa que apresenta a sequência correta para criar uma vlan de nome FaculdadesS e atribuir a ela as portas de 1 a 10 no Swich, considerando que já acessamos o Console do equipamento através dos comandos 'enable' e "configure terminal".

**Alternativas:**
A- switchport access vlan 10, vlan 10, name FaculdadesS, interface range fa0/1-02,
B- vlan 10, name FaculdadesS, interface range fa0/1-10, switchport access vlan 10
C- name FaculdadesS, vlan 10, interface range fa0/1-10, switchport access vlan 10
D- interface range fa0/1-10, switchport access vlan 10, vlan 10, name FaculdadesS
E- switchport access vlan 10, interface range fa0/1-10, vlan 10, name FaculdadesS

**Resposta Correta:** B- vlan 10, name FaculdadesS, interface range fa0/1-10, switchport access vlan 10

**Explicação:** A sequência lógica e correta dos comandos é: primeiro criar a VLAN (`vlan 10`), depois nomeá-la (`name FaculdadesS`), em seguida selecionar o intervalo de interfaces (`interface range fa0/1-10`), e por fim, atribuir essas interfaces à VLAN (`switchport access vlan 10`).

---

### **Questão 3**

> Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta:
> I. O ip 192.168.50.1 corresponde a um ip de classe C.
> II. O comando para desligar uma interface no switch é shutdown.
> III. O comando 'ping' permite testar a conectividade de um switch.
> IV. 255.255.0.0 corresponde a uma máscara de subrede do tipo B.
> V. Utilizamos o comando Banner Motd para atribuir um nome a um Switch.

**Alternativas:**
a) le IV
b) leV
c) II, III e IV
d) I, II, IV
e) lell

**Resposta Correta:** d) I, II, IV

**Explicação:**
* **I. CORRETA.** Endereços IP que começam com 192 pertencem à Classe C.
* **II. CORRETA.** O comando `shutdown` desativa administrativamente uma interface.
* **IV. CORRETA.** `255.255.0.0` é a máscara de sub-rede padrão para endereços de Classe B.
* **V. INCORRETA.** O comando `banner motd` cria uma mensagem de aviso; o comando para atribuir um nome é `hostname`.

## **Parte 2: Avaliação 01**

### **QUESTÃO 1**

> Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta:
> I. O ip 172.168.50.1 corresponde a um ip de classe C.
> II. O comando para desligar uma interface no switch é "no shutdown".
> III. O comando 'ping' permite testar a conectividade de um PC para outro PC.
> IV. 255.255.0.0 corresponde a uma máscara de subrede do tipo B.
> V. Utilizamos o comando "shutdown" para reiniciar o Router.

**Alternativas:**
a) le IV
b) lev
c) III e IV
d) I, II, IV
e) II, III, V

**Resposta Correta:** c) III e IV

**Explicação:**
* **I. INCORRETA.** O IP `172.168.50.1` pertence à Classe B (faixa de 128 a 191 no primeiro octeto).
* **II. INCORRETA.** O comando para desligar (desativar) uma interface é `shutdown`. O comando `no shutdown` serve para ligar (ativar) a interface.
* **III. CORRETA.** O comando `ping` é a ferramenta padrão para testar a conectividade de rede entre dois dispositivos.
* **IV. CORRETA.** A máscara `255.255.0.0` é a máscara padrão para redes de Classe B.
* **V. INCORRETA.** O comando para reiniciar um roteador Cisco é `reload`.

---

### **QUESTÃO 2**

> Analise as alternativas e marque V para as alternativas verdadeiras e F para as falsas:
> 1-() o número ip "192.168.1.0" é um endereço de um gateway.
> 2-() o comando "ipconfig" no prompt permite visualizar as informações de rede, como o ip, gateway...
> 3-() 0 comando 'sh ip int brief' permite visualizar informações das interfaces
> 4-() 0 servidor DNS faz traduções de nome para ip e vice-versa.

**Alternativas:**
a- FEVV
b- FVVV
c- FVVF
d- VVFV
e- ۷۷۷۷

**Resposta Correta:** b- FVVV

**Explicação:**
1.  **FALSO.** O endereço `192.168.1.0` (com máscara padrão /24) é o endereço da rede, não pode ser atribuído a um dispositivo como gateway.
2.  **VERDADEIRO.** No Windows, o comando `ipconfig` é usado para exibir a configuração de rede do computador.
3.  **VERDADEIRO.** Em dispositivos Cisco, o comando `show ip interface brief` exibe um resumo do status e do endereço IP de todas as interfaces.
4.  **VERDADEIRO.** O DNS (Domain Name System) resolve nomes de domínio para endereços IP (consulta direta) e endereços IP para nomes (consulta reversa).

---

### **QUESTÃO 3**

> Analise cada alternativa e marque e indique a palavra, comando ou termo para completar a frase.
> a- O ip 192.168.10.0 é um endereço de \_\_\_\_\_\_\_\_\_\_\_\_
> b- O comando \_\_\_\_\_\_\_\_\_\_\_\_ permite colocar uma senha criptografada no acesso ao modo privilegiado
> c- Comando para listar diversas informações da rede, inclusive mostrar as senhas.
> d- este comando \_\_\_\_\_\_\_\_\_\_\_\_ cria uma sub-interface no roteador.

**Alternativas:**
a- Host, 'enable secret unb', 'sh run', 'int g0/0/0.1'
b- Host, 'enable password unb', 'sh run', 'int g0/0/0.10'
c- Sub-rede, 'enable password unb', 'sh ip int brief, 'int g0/0/0'
d- Rede, 'enable secret unb', 'sh run', 'int g0/0/0.10'
e- Rede, 'enable secret unb', 'sh ip int brief', 'int g0/0/0.1'

**Resposta Correta:** d- Rede, 'enable secret unb', 'sh run', 'int g0/0/0.10'

**Explicação:**
* a- `192.168.10.0` é um endereço de **Rede**.
* b- O comando **`enable secret`** cria uma senha criptografada.
* c- O comando **`sh run`** (show running-config) exibe a configuração atual, incluindo senhas.
* d- O comando **`int g0/0/0.10`** cria uma sub-interface.

---

### **QUESTÃO 5**

> São camadas do modelo OSI, exceto:

**Alternativas:**
a- Transporte
b- Enlace de Dados
c- Física
d- Sessão
e- Internet

**Resposta Correta:** e- Internet

**Explicação:** As camadas do Modelo OSI são: Física, Enlace, Rede, Transporte, Sessão, Apresentação e Aplicação. A camada **Internet** pertence ao modelo TCP/IP.
