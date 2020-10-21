/*Crie um usuário chamado empresa_admim_local para o banco de dados EmpresaDB. 
Este usuário deve ter todos os privilégios mas sem acesso remoto.*/

CREATE DATABASE EmpresaDB;
CREATE user 'empresa_admim_local'@'localhost' identified BY 'admin';
USE empresadb;
GRANT all privileges ON empresadb TO 'empresa_admim_local'@'localhost';