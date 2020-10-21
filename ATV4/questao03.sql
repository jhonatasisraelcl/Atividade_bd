/*Crie um usuário chamado empresa_admim_local para o banco de dados EmpresaDB. 
Este usuário deve ter todos os privilégios mas sem acesso remoto.*/

create database EmpresaDB;
create user 'empresa_admim_local'@'localhost' identified by 'admin';
use empresadb;
grant all privileges on empresadb to 'empresa_admim_local'@'localhost';