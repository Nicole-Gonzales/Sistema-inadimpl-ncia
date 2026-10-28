use Inadimplencia;

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) not null,
    idade INT not null,
    renda DECIMAL(10,2),
    cidade VARCHAR(100)
);

create table Contas (
 id INT AUTO_INCREMENT PRIMARY KEY,
 cliente_id int not null,
 tipo_conta varchar (200),
 saldo decimal (10,2),
 data_abertura date,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

create table emprestimos (
id INT AUTO_INCREMENT PRIMARY KEY,
cliente_id int not null,
valor decimal (10,2) not null,
parcelas int not  null,
valor_parcela decimal (10,2) not null,
status varchar (200),
FOREIGN KEY (cliente_id) references clientes (id)
);

 create table pagamentos(
 id INT AUTO_INCREMENT PRIMARY KEY,
 emprestimo_id int not null,
 numero_parcela int not null,
 data_vencimento date not null,
 data_pagamento date not null,
 valor_pago decimal (10,2),
 foreign key (emprestimo_id) references emprestimos(id)

 );
 
 UPDATE emprestimos
SET status = 'Inadimplente'
WHERE id IN (3, 6, 10, 13, 16, 20, 24, 27);
UPDATE emprestimos
SET status = 'Em dia'
WHERE status IS NULL;

 insert into clientes (nome, idade, renda, cidade )
 values 
('Ana Beatriz Souza', 28, 4200.50, 'São Paulo'),
('Carlos Eduardo Lima', 35, 6800.00, 'Rio de Janeiro'),
('Mariana Ferreira Alves', 22, 2300.00, 'Belo Horizonte'),
('Lucas Gabriel Santos', 41, 9500.75, 'Curitiba'),
('Juliana Rocha Mendes', 31, 5100.20, 'Porto Alegre'),
('Rafael Martins Ribeiro', 47, 7400.00, 'Salvador'),
('Camila Duarte Ramos', 26, 3200.00, 'Fortaleza'),
('Thiago Henrique Silva', 39, 8300.90, 'Brasília'),
('Fernanda Costa Vieira', 53, 11200.00, 'Campinas'),
('Bruno Vinicius Moreira', 19, 1850.00, 'Recife'),
('Beatriz Nogueira Castro', 29, 4600.00, 'Goiânia'),
('Rodrigo Azevedo Pinto', 44, 8900.50, 'Manaus'),
('Larissa Monteiro Dias', 27, 3400.00, 'Belém'),
('Gabriel Antunes Farias', 33, 6200.00, 'Florianópolis'),
('Priscila Cavalcanti Maia', 38, 7100.30, 'Vitória'),
('Felipe Barros Teixeira', 24, 2900.00, 'Natal'),
('Vanessa Guimarães Prado', 42, 8500.00, 'Maceió'),
('Diego Carvalho Silveira', 36, 5800.80, 'João Pessoa'),
('Aline Cardoso Peixoto', 30, 4900.00, 'Teresina'),
('Matheus Cunha Rezende', 25, 3100.40, 'São Luís'),
('Renata Figueiredo Bastos', 48, 10400.00, 'Campo Grande'),
('Gustavo Borges Pires', 32, 6700.00, 'Cuiabá'),
('Patricia Fontes Neves', 45, 7800.60, 'Aracaju'),
('Leonardo Tavares Sales', 21, 2100.00, 'Porto Velho'),
('Danielle Chaves Siqueira', 37, 5400.00, 'Macapá'),
('Marcelo Dantas Pacheco', 50, 9900.00, 'Rio Branco'),
('Tatiane Franco Medeiros', 23, 2750.50, 'Boa Vista'),
('Alexandre Viana Muniz', 40, 8100.00, 'Palmas'),
('Sabrina Toledo Braga', 34, 6300.25, 'Santos'),
('Eduardo Vasconcelos Lins', 46, 9200.00, 'Ribeirão Preto');

insert into contas ( cliente_id, tipo_conta, saldo, data_abertura)
values
(1, 'Corrente', 3540.50, '2021-03-15'),
(2, 'Poupança', 12500.00, '2019-07-22'),
(3, 'Salário', 850.20, '2023-01-10'),
(4, 'Corrente', 18900.80, '2018-11-05'),
(5, 'Investimento', 45000.00, '2020-04-18'),
(6, 'Corrente', 2150.00, '2022-09-30'),
(7, 'Poupança', 5400.60, '2021-12-12'),
(8, 'Corrente', 9300.40, '2017-05-24'),
(9, 'Investimento', 78200.00, '2016-08-14'),
(10, 'Corrente', 420.00, '2023-05-03'),
(11, 'Poupança', 8750.30, '2020-10-19'),
(12, 'Corrente', 6100.00, '2019-02-28'),
(13, 'Salário', 1980.50, '2022-06-17'),
(14, 'Corrente', 11450.75, '2020-01-25'),
(15, 'Poupança', 14300.00, '2018-03-09'),
(16, 'Corrente', 1250.00, '2023-02-14'),
(17, 'Investimento', 32000.90, '2017-09-11'),
(18, 'Corrente', 4890.00, '2021-08-05'),
(19, 'Poupança', 6700.20, '2022-04-20'),
(20, 'Salário', 2500.00, '2023-07-01'),
(21, 'Corrente', 23100.50, '2016-12-03'),
(22, 'Poupança', 9800.00, '2019-06-18'),
(23, 'Corrente', 7450.30, '2020-08-27'),
(24, 'Corrente', 950.00, '2023-03-22'),
(25, 'Poupança', 6120.40, '2021-05-14'),
(26, 'Investimento', 54000.00, '2018-10-31'),
(27, 'Corrente', 1780.00, '2022-11-09'),
(28, 'Corrente', 13200.60, '2017-04-07'),
(29, 'Poupança', 8400.00, '2020-02-16'),
(30, 'Corrente', 16500.25, '2019-11-20');

insert into emprestimos ( cliente_id, valor, parcelas, valor_parcela)
values 
(1, 12000.00, 24, 620.50 ),
(2, 5000.00, 12, 480.00  ),
(3, 3000.00, 10, 345.20  ),
(4, 25000.00, 36, 980.00 ),
(5, 50000.00, 48, 1450.75 ),
(6, 8000.00, 18, 530.00  ),
(7, 4500.00, 12, 425.00 ),
(8, 15000.00, 24, 780.40 ),
(9, 60000.00, 60, 1620.00 ),
(10, 2000.00, 6, 370.00 ),
(11, 10000.00, 20, 610.30 ),
(12, 18000.00, 36, 710.00 ),
(13, 3500.00, 12, 335.50 ),
(14, 22000.00, 30, 950.00 ),
(15, 7500.00, 15, 580.00 ),
(16, 4000.00, 10, 450.00 ),
(17, 35000.00, 48, 1120.90 ),
(18, 9000.00, 18, 590.00 ),
(19, 6000.00, 12, 560.20 ),
(20, 2500.00, 6, 460.00 ),
(21, 40000.00, 48, 1280.50 ),
(22, 14000.00, 24, 730.00 ),
(23, 11000.00, 20, 670.30 ),
(24, 1500.00, 6, 280.00 ),
(25, 8500.00, 18, 565.40),
(26, 45000.00, 48, 1390.00 ),
(27, 3200.00, 8, 440.00 ),
(28, 20000.00, 36, 790.60 ),
(29, 13000.00, 24, 690.00 ),
(30, 28000.00, 36, 1050.25);


USE Inadimplencia;

UPDATE emprestimos
SET status = 'Inadimplente'
WHERE id IN (3, 6, 10, 13, 16, 20, 24, 27);

UPDATE emprestimos
SET status = 'Em dia'
WHERE status IS NULL;

insert into pagamentos ( emprestimo_id, numero_parcela, data_vencimento, data_pagamento, valor_pago)
values
(1, 1, '2023-01-10', '2023-01-09', 620.50),
(2, 12, '2022-12-15', '2022-12-15', 480.00),
(3, 3, '2023-03-20', '2023-03-25', 345.20),
(4, 5, '2023-05-10', '2023-05-08', 980.00),
(5, 8, '2023-06-25', '2023-06-25', 1450.75),
(6, 4, '2023-04-12', '2023-04-20', 530.00),
(7, 12, '2022-11-05', '2022-11-03', 425.00),
(8, 6, '2023-02-18', '2023-02-18', 780.40),
(9, 14, '2023-07-22', '2023-07-21', 1620.00),
(10, 2, '2023-03-01', '2023-03-10', 370.00),
(11, 4, '2023-04-15', '2023-04-14', 610.30),
(12, 36, '2023-01-30', '2023-01-28', 710.00),
(13, 5, '2023-05-18', '2023-05-25', 335.50),
(14, 9, '2023-06-05', '2023-06-05', 950.00),
(15, 15, '2022-10-10', '2022-10-10', 580.00),
(16, 1, '2023-02-25', '2023-03-05', 450.00),
(17, 12, '2023-07-14', '2023-07-12', 1120.90),
(18, 7, '2023-03-11', '2023-03-11', 590.00),
(19, 12, '2022-09-08', '2022-09-07', 560.20),
(20, 3, '2023-05-20', '2023-05-28', 460.00),
(21, 16, '2023-06-19', '2023-06-18', 1280.50),
(22, 8, '2023-04-02', '2023-04-02', 730.00),
(23, 20, '2022-12-22', '2022-12-20', 670.30),
(24, 2, '2023-03-15', '2023-03-22', 280.00),
(25, 6, '2023-05-30', '2023-05-30', 565.40),
(26, 18, '2023-07-08', '2023-07-07', 1390.00),
(27, 4, '2023-04-28', '2023-05-06', 440.00),
(28, 36, '2023-02-14', '2023-02-14', 790.60),
(29, 10, '2023-06-01', '2023-05-31', 690.00),
(30, 11, '2023-07-17', '2023-07-17', 1050.25);

