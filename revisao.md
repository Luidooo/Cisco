# Revisão Resolvida - FRC UnB

## **Parte 1: Exercícios de Revisão**

### **Questão 1**

> Em um roteador Cisco, para habilitarmos uma porta para a nossa rede interna, devemos realizar os seguintes comandos no sistema operacional da cisco. [cite_start]Primeiro acessamos a CLI do roteador, acessamos os modos privilegiado (enable) e modo de configuração (Configure terminal) e em seguida acessar a interface(ex: interface gig0/0/0) e digitar os seguintes comandos: [cite: 4, 5, 6]

**Resposta Correta:**
**a. [cite_start]Ip address 192.168.1.1/No Shut** [cite: 8]

**Explicação:**
Para configurar e ativar uma interface em um roteador Cisco, são necessários dois comandos principais:
1.  `ip address <endereço_ip> <máscara_de_sub-rede>`: Este comando atribui o endereço IP e a máscara à interface.
2.  `no shutdown`: Este comando ativa a interface, que por padrão vem administrativamente desativada (`shutdown`).

A alternativa **a** representa a combinação desses dois comandos essenciais.

---

### **Questão 2**

> [cite_start]Marque a alternativa que apresenta a sequência correta para criar uma vlan de nome FaculdadesS e atribuir a ela as portas de 1 a 10 no Swich, considerando que já acessamos o Console do equipamento através dos comandos 'enable' e "configure terminal". [cite: 20]

**Resposta Correta:**
[cite_start]**B- vlan 10, name FaculdadesS, interface range fa0/1-10, switchport access vlan 10** [cite: 22]

**Explicação:**
A sequência lógica e correta dos comandos para criar uma VLAN e associar um conjunto de portas a ela é:
1.  `vlan 10`: Cria a VLAN com o ID 10.
2.  `name FaculdadesS`: Dá um nome à VLAN recém-criada.
3.  `interface range fa0/1-10`: Entra no modo de configuração para um intervalo de interfaces.
4.  `switchport access vlan 10`: Define que todas as interfaces neste intervalo farão parte da VLAN 10.

A alternativa **B** segue exatamente essa ordem.

---

### **Questão 3**

> [cite_start]Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta: [cite: 23]
> [cite_start]I. O ip 192.168.50.1 corresponde a um ip de classe C. [cite: 25]
> II. [cite_start]O comando para desligar uma interface no switch é shutdown. [cite: 27]
> III. [cite_start]O comando 'ping' permite testar a conectividade de um switch. [cite: 29]
> IV. [cite_start]255.255.0.0 corresponde a uma máscara de subrede do tipo B. [cite: 32]
> [cite_start]V. Utilizamos o comando Banner Motd para atribuir um nome a um Switch. [cite: 33]

**Resposta Correta:**
[cite_start]**d) I, II, IV** [cite: 40]

**Explicação:**
* **I. [cite_start]CORRETA.** Endereços IP de Classe C vão de `192.0.0.0` a `223.255.255.255`. [cite: 25]
* **II. [cite_start]CORRETA.** O comando `shutdown` desativa administrativamente uma interface. [cite: 27]
* **IV. [cite_start]CORRETA.** `255.255.0.0` é a máscara de sub-rede padrão para endereços de Classe B. [cite: 32]
* **V. INCORRETA.** O comando `banner motd` cria uma mensagem de aviso. [cite_start]O comando para atribuir um nome é `hostname`. [cite: 33]

---
## **Parte 2: Avaliação 01**

### [cite_start]**QUESTÃO 1** [cite: 115]

> [cite_start]Leia as sentenças abaixo e marque o item que apresenta todas as sentenças de forma correta: [cite: 116]
> [cite_start]I. O ip 172.168.50.1 corresponde a um ip de classe C. [cite: 117]
> II. [cite_start]O comando para desligar uma interface no switch é "no shutdown". [cite: 118]
> III. [cite_start]O comando 'ping' permite testar a conectividade de um PC para outro PC. [cite: 119]
> IV. [cite_start]255.255.0.0 corresponde a uma máscara de subrede do tipo B. [cite: 120]
> [cite_start]V. Utilizamos o comando "shutdown" para reiniciar o Router. [cite: 121]

**Resposta Correta:**
[cite_start]**c) III e IV** [cite: 125]

**Explicação:**
* **I. [cite_start]INCORRETA.** O IP `172.168.50.1` pertence à Classe B (faixa de 128 a 191 no primeiro octeto). [cite: 117]
* **II. INCORRETA.** O comando para desligar (desativar) uma interface é `shutdown`. [cite_start]O comando `no shutdown` serve para ligar (ativar) a interface. [cite: 118]
* **III. [cite_start]CORRETA.** O comando `ping` é a ferramenta padrão para testar a conectividade de rede entre dois dispositivos, como de um PC para outro. [cite: 119]
* **IV. [cite_start]CORRETA.** A máscara `255.255.0.0` (ou `/16`) é a máscara padrão para redes de Classe B. [cite: 120]
* **V. [cite_start]INCORRETA.** O comando para reiniciar um roteador Cisco é `reload`. [cite: 121]

---

### [cite_start]**QUESTÃO 2** [cite: 128]

> [cite_start]Analise as alternativas e marque V para as alternativas verdadeiras e F para as falsas: [cite: 129]
> [cite_start]1-() o número ip "192.168.1.0" é um endereço de um gateway. [cite: 130]
> [cite_start]2-() o comando "ipconfig" no prompt permite visualizar as informações de rede, como o ip, gateway... [cite: 131]
> [cite_start]3-() 0 comando 'sh ip int brief' permite visualizar informações das interfaces [cite: 132]
> [cite_start]4-() 0 servidor DNS faz traduções de nome para ip e vice-versa. [cite: 133]

**Resposta Correta:**
[cite_start]**b- FVVV** [cite: 136]

**Explicação:**
1.  [cite_start]**FALSO.** O endereço `192.168.1.0` (com máscara padrão /24) é o endereço da rede, não pode ser atribuído a um dispositivo como gateway. [cite: 130]
2.  [cite_start]**VERDADEIRO.** No Windows, o comando `ipconfig` é usado no prompt de comando para exibir a configuração de rede do computador. [cite: 131]
3.  [cite_start]**VERDADEIRO.** Em dispositivos Cisco, o comando `show ip interface brief` exibe um resumo do status e do endereço IP de todas as interfaces. [cite: 132]
4.  [cite_start]**VERDADEIRO.** O DNS (Domain Name System) resolve nomes de domínio para endereços IP (consulta direta) e endereços IP para nomes (consulta reversa). [cite: 133]

---

### [cite_start]**QUESTÃO 3** [cite: 140]

> [cite_start]Analise cada alternativa e marque e indique a palavra, comando ou termo para completar a frase. [cite: 141]
> [cite_start]a- O ip 192.168.10.0 é um endereço de \_\_\_\_\_\_\_\_\_\_\_\_ [cite: 142]
> [cite_start]b- O comando \_\_\_\_\_\_\_\_\_\_\_\_ permite colocar uma senha criptografada no acesso ao modo privilegiado [cite: 143]
> [cite_start]c- Comando para listar diversas informações da rede, inclusive mostrar as senhas. [cite: 145]
> [cite_start]d- este comando \_\_\_\_\_\_\_\_\_\_\_\_ cria uma sub-interface no roteador. [cite: 146]

**Resposta Correta:**
[cite_start]**d- Rede, 'enable secret unb', 'sh run', 'int g0/0/0.10'** [cite: 151]

**Explicação:**
* [cite_start]a- `192.168.10.0` é um endereço de **Rede**. [cite: 142]
* [cite_start]b- O comando **`enable secret <senha>`** cria uma senha criptografada (usando hash MD5) para o modo privilegiado. [cite: 143]
* [cite_start]c- O comando **`show running-config`** (ou `sh run`) exibe a configuração atual do dispositivo, que inclui as senhas configuradas. [cite: 145]
* [cite_start]d- O comando **`interface g0/0/0.10`** cria a sub-interface de número 10 na interface física GigabitEthernet 0/0/0. [cite: 147]

---

### [cite_start]**QUESTÃO 4** [cite: 153]

> [cite_start]Analise os seguintes conceitos: [cite: 154]
> 1- São uma parte essencial da segmentação de redes, permitindo a separação lógica de dispositivos em uma rede física. [cite_start]Isso proporciona uma melhor segurança e um melhor desempenho da rede. [cite: 155, 156]
> [cite_start]2- É a porta do roteador responsável por interligar a rede. [cite: 157]
> [cite_start]3- Tipo de servidor que permite realizar a tradução de nome para ip e vice-versa. [cite: 158]

**Resposta Correta:**
[cite_start]**E- Vlan, Gateway, DNS** [cite: 164]

**Explicação:**
1.  [cite_start]O conceito de separar logicamente uma rede física para melhorar segurança e desempenho descreve uma **VLAN**. [cite: 155, 156]
2.  [cite_start]A porta de um roteador que serve como ponto de saída de uma rede local para outras redes é o **Gateway**. [cite: 157]
3.  [cite_start]O servidor que traduz nomes para IPs (e vice-versa) é o **DNS**. [cite: 158]

---

### [cite_start]**QUESTÃO 5** [cite: 165]

> [cite_start]São camadas do modelo OSI, exceto: [cite: 166]

**Resposta Correta:**
[cite_start]**e- Internet** [cite: 171]

**Explicação:**
As camadas do Modelo OSI são: Física, Enlace, Rede, Transporte, Sessão, Apresentação e Aplicação. A camada **Internet** pertence ao modelo TCP/IP, que corresponde à camada de Rede do modelo OSI.

---

### [cite_start]**QUESTÃO 6** [cite: 172]

> [cite_start]Analise as informações abaixo e marque a alternativa correta [cite: 173]

**Resposta Correta:**
[cite_start]**a) Todas as afirmativas estão corretas** [cite: 181] (Nota: Há uma inconsistência na questão original. A afirmativa 2 é tecnicamente incorreta, pois os modelos não são idênticos nas camadas superiores. No entanto, se considerarmos uma visão simplificada, as outras 4 são corretas, tornando a alternativa "a" a mais provável dentro do contexto da avaliação.)

**Explicação Detalhada:**
1.  [cite_start]**CORRETA.** O DHCP (Dynamic Host Configuration Protocol) utiliza o protocolo UDP, pois suas mensagens iniciais são de broadcast e não requerem a confiabilidade de uma conexão TCP. [cite: 174]
2.  **INCORRETA.** O modelo TCP/IP de 5 camadas condensa as camadas de Aplicação, Apresentação e Sessão do OSI em uma única camada de Aplicação. [cite_start]Portanto, as camadas não são idênticas. [cite: 175]
3.  **CORRETA.** No modelo OSI, o TCP está na Camada 4 (Transporte), enquanto o IP está na Camada 3 (Rede). [cite_start]A camada 4 é superior à 3. [cite: 177]
4.  [cite_start]**CORRETA.** Encapsulamento é o processo de adicionar um cabeçalho (com informações de controle) em cada camada à medida que os dados descem pela pilha de protocolos. [cite: 178]
5.  [cite_start]**CORRETA.** Endereços MAC (Media Access Control) são os endereços físicos da Camada 2 (Enlace de Dados). [cite: 179]

---

### [cite_start]**QUESTÃO 7** [cite: 189]

> [cite_start]Responda de forma objetiva o que cada comando executado no Switch/ Router realiza: [cite: 190]
> [cite_start]'Show ip interface brief" [cite: 191]
> [cite_start]'No ip domain lookup" [cite: 192]
> [cite_start]"Do" (ex: "do Copy running-config startup-config"). [cite: 193]
> [cite_start]'No Ip add 192.168.1.1 255.255.255.0' [cite: 194]

**Respostas:**
* [cite_start]**`Show ip interface brief`**: Exibe uma tabela resumida com o status de todas as interfaces do dispositivo, incluindo seus endereços IP e estado operacional (up/down). [cite: 191]
* **`No ip domain lookup`**: Desabilita a tentativa do sistema operacional de traduzir comandos digitados incorretamente como se fossem nomes de domínio. [cite_start]Isso evita longas pausas por erro de digitação. [cite: 192]
* [cite_start]**`Do`**: É um prefixo que permite executar comandos do modo privilegiado (como `show` ou `copy`) diretamente de dentro de um modo de configuração (como `config` ou `config-if`), sem precisar sair dele. [cite: 193]
* [cite_start]**`No Ip add 192.168.1.1 255.255.255.0`**: (Com a sintaxe correta `no ip address ...`) Remove a configuração de endereço IP de uma interface. [cite: 194]

---

### [cite_start]**QUESTÃO 8** [cite: 195]

> [cite_start]Informe os comandos necessários no Packet tracer para realizar as seguintes configurações. [cite: 196]
> [cite_start]1- Cite ao menos 03 protocolos da camada de apresentação. [cite: 197]
> [cite_start]2- Colocar senha no console, utilizar o comando para inicializar pedindo a senha e reiniciar o Switch. [cite: 198]
> [cite_start]3- Crie uma Vlan chamada Redes com número 03 e atribua a ela as interfaces de 1 a 5 no Switch considerando estar no modo de configuração global. [cite: 199]
> [cite_start]4- Explique a diferença ou para que serve, o Router e Switch: [cite: 200]

**Respostas:**
* **1. Protocolos da Camada de Apresentação:**
    * SSL (Secure Sockets Layer)
    * TLS (Transport Layer Security)
    * JPEG, GIF, MPEG (Formatos de dados que são tratados nesta camada)
* **2. [cite_start]Configurar senha no console e reiniciar:** [cite: 198]
    ```bash
    configure terminal
    line console 0
    password suasenha  ! Troque "suasenha" pela senha desejada
    login
    exit
    exit
    reload             ! Comando para reiniciar o switch
    ```
* **3. [cite_start]Criar e atribuir VLAN:** [cite: 199]
    ```bash
    configure terminal
    vlan 3
    name Redes
    exit
    interface range fastEthernet 0/1-5
    switchport mode access
    switchport access vlan 3
    ```
* **4. [cite_start]Diferença entre Roteador e Switch:** [cite: 200]
    * **Switch:** Opera na Camada 2 (Enlace) e utiliza endereços MAC para encaminhar quadros (frames) entre dispositivos **dentro da mesma rede local (LAN)**. Sua função principal é conectar dispositivos em uma mesma rede.
    * **Roteador:** Opera na Camada 3 (Rede) e utiliza endereços IP para encaminhar pacotes **entre redes diferentes**. Sua função principal é interconectar redes e encontrar o melhor caminho para os dados trafegarem.
