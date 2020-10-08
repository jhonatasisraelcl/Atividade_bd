/*
Faça uma consulta que selecione o nome dos funcionários responsáveis por projetos,
o número de projetos que este funcionário é responsável e seus salários, mas apenas
os funcionários que ganhem mais que o gerente do seu departamento. Crie e use views na consulta.
*/

CREATE OR REPLACE VIEW public."gerenteDepartamentos"
 AS
SELECT f.codigo AS "idGerente", f.salario AS "salarioGerente", d.codigo AS dep
FROM funcionario f, departamento d
WHERE d."codGerente" = f.codigo;

CREATE OR REPLACE VIEW public."totalProjetosFuncionario"
 AS
SELECT count(*) AS total, f.codigo AS fu FROM funcionario f, projeto proj
WHERE f.codigo = proj."codResp"
GROUP BY f.codigo;

SELECT f.nome, tot.total, f.salario
FROM funcionario f, projeto proj, "totalProjetosFuncionario" tot, "gerenteDepartamentos" ge
WHERE f.codigo = proj."codResp" AND ge."salarioGerente" < f.salario AND ge.dep = proj."codDep"
GROUP BY f.nome, tot.total, f.salario;