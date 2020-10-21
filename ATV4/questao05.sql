/*Crie um usuário chamado empresa_gerente para o banco de dados EmpresaDB. 
Este usuário deve ter privilégios apenas de fazer consultas em todas as tabelas. 
Ele pode inserir e atualizar as tabelas Equipe, Membro, Atividade e AtividadeProjeto.*/
  
CREATE DATABASE EmpresaDB;
CREATE user 'empresa_gerente'@'%' identified BY 'admin';
USE empresadb;
GRANT SELECT, INSERT, UPDATE ON empresadb TO 'empresa_gerente'@'%';