/*Crie um usuário chamado empresa_admim para o banco de dados EmpresaDB. 
Este usuário deve ter todos os privilégios mas com acesso remoto.*/

CREATE DATABASE EmpresaDB;
CREATE user 'empresa_admim'@'%' identified BY 'admin';
USE empresadb;
GRANT all privileges ON empresadb TO 'empresa_admim'@'%';