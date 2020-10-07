/*
Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de
funcionários de cada departamento. Deve aparecer os departamentos sem gerente e sem funcionários.
Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.
--*/

CREATE OR REPLACE VIEW public."totalFuncionariosDep"
AS SELECT d.codigo AS codigo, count(f.codigo) AS total
FROM departamento d, funcionario f
WHERE f."codDep" = d.codigo
GROUP BY d.codigo;

SELECT d.descricao, f.nome, total.total
FROM departamento d, funcionario f, "totalFuncionariosDep" total
WHERE d."codGerente" = f.codigo AND d.codigo = total.codigo
GROUP BY d.codigo, f.nome, total.total
ORDER BY d.descricao;