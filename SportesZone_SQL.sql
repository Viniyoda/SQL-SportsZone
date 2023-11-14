CREATE DATABASE SportsZone;

USE SportsZone;

CREATE TABLE funcionario (
	id_func		INT PRIMARY KEY IDENTITY(1,1),
	nome		VARCHAR(50),
	cargo		VARCHAR(30),
	data_cnt	DATE
)

CREATE TABLE cliente (
	id_cliente	INT PRIMARY KEY IDENTITY(1,1),
	nome		VARCHAR(50),
	cep			VARCHAR(10),
	rua			VARCHAR(60),
	cidade		VARCHAR(30),
	estado		VARCHAR(30),
)

CREATE TABLE email_cliente (
	email_id_cliente	INT,
	email				VARCHAR(50),
	id_cliente			INT,
)

CREATE TABLE telefone_cliente (
	telefone_id_cliente		INT,
	telefone				VARCHAR(50),
	id_cliente				INT,
)

CREATE TABLE fornecedor (
	id_forn		INT PRIMARY KEY IDENTITY(1,1),
	nome		VARCHAR(50),
)

CREATE TABLE email_fornecedor (
	email_id_forn		INT,
	email				VARCHAR(50),
	id_forn				INT,
)

CREATE TABLE telefone_fornecedor (
	telefone_id_forn	INT,
	telefone			VARCHAR(30),
	id_forn				INT,
)

CREATE TABLE produtos(
	id_prod			INT PRIMARY KEY IDENTITY(1,1),
	nome			VARCHAR(50),
	descr			VARCHAR(200),
	preco			DECIMAL(10,2),
	marca			VARCHAR(20),
	categoria		VARCHAR(25),
)

CREATE TABLE fornecedor_produto (
	id_forn			INT,
	id_prod			INT,
)

CREATE TABLE pedidos (
	num_ped			INT PRIMARY KEY IDENTITY(1,1),
	data_ped		DATE,
	estado			VARCHAR(200),
	valor			DECIMAL(10,2),
	id_cliente		INT,
	id_prod			INT,
	id_func			INT,
)

INSERT INTO funcionario (nome, cargo, data_cnt) VALUES
('João Silva', 'Gerente de Vendas', '2021-03-15'),
('Maria Oliveira', 'Atendente de Suporte', '2021-04-22'),
('Carlos Santos', 'Analista Financeiro', '2021-05-10'),
('Ana Pereira', 'Desenvolvedor Web', '2021-06-05'),
('Fernando Costa', 'Designer Gráfico', '2021-07-12'),
('Cristina Lima', 'Analista de Marketing', '2021-08-18'),
('Rodrigo Almeida', 'Estoquista', '2021-09-25'),
('Luciana Souza', 'Gerente de Recursos Humanos', '2021-10-03'),
('Paulo Oliveira', 'Analista de Sistemas', '2021-11-08'),
('Camila Pereira', 'Operador de Logística', '2021-12-20'),
('Marcos Santos', 'Supervisor de Vendas', '2022-01-07'),
('Juliana Costa', 'Analista de Qualidade', '2022-02-14'),
('Felipe Alves', 'Assistente Administrativo', '2022-03-22'),
('Roberta Mendes', 'Consultor Comercial', '2022-04-29'),
('Ricardo Oliveira', 'Analista de Redes', '2022-05-08'),
('Isabela Lima', 'Operador de Caixa', '2022-06-15'),
('Antonio Silva', 'Assistente de Compras', '2022-07-23'),
('Amanda Costa', 'Analista de Suporte Técnico', '2022-08-30'),
('Gustavo Santos', 'Coordenador de Marketing', '2022-09-10'),
('Natalia Almeida', 'Assistente de RH', '2022-10-18');

SELECT * FROM funcionario

INSERT INTO cliente (nome, cep, rua, cidade, estado) VALUES
('Ana Silva', '14400-000', 'Rua Alegria', 'Franca', 'SaoPaulo'),
('Carlos Oliveira', '14401-001', 'Rua Harmonia', 'Franca', 'SaoPaulo'),
('Juliana Santos', '14402-002', 'Rua Felicidade', 'Franca', 'SaoPaulo'),
('Marcos Costa', '14403-003', 'Rua Esperança', 'Franca', 'SaoPaulo'),
('Fernanda Lima', '14404-004', 'Rua Amizade', 'Franca', 'SaoPaulo'),
('Ricardo Almeida', '14405-005', 'Rua Paz', 'Franca', 'SaoPaulo'),
('Camila Pereira', '14406-006', 'Rua Amor', 'Franca', 'SaoPaulo'),
('Gustavo Oliveira', '14407-007', 'Rua Solidariedade', 'Franca', 'SaoPaulo'),
('Isabela Costa', '14408-008', 'Rua Generosidade', 'Franca', 'SaoPaulo'),
('Lucas Santos', '14409-009', 'Rua Prosperidade', 'Franca', 'SaoPaulo'),
('Amanda Lima', '14410-010', 'Rua Liberdade', 'Franca', 'SaoPaulo'),
('Roberto Alves', '14411-011', 'Rua Igualdade', 'Franca', 'SaoPaulo'),
('Patricia Silva', '14412-012', 'Rua Justiça', 'Franca', 'SaoPaulo'),
('Felipe Costa', '14413-013', 'Rua Verdade', 'Franca', 'SaoPaulo'),
('Natasha Oliveira', '14414-014', 'Rua Honra', 'Franca', 'SaoPaulo'),
('Henrique Santos', '14415-015', 'Rua Nobreza', 'Franca', 'SaoPaulo'),
('Larissa Lima', '14416-016', 'Rua Tranquilidade', 'Franca', 'SaoPaulo'),
('Diego Almeida', '14417-017', 'Rua Sossego', 'Franca', 'SaoPaulo'),
('Thais Costa', '14418-018', 'Rua Sabedoria', 'Franca', 'SaoPaulo'),
('Eduardo Oliveira', '14419-019', 'Rua Conhecimento', 'Franca', 'SaoPaulo');

SELECT * FROM cliente

INSERT INTO email_cliente (email_id_cliente, email, id_cliente) VALUES
(1, 'ana.silva@example.com', 1),
(2, 'carlos.oliveira@example.com', 2),
(3, 'juliana.santos@example.com', 3),
(4, 'marcos.costa@example.com', 4),
(5, 'fernanda.lima@example.com', 5),
(6, 'ricardo.almeida@example.com', 6),
(7, 'camila.pereira@example.com', 7),
(8, 'gustavo.oliveira@example.com', 8),
(9, 'isabela.costa@example.com', 9),
(10, 'lucas.santos@example.com', 10),
(11, 'amanda.lima@example.com', 11),
(12, 'roberto.alves@example.com', 12),
(13, 'patricia.silva@example.com', 13),
(14, 'felipe.costa@example.com', 14),
(15, 'natasha.oliveira@example.com', 15),
(16, 'henrique.santos@example.com', 16),
(17, 'larissa.lima@example.com', 17),
(18, 'diego.almeida@example.com', 18),
(19, 'thais.costa@example.com', 19),
(20, 'eduardo.oliveira@example.com', 20);

SELECT * FROM email_cliente

INSERT INTO telefone_cliente (telefone_id_cliente, telefone, id_cliente) VALUES
(1, '+55 11 9876-5432', 1),
(2, '+55 21 8765-4321', 2),
(3, '+55 31 7654-3210', 3),
(4, '+55 41 6543-2109', 4),
(5, '+55 51 5432-1098', 5),
(6, '+55 62 4321-0987', 6),
(7, '+55 71 3210-9876', 7),
(8, '+55 81 2109-8765', 8),
(9, '+55 91 1098-7654', 9),
(10, '+55 32 0987-6543', 10),
(11, '+55 27 8765-4321', 11),
(12, '+55 19 7654-3210', 12),
(13, '+55 85 6543-2109', 13),
(14, '+55 12 5432-1098', 14),
(15, '+55 48 4321-0987', 15),
(16, '+55 14 3210-9876', 16),
(17, '+55 16 2109-8765', 17),
(18, '+55 98 1098-7654', 18),
(19, '+55 84 0987-6543', 19),
(20, '+55 33 8765-4321', 20);

SELECT * FROM telefone_cliente

INSERT INTO fornecedor (nome) VALUES
('Sports Direct'),
('Nike Inc.'),
('Adidas AG'),
('Puma SE'),
('Under Armour, Inc.'),
('New Balance Athletics, Inc.'),
('ASICS Corporation'),
('Reebok International Ltd.'),
('Mizuno Corporation'),
('Columbia Sportswear Company'),
('The North Face, Inc.'),
('Salomon S.A.'),
('Fila Holdings Corp.'),
('Skechers USA, Inc.'),
('Converse Inc.'),
('Oakley, Inc.'),
('Wilson Sporting Goods Co.'),
('Everlast Worldwide, Inc.'),
('UMBRO'),
('Molten Corporation');

SELECT * FROM fornecedor

INSERT INTO email_fornecedor (email_id_forn, email, id_forn) VALUES 
(1, 'sportsdirect@example.com', 1),
(2, 'nike@example.com', 2),
(3, 'adidas@example.com',3),
(4, 'puma@example.com',4),
(5, 'underarmour@example.com',5),
(6, 'newbalance@example.com',6),
(7, 'asics@example.com',7),
(8, 'reebok@example.com',8),
(9, 'mizuno@example.com',9),
(10, 'columbia@example.com',10),
(11, 'thenorthface@example.com',11),
(12, 'salomon@example.com',12),
(13, 'fila@example.com',13),
(14, 'skechers@example.com',14),
(15, 'converse@example.com',15),
(16, 'oakley@example.com',16),
(17, 'wilson@example.com',17),
(18, 'everlast@example.com',18),
(19, 'umbro@example.com',19),
(20, 'molten@example.com',20);

SELECT * FROM email_fornecedor

INSERT INTO telefone_fornecedor (telefone_id_forn,telefone,id_forn) VALUES
('1', '+55 55 4321-0987', '1'),
('2', '+55 23 9876-5432', '2'),
('3', '+55 78 8765-4321', '3'),
('4', '+55 57 7654-3210', '4'),
('5', '+55 63 6543-2109', '5'),
('6', '+55 92 5432-1098', '6'),
('7', '+55 88 4321-0987', '7'),
('8', '+55 39 3210-9876', '8'),
('9', '+55 49 2109-8765', '9'),
('10', '+55 52 1098-7654', '10'),
('11', '+55 44 0987-6543', '11'),
('12', '+55 61 8765-4321', '12'),
('13', '+55 73 7654-3210', '13'),
('14', '+55 89 6543-2109', '14'),
('15', '+55 20 5432-1098', '15'),
('16', '+55 26 4321-0987', '16'),
('17', '+55 68 3210-9876', '17'),
('18', '+55 74 2109-8765', '18'),
('19', '+55 58 1098-7654', '19'),
('20', '+55 29 0987-6543', '20');


SELECT * FROM telefone_fornecedor

INSERT INTO produtos (nome, descr, preco, marca, categoria) VALUES
('Shape de Skate Profissional', 'Shape de skate profissional, leve e resistente.', 79.99, 'Element', 'Skate'),
('Truck de Skate Thunder', 'Truck resistente e durável para praticantes de skate.', 39.99, 'Thunder', 'Skate'),
('Rodas de Skate Spitfire', 'Rodas de skate de alta performance para manobras radicais.', 29.99, 'Spitfire', 'Skate'),
('Tênis Vans SK8-Hi', 'Tênis clássico para skatistas, oferece conforto e estilo.', 89.99, 'Vans', 'Skate'),
('Capacete de Skate Pro-Tec', 'Capacete de skate profissional, proporciona segurança e conforto.', 49.99, 'Pro-Tec', 'Skate'),
('Skate Completo Element', 'Skate completo da marca Element, pronto para andar.', 129.99, 'Element', 'Skate'),
('Lixa para Skate Grizzly', 'Lixa antiderrapante para skate, oferece aderência superior.', 14.99, 'Grizzly', 'Skate'),
('Bolsa para Skate DC Shoes', 'Bolsa resistente para transportar seu skate com facilidade.', 34.99, 'DC Shoes', 'Skate'),
('Boné de Skate Thrasher', 'Boné clássico da marca Thrasher, ideal para skatistas.', 24.99, 'Thrasher', 'Skate'),
('Camiseta Independent Trucks', 'Camiseta confortável da Independent Trucks para skatistas.', 19.99, 'Independent', 'Skate'),
('Bola de Futebol Adidas Tango', 'Bola oficial da Adidas para partidas de futebol.', 79.99, 'Adidas', 'Futebol'),
('Chuteira Nike Mercurial', 'Chuteira de alto desempenho para gramados naturais, design inovador.', 169.99, 'Nike', 'Futebol'),
('Meião de Futebol Under Armour', 'Meião confortável para jogadores de futebol, evita lesões.', 14.99, 'Under Armour', 'Futebol'),
('Luvas de Goleiro Reusch', 'Luvas acolchoadas para goleiros, oferecem proteção e aderência superior.', 69.99, 'Reusch', 'Futebol'),
('Caneleira Nike Mercurial Lite', 'Caneleira leve e resistente para proteção durante os jogos de futebol.', 24.99, 'Nike', 'Futebol'),
('Uniforme de Futebol Completo', 'Uniforme completo para jogadores de futebol, camisa, calção e meiões.', 99.99, 'Puma', 'Futebol'),
('Bolsa Térmica para Goleiro', 'Bolsa térmica para goleiros, mantém os equipamentos em condições ideais.', 49.99, 'Uhlsport', 'Futebol'),
('Corda de Treino para Agilidade', 'Corda de treino para melhorar a agilidade e coordenação dos jogadores.', 19.99, 'SKLZ', 'Futebol'),
('Kit Cones para Treino', 'Kit com cones coloridos para treinos de agilidade e marcação de campo.', 29.99, 'Nike', 'Futebol'),
('Tênis Society Adidas Predator', 'Tênis Society para gramados sintéticos, oferece aderência e precisão.', 139.99, 'Adidas', 'Futebol'),
('Bola de Basquete Spalding NBA', 'Bola oficial da NBA, excelente aderência e durabilidade.', 54.99, 'Spalding', 'Basquete'),
('Tênis de Basquete Under Armour Curry', 'Tênis de basquete assinado por Stephen Curry, oferece suporte e tração.', 189.99, 'Under Armour', 'Basquete'),
('Cesta de Basquete Ajustável', 'Cesta de basquete ajustável para crianças e adultos.', 149.99, 'Lifetime', 'Basquete'),
('Meiões de Basquete Nike Elite', 'Meiões acolchoados para jogadores de basquete, oferecem suporte e conforto.', 19.99, 'Nike', 'Basquete'),
('Camiseta NBA Adidas', 'Camiseta oficial da NBA da marca Adidas, confortável e estilosa.', 39.99, 'Adidas', 'Basquete'),
('Bola de Treinamento SKLZ Dribble Stick', 'Bola de treinamento para aprimorar habilidades de dribles e controle.', 29.99, 'SKLZ', 'Basquete'),
('Mochila de Basquete Under Armour SC30', 'Mochila projetada para jogadores de basquete, espaçosa e resistente.', 79.99, 'Under Armour', 'Basquete'),
('Boné New Era NBA', 'Boné com logo da NBA da marca New Era, estilo esportivo.', 24.99, 'New Era', 'Basquete'),
('Joelheira McDavid HexPad', 'Joelheira acolchoada para proteção durante os jogos de basquete.', 34.99, 'McDavid', 'Basquete'),
('Chinelo Slide Nike Benassi JDI', 'Chinelo confortável para uso casual e pós-treino, com logo da Nike.', 29.99, 'Nike', 'Basquete'),
('Tênis Asics Gel-Resolution', 'Tênis de quadra para jogadores de tênis, oferece estabilidade e durabilidade.', 159.99, 'Asics', 'Tênis de Quadra'),
('Tênis Nike Court Lite', 'Tênis de quadra Nike, leve e confortável para movimentos rápidos.', 89.99, 'Nike', 'Tênis de Quadra'),
('Bola de Tênis Wilson US Open', 'Bola oficial do US Open, ideal para treinos e competições.', 39.99, 'Wilson', 'Tênis de Quadra'),
('Raquete de Tênis Babolat Pure Drive', 'Raquete de alta qualidade para jogadores de tênis avançados.', 189.99, 'Babolat', 'Tênis de Quadra'),
('Shorts de Tênis Nike Flex', 'Shorts de tênis Nike com tecnologia Flex, oferece liberdade de movimento.', 49.99, 'Nike', 'Tênis de Quadra'),
('Boné Wilson para Tênis', 'Boné para jogadores de tênis, oferece proteção contra o sol durante as partidas.', 24.99, 'Wilson', 'Tênis de Quadra'),
('Overgrip Head Xtreme Soft', 'Overgrip para raquetes de tênis, proporciona aderência e conforto.', 7.99, 'Head', 'Tênis de Quadra'),
('Corda de Tênis Babolat RPM Blast', 'Corda de alta performance para jogadores que buscam potência e controle.', 19.99, 'Babolat', 'Tênis de Quadra'),
('Camiseta Nike Dry para Tênis', 'Camiseta Nike Dry para jogadores de tênis, mantém o corpo seco durante as partidas.', 34.99, 'Nike', 'Tênis de Quadra'),
('Mochila de Tênis Head Tour Team', 'Mochila espaçosa para transportar suas raquetes e equipamentos de tênis.', 79.99, 'Head', 'Tênis de Quadra');

SELECT * FROM produtos

INSERT INTO pedidos (data_ped, estado, valor, id_cliente, id_prod, id_func) VALUES
('2023-10-10', 'Em Processamento', 49.99, 9, 5, 13),
('2023-02-15', 'Enviado', 19.99, 10, 10, 15),
('2022-03-20', 'Entregue',  24.99, 3, 15, 16),
('2021-03-05', 'Entregue', 139.99, 4, 20, 19),
('2023-05-12', 'Em Processamento',39.99, 5, 25, 13),
('2023-06-18', 'Enviado', 29.99, 3, 30, 15),
('2021-07-22', 'Entregue', 49.99, 7, 35, 16),
('2022-08-30', 'Entregue', 79.99, 8, 40, 19),
('2023-10-08', 'Em Processamento', 79.99, 9, 1, 13),
('2023-10-14', 'Enviado', 129.99, 2, 6, 15),
('2023-11-19', 'Entregue', 79.99, 11, 11, 16),
('2021-5-25', 'Entregue', 99.99, 15, 16, 19),
('2023-01-02', 'Em Processamento', 54.99, 13, 21, 13),
('2023-02-08', 'Enviado', 29.99, 3, 26, 15),
('2022-03-15', 'Entregue', 159.99, 15, 31, 16),
('2021-04-20', 'Entregue', 24.99, 10, 36, 19),
('2023-05-28', 'Em Processamento', 39.99, 17, 2, 13),
('2023-05-02', 'Enviado', 14.99, 9, 7, 15),
('2021-04-10', 'Entregue', 169.99,20 , 12, 16),
('2022-10-16', 'Entregue', 49.99, 1, 17, 19);

SELECT * FROM pedidos



UPDATE funcionario SET cargo = 'Vendedor' WHERE id_func IN ('16', '13', '19', '15'); 

SELECT * FROM funcionario



DELETE FROM produtos WHERE id_prod IN ('3', '8', '13','14','24','29','32','37');

SELECT * FROM produtos



INSERT INTO funcionario (nome, cargo, data_cnt) VALUES	('Pedro Alvares', 'Vendedor', '2023-11-12')

SELECT * FROM funcionario



ALTER TABLE funcionario ADD salario DECIMAL(8,2);

UPDATE funcionario SET salario = '2100.00' WHERE cargo='Vendedor'
UPDATE funcionario SET salario = '1800.00' WHERE cargo='Estoquista'
UPDATE funcionario SET salario = '5000.00' WHERE cargo='Gerente de Vendas'
UPDATE funcionario SET salario = '1500.00' WHERE cargo='Atendente de Suporte'
UPDATE funcionario SET salario = '3000.00' WHERE cargo='Analista Financeiro'
UPDATE funcionario SET salario = '6000.00' WHERE cargo='Desenvolvedor Web'
UPDATE funcionario SET salario = '2600.00' WHERE cargo='Designer Gráfico'
UPDATE funcionario SET salario = '8700.00' WHERE cargo='Analista de Marketing'
UPDATE funcionario SET salario = '4500.00' WHERE cargo='Gerente de Recursos humanos'
UPDATE funcionario SET salario = '5100.00' WHERE cargo='Analista de Sistemas'
UPDATE funcionario SET salario = '1800.00' WHERE cargo='Operador de Logística'
UPDATE funcionario SET salario = '3800.00' WHERE cargo='Supervisor de Vendas'
UPDATE funcionario SET salario = '6000.00' WHERE cargo='Analista de Qualidade'
UPDATE funcionario SET salario = '3100.00' WHERE cargo='Consultor Comercial'
UPDATE funcionario SET salario = '5000.00' WHERE cargo='Assistente de Compras'
UPDATE funcionario SET salario = '2200.00' WHERE cargo='Analista de Suporte Técnico'
UPDATE funcionario SET salario = '3000.00' WHERE cargo='Assistente de RH'

SELECT * FROM funcionario


SELECT nome,salario FROM funcionario ORDER BY salario desc;

SELECT nome,cep FROM cliente WHERE nome like 'A%';

SELECT nome,preco FROM produtos ORDER BY preco desc;

SELECT nome FROM fornecedor ORDER BY nome asc;

SELECT id_prod,nome,preco FROM produtos WHERE preco > 99.99;

SELECT data_ped,estado FROM pedidos WHERE data_ped between '2022-01-01' and '2022-12-31';

SELECT * FROM pedidos ORDER BY estado asc;

SELECT * FROM produtos WHERE categoria IN ('futebol', 'skate') ORDER BY preco asc;

SELECT nome,marca,categoria FROM produtos WHERE marca = 'Nike' OR marca = 'Adidas';

SELECT * FROM funcionario WHERE salario > 3000.00 and data_cnt > '2022-01-01';
