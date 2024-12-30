use Oficina;

insert into Cliente (Nome, Mnome, Sobrenome, Endereco, Telefone, Email) values
('Carlos', 'A', 'Silva', 'Rua A, 123', '21987654321', 'carlos.silva@email.com'),
('Maria', 'B', 'Oliveira', 'Rua B, 456', '21987654322', 'maria.oliveira@email.com'),
('João', 'C', 'Santos', 'Rua C, 789', '21987654323', 'joao.santos@email.com'),
('Ana', 'D', 'Martins', 'Rua D, 101', '21987654324', 'ana.martins@email.com'),
('Pedro', 'E', 'Lima', 'Rua E, 202', '21987654325', 'pedro.lima@email.com'),
('Lucas', 'F', 'Almeida', 'Rua F, 303', '21987654326', 'lucas.almeida@email.com'),
('Fernanda', 'H', 'Barbosa', 'Rua G, 404', '21987654327', 'fernanda.barbosa@email.com'),
('Bruno', 'I', 'Costa', 'Rua H, 505', '21987654328', 'bruno.costa@email.com'),
('Julia', 'J', 'Ferreira', 'Rua I, 606', '21987654329', 'julia.ferreira@email.com'),
('Gabriel', 'K', 'Ramos', 'Rua J, 707', '21987654330', 'gabriel.ramos@email.com');

insert into Veiculo (Placa, Modelo, Ano, idClienteVeic) values
('ABC1234', 'Civic', 2019, 1),
('DEF5678', 'Corolla', 2018, 2),
('GHI9101', 'Focus', 2020, 3),
('JKL1121', 'Golf', 2017, 4),
('MNO3141', 'Polo', 2016, 5),
('PQR5161', 'Onix', 2021, 6),
('STU7181', 'Fiesta', 2015, 7),
('VWX9201', 'Cruze', 2019, 8),
('YZA1221', 'Sandero', 2018, 9),
('BCD3241', 'Kwid', 2022, 10);

insert into Equipe_Mecanicos (Nome_Equipe, idVeiculoVeic, idClienteVeiculo) values
('Equipe Alfa', 1, 1),
('Equipe Beta', 2, 2),
('Equipe Gama', 3, 3),
('Equipe Delta', 4, 4),
('Equipe Epsilon', 5, 5),
('Equipe Zeta', 6, 6),
('Equipe Eta', 7, 7),
('Equipe Theta', 8, 8),
('Equipe Iota', 9, 9),
('Equipe Kappa', 10, 10);

insert into Mecanico (Codigo, Nome, Endereco, Especialidade, idEquipe_MecanicosEquip) values
('MEC123', 'Carlos Mendes', 'Rua X, 100', 'Suspensão', 1),
('MEC456', 'João Pereira', 'Rua Y, 200', 'Freios', 2),
('MEC789', 'Ana Souza', 'Rua Z, 300', 'Motor', 3),
('MEC321', 'Maria Costa', 'Rua W, 400', 'Elétrica', 4),
('MEC654', 'Pedro Fernandes', 'Rua V, 500', 'Pintura', 5),
('MEC987', 'Lucas Rocha', 'Rua U, 600', 'Suspensão', 6),
('MEC741', 'Fernanda Lima', 'Rua T, 700', 'Freios', 7),
('MEC852', 'Bruno Oliveira', 'Rua S, 800', 'Motor', 8),
('MEC963', 'Julia Marques', 'Rua R, 900', 'Elétrica', 9),
('MEC147', 'Gabriel Duarte', 'Rua Q, 1000', 'Pintura', 10);

insert into Mao_de_Obra (Valores_Referencia) values
(100.0),
(200.0),
(150.0),
(250.0),
(300.0),
(350.0),
(400.0),
(450.0),
(500.0),
(550.0);

insert into Servicos (Tipo_Servico) values
('Troca de Óleo'),
('Alinhamento'),
('Balanceamento'),
('Revisão Completa'),
('Troca de Filtros'),
('Reparação Elétrica'),
('Pintura'),
('Suspensão'),
('Freios'),
('Diagnóstico do Motor');

insert into OS (Numero, Data_Emissao, Valor, Status, Data_Conclusao, idMecanicoMec, idVeiculoVeic, idClienteVeiculoCliente) values
(1001, '2023-01-15', 1500.00, 'Concluído', '2023-01-20', 1, 1, 1),
(1002, '2023-02-10', 2000.00, 'Em andamento', null, 2, 2, 2),
(1003, '2023-03-05', 2500.00, 'Pendente', null, 3, 3, 3),
(1004, '2023-04-01', 1800.00, 'Concluído', '2023-04-05', 4, 4, 4),
(1005, '2023-05-25', 2200.00, 'Em andamento', null, 5, 5, 5),
(1006, '2023-06-15', 1700.00, 'Pendente', null, 6, 6, 6),
(1007, '2023-07-10', 1600.00, 'Concluído', '2023-07-15', 7, 7, 7),
(1008, '2023-08-05', 2400.00, 'Em andamento', null, 8, 8, 8),
(1009, '2023-09-25', 2100.00, 'Pendente', null, 9, 9, 9),
(1010, '2023-10-15', 2300.00, 'Concluído', '2023-10-20', 10, 10, 10);

insert into Pecas_OS (Pecas_da_OS) values
('Filtro de Óleo'),
('Pastilhas de Freio'),
('Correia Dentada'),
('Vela de Ignição'),
('Amortecedor'),
('Bateria'),
('Radiador'),
('Bomba de Água'),
('Filtro de Ar'),
('Catalisador');

insert into Peca (Peca, Valor) values
('Filtro de Óleo', 50.0),
('Pastilhas de Freio', 80.0),
('Correia Dentada', 120.0),
('Vela de Ignição', 40.0),
('Amortecedor', 200.0),
('Bateria', 300.0),
('Radiador', 400.0),
('Bomba de Água', 250.0),
('Filtro de Ar', 70.0),
('Catalisador', 500.0);

insert into Autorizacao_Cliente (Autorizacao_execucao_OS, idOSos) values
('Autorizado', 1),
('Autorizado', 2),
('Pendente', 3),
('Autorizado', 4),
('Pendente', 5),
('Autorizado', 6),
('Autorizado', 7),
('Pendente', 8),
('Autorizado', 9),
('Autorizado', 10);

