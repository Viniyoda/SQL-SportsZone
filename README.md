# Sistema de Gerenciamento de um Site de Vendas de Artigos Esportivos

A empresa SportsZone, especializada na venda de artigos esportivos, enfrenta um aumento significativo em sua clientela e deseja implementar um sistema de gerenciamento abrangente para melhorar sua eficiência operacional e atender às necessidades crescentes dos clientes. Este sistema incluirá entidades, atributos e relacionamentos necessários para gerenciar produtos, clientes, pedidos, fornecedores e funcionários.

# CENARIOS

 # 🚀 Entidades: 
## Produto:  
  ### Atributos:
	ID do Produto (atributo chave)
	Nome
	Descrição
	Preço
	Marca
	Categoria 
  ### Relacionamento:
 	Cada produto pode ser fornecido por um ou vários fornecedores (N:N).
 	Cada pedido inclui um ou muitos produtos (0:N).
## Cliente:
 ### Atributos:
	ID de Cliente (atributo chave)
	Nome
	Endereço (Composto)
	(
	Cep
	Cidade
	Estado
	Rua
	)
	E-mail (multivalorado)
	Número de Telefone (multivalorado)
### Relacionamento:
 	Cada cliente fez zero ou muitos pedidos (1:N).
## Pedido:
  ### Atributos:
	Número de Pedido (atributo chave)
	Data do Pedido
	Status do Pedido
	Valor Total (Derivado)
 ### Relacionamento:
 	Cada pedido é feito por um único cliente (1:1).
 	Cada pedido inclui um ou muitos produtos (1:N).
	Cada pedido é feito por um funcionario (1:1).
	
 ## Fornecedor:
  ### Atributos:
	ID de Fornecedor (atributo chave)
	Nome da Empresa
	E-mail (multivalorado)
	Número de Telefone (multivalorado)
 ### Relacionamento:
 	Cada fornecedor fornece um ou muitos produtos (N:N).

## Funcionário:
  ### Atributos:
	ID de Funcionário (atributo chave)
	Nome
	Cargo
	Data de Contratação
 ### Relacionamento:
 	Cada funcionário faz um único pedido por vez (1:1).

# 🤖 Atributos:

## Atributos Simples: 
Id_prod, Nome, Descrição, Preço, Marca, Categoria <br>
Id_forn, Endereço, Nome da Empresa. <br>
Num_pedido, Data do Pedido, Status do Pedido, Valor Total. <br>
Id_func, Cargo, Data de Contratação, Salário. <br>
Id_cliente, Nome do Cliente.
## Atributos Compostos: 
Endereço do Cliente (dividido em rua, cidade, estado e CEP).
## Atributos Multivalorados: 
Número de Telefone (um cliente ou fornecedor pode ter vários números de telefone). <br>
E-mail (um cliente ou fornecedor pode ter vários e-mails).
## Atributos Derivados: 
Valor Total do Pedido (calculado com base no preço e quantidade dos produtos em um pedido).
## Atributos Chave: 
id_prod (para produtos). <br>
id_cliente (para clientes). <br>
num_pedido (para pedidos). <br>
id_forn (para fornecedores). <br>
id_func (para funcionários).

# 👾 Relacionamentos:

## 1:1: 
Funcionario e Pedido
## 1:N: 
Pedido e Produto <br>
Pedido e Cliente
## N:N: 
Fornecedor e Produto

<h1>Modelagem Conceitual: </h1>
<img src="modelocon.jpg">
<h1>Modelagem Logica</h1>
<img src="Sports Zone_page-0001.jpg">

# Modelagem fisica

Foi usado Microssoft SQL Server Management Studio.

# Dados

# Tabela funcionarios

<img src='funcionario-tb.jpg'>

# Tabela cliente

<img src = 'cliente-tb.jpg'>

## e-mail cliente

<img src = 'email-cli.jpg'>

## telefone cliente

<img src = 'telefone-cli.jpg'>

# Tabela Fornecedor

<img src = 'fornecedor-tb.jpg'>

## Telefone fornecedor

<img src = 'telefone_fornecedor.jpg'>


## e-mail fornecedor

<img src = 'email_fornecedor.jpg'>

# Tabela pedido

<img src = 'pedido-tb.jpg'>

# Tabela Produto

<img src = 'produto-tb.jpg'>

# Relatorios

### 1
<img src = '1.jpg'>

### 2
<img src = '2.jpg'>

### 3
<img src = '3.jpg'>

### 4
<img src = '4.jpg'>

### 5
<img src = '5.jpg'>

### 6
<img src = '6.jpg'>

### 7
<img src = '7.jpg'>

### 8
<img src = '8.jpg'>

### 9
<img src = '9.jpg'>

### 10
<img src = '10.jpg'>

# Crud

<img src = 'crud.jpg'>











 

 







