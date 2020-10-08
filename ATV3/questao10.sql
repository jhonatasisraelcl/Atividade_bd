/*
Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto,
o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.
*/

SELECT proj.descricao AS "nome do projeto", d.descricao AS "departamento do projeto",
f.nome "nome do responsavel", d2.descricao "departamento do funcionario"
FROM projeto proj LEFT JOIN departamento d
ON proj."codDep" = d.codigo
LEFT JOIN funcionario f
ON f.codigo = proj."codResp"
LEFT JOIN departamento d2
ON f."codDep" = d2.codigo;