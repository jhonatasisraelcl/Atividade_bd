/*Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 5.
*/
SELECT Nome
FROM Funcionario
WHERE Salario > (
	SELECT Salario
	FROM Funcionario fdep5
	WHERE fdep5.coddepto = '5'
);
