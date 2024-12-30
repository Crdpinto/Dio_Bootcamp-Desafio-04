# Projeto Conceitual de Banco de Dados para uma Oficina

## Descrição
Este projeto visa o desenvolvimento de um banco de dados para uma oficina. Permitindo a gestão de clientes, serviços, peças, equipes de mecânicos e etc..

## Estrutura do Esquema
### Tabelas
**Cliente**
*    idCliente int primary key auto_increment
*    Nome varchar(20)
*    Mnome char(1)
*    Sobrenome varchar(15)
*    Endereco varchar(45)
*    Telefone varchar(15)
*    Email varchar(30)

**Veiculo**
*    idVeiculo int primary key auto_increment
*    Placa varchar(7)
*    Modelo varchar(15)
*    Ano int
*    idClienteVeic INT
*    foreign key (idClienteVeic) references Cliente(idCliente)

**Equipe_Mecanicos**
*    idEquipe_Mecanicos int primary key auto_increment
*    Nome_Equipe varchar(45)
*    idVeiculoVeic int
*    idClienteVeiculo int
*    foreign key (idVeiculoVeic) references Veiculo(idVeiculo)
*    foreign key (idClienteVeiculo) references Cliente(idCliente)

**Mecanico**
*    idMecanico int primary key auto_increment
*    Codigo varchar(10)
*    Nome varchar(45)
*    Endereco varchar(45)
*    Especialidade varchar(45)
*    idEquipe_MecanicosEquip int
*    foreign key (idEquipe_MecanicosEquip) references Equipe_Mecanicos(idEquipe_Mecanicos)

**Mao_de_Obra**
*    idMao_de_Obra int primary key auto_increment
*    Valores_Referencia float

**Servicos**
*    idServicos int primary key auto_increment
*    Tipo_Servico varchar(45)

**OS**
*    idOS int primary key auto_increment
*    Numero int
*    Data_Emissao date
*    Valor float
*    Status enum('Concluído', 'Em andamento', 'Pendente')
*    Data_Conclusao date
*    idMecanicoMec int
*    idVeiculoVeic int
*    idClienteVeiculoCliente int
*    foreign key (idMecanicoMec) references Mecanico(idMecanico)
*    foreign key (idVeiculoVeic) references Veiculo(idVeiculo)
*    foreign key (idClienteVeiculoCliente) references Cliente(idCliente)

**Pecas_OS**
*    idPecas_OS int primary key auto_increment
*    Pecas_da_OS varchar(35)

**Peca**
*    idPeca int primary key auto_increment
*    Peca varchar(35)
*    Valor float

**Pecas_OS_has_Peca**
*    idPecas_OSPecasOS int
*    idPecaPeca int
*    primary key (idPecas_OSPecasOS, idPecaPeca)
*    foreign key (idPecas_OSPecasOS) references Pecas_OS(idPecas_OS)
*    foreign key (idPecaPeca) references Peca(idPeca)

**Autorizacao_Cliente**
*    idAutorizacao_Cliente int primary key auto_increment
*    Autorizacao_execucao_OS enum('Autorizado','Pendente')
*    idOSos int
*    foreign key (idOSos) references OS(idOS)


## Modelo Oficina
![Oficina](https://github.com/user-attachments/assets/bcb8f2df-0fa6-4a0c-a8f9-0ffe953917e0)


### **Considerações Finais**
Este esquema conceitual foi desenvolvido com base na narrativa fornecida e procura abranger os principais aspectos operacionais de uma oficina, para garantir a integridade e a eficiência do gerenciamento dos serviços nos veículos.
