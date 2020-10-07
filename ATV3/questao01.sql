/*Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 5.
*/
SELECT nome
FROM funcionario
WHERE salario > (
	SELECT salario
	FROM funcionario fdep5
	WHERE fdep5.coddepto = '5'
);
