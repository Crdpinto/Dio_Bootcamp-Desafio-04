create database Oficina;
use Oficina;

-- drop database oficina;

-- show tables;

create table Cliente (
    idCliente int primary key auto_increment,
    Nome varchar(20),
    Mnome char(1),
    Sobrenome varchar (15),
    Endereco varchar(45),
    Telefone varchar(15),
    Email varchar(30)
);

alter table Cliente auto_increment=1;

create table Veiculo (
    idVeiculo int primary key auto_increment,
    Placa varchar(7),
    Modelo varchar(15),
    Ano int,
    idClienteVeic INT,
    foreign key (idClienteVeic) references Cliente(idCliente)
);

alter table Veiculo auto_increment=1;


create table Equipe_Mecanicos (
    idEquipe_Mecanicos int primary key auto_increment,
    Nome_Equipe varchar(45),
    idVeiculoVeic int,
    idClienteVeiculo int,
    foreign key (idVeiculoVeic) references Veiculo(idVeiculo),
    foreign key (idClienteVeiculo) references Cliente(idCliente)
);

alter table Equipe_Mecanicos auto_increment=1;

create table Mecanico (
    idMecanico int primary key auto_increment,
    Codigo varchar(10),
    Nome varchar(45),
    Endereco varchar(45),
    Especialidade varchar(45),
    idEquipe_MecanicosEquip int,
    foreign key (idEquipe_MecanicosEquip) references Equipe_Mecanicos(idEquipe_Mecanicos)
);

alter table Mecanico auto_increment=1;

create table Mao_de_Obra (
    idMao_de_Obra int primary key auto_increment,
    Valores_Referencia float
);

alter table Mao_de_Obra auto_increment=1;

create table Servicos (
    idServicos int primary key auto_increment,
    Tipo_Servico varchar(45)
);

alter table Servicos auto_increment=1;

create table OS (
    idOS int primary key auto_increment,
    Numero int,
    Data_Emissao date,
    Valor float,
    Status enum('Concluído', 'Em andamento', 'Pendente'),
    Data_Conclusao date,
    idMecanicoMec int,
    idVeiculoVeic int,
    idClienteVeiculoCliente int,
    foreign key (idMecanicoMec) references Mecanico(idMecanico),
    foreign key (idVeiculoVeic) references Veiculo(idVeiculo),
    foreign key (idClienteVeiculoCliente) references Cliente(idCliente)
);

alter table OS auto_increment=1;

create table Pecas_OS (
    idPecas_OS int primary key auto_increment,
    Pecas_da_OS varchar(35)
);

alter table Pecas_OS auto_increment=1;

create table Peca (
    idPeca int primary key auto_increment,
    Peca varchar(35),
    Valor float
);

alter table Peca auto_increment=1;

create table Pecas_OS_has_Peca (
    idPecas_OSPecasOS int,
    idPecaPeca int,
    primary key (idPecas_OSPecasOS, idPecaPeca),
    foreign key (idPecas_OSPecasOS) references Pecas_OS(idPecas_OS),
    foreign key (idPecaPeca) references Peca(idPeca)
);

create table Autorizacao_Cliente (
    idAutorizacao_Cliente int primary key auto_increment,
    Autorizacao_execucao_OS enum('Autorizado','Pendente'),
    idOSos int,
    foreign key (idOSos) references OS(idOS)
);

alter table Autorizacao_Cliente auto_increment=1;