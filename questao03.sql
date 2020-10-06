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

CREATE SEQUENCE sequencia  START WITH 1 increment BY 1;
CREATE SEQUENCE sequencia2 START WITH 1 increment BY 1;
CREATE SEQUENCE sequencia3 START WITH 1 increment BY 1;
CREATE SEQUENCE sequencia4 START WITH 1 increment BY 1;
 
CREATE TABLE cleinte (
    codigo INT default (NEXT VALUE for sequencia),
    nome VARCHAR(150),
    endereco VARCHAR(150),
	  CONSTRAINT pk_cliente PRIMARY KEY(codigo)
);
 
CREATE TABLE piloto (
    codigo INT default (NEXT VALUE for sequencia2),
    nome VARCHAR(150),
    num_voos VARCHAR(150),
	  CONSTRAINT pk_piloto PRIMARY KEY(codigo)
);
 
CREATE TABLE voo (
    codigo INT default (NEXT VALUE for sequencia3),
    piloto INT,
    tipo VARCHAR(150),
	  num_passageiros VARCHAR(150),
	  distancia INT,
	  FOREIGN KEY (piloto) REFERENCES piloto(codigo),
	  CONSTRAINT pk_voo PRIMARY KEY(codigo)
);
 
CREATE TABLE cliente_voo (
    cliente INT,
	  voo INT,
    classe VARCHAR(150),
	  FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	  FOREIGN KEY (voo) REFERENCES voo(codigo),
	  CONSTRAINT pk_cliente_voo PRIMARY KEY(cliente, voo)
);
 
create table milhas (
    codigo INT default (NEXT VALUE for sequencia4),
    cliente INT,
    qtde INT,
	  FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	  CONSTRAINT pk_milhas PRIMARY KEY(codigo)
);