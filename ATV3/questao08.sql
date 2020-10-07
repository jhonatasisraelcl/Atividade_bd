/*
Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o
número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos.
Crie e use views na consulta, se necessário.
*/
CREATE OR REPLACE VIEW public."totalProjetosDep"
AS
SELECT count(*) AS total, d.codigo AS dep
FROM projeto p, departamento d
WHERE p."codDep" = d.codigo
GROUP BY d.codigo;

SELECT d.descricao, f.nome, tot.total
FROM departamento d
LEFT JOIN funcionario f ON f.codigo = d."codGerente"
LEFT JOIN "totalProjetosDep" tot ON tot.dep = d.codigo;