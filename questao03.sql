/* 
03. Estudo os comandos:
	CREATE SEQUENCE, ALTER SEQUENCE, DROP SEQUENCE, 
NEXT VALUE FOR
	PREVIOUS VALUE FOR
	SETVAL(). Set next value for the sequence.
	AUTO INCREMENT
Considere o banco de dados abaixo para responder às questões 1 a 6:
*obs: primary key, foreign key.
cliente (codigo, nome, endereco)
piloto (codigo, nome, num_voos)
voo (codigo, tipo, piloto, num_passageiros, distancia)
milhas (cliente, quantidade)
cliente_voo (cliente, voo, classe)
*/
CREATE TABLE cliente(
	codigo CHAR(9),
	nome VARCHAR(20) NOT NULL,
	endereco VARCHAR(255),
	PRIMARY KEY (codigo)
);

CREATE TABLE piloto(
	codigo CHAR(9),
	nome VARCHAR(20) NOT NULL,
	num_voos INT,
	PRIMARY KEY (codigo)
);

CREATE TABLE voo(
	codigo CHAR(9),
	tipo VARCHAR(20) NOT NULL,
	piloto CHAR(9),
	num_passageiros INT, 
	distancia DECIMAL(10,2),
	PRIMARY KEY (codigo),
	FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas(
	cliente CHAR(9), 
	quantidade INT,
	PRIMARY KEY (cliente),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo(
	cliente CHAR(9), 
	voo CHAR(9), 
	classe VARCHAR(20),
	PRIMARY KEY (cliente, voo),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	FOREIGN KEY (voo) REFERENCES voo(codigo)
);