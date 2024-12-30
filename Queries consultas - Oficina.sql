-- Recupera e concatena o ID e o nome completo dos clientes e endereço
select concat(IdCliente, ' - ', Nome, Mnome, Sobrenome) as Nome_Completo, Endereco from Cliente;

-- Calculando o valor total dos serviços da OS incluindo um imposto de 20%:
select idOS as Ordem_Serviço, Valor, round((Valor * 1.2),2) as Valor_Com_Imposto from OS;

-- Recupera todos os clientes ordenados pelo nome:
select * from Cliente order by Nome;

-- Recupera todas as OS ordenadas pelo valor (do maior para o menor):

select * from OS order by Valor desc;

-- Recupera o número de veículos por cliente, filtrando clientes com mais de 1 veículo:
select idClienteVeic, count(*) as Numero_Veiculos from Veiculo group by idClienteVeic having count(*) > 1;

-- Recupera o número de OS por mecânico, filtrando mecânicos com mais de 2 ordens de serviço:
select idMecanicoMec, count(*) as Numero_OS from OS group by idMecanicoMec having count(*) > 2;

-- Recupera os veículos com informações dos clientes:
select v.Placa, v.Modelo, c.Nome, c.Endereco
from Veiculo as v
join Cliente as c on v.idClienteVeic = c.idCliente;

-- Recupera as OS com informações dos mecânicos e veículos:
select OS.Numero, OS.Data_Emissao, OS.Valor, m.Nome as Nome_Mecanico, v.Modelo as Modelo_Veiculo
from OS
join Mecanico as m on OS.idMecanicoMec = m.idMecanico
join Veiculo as v on OS.idVeiculoVeic = v.idVeiculo;
