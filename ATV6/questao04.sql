/*Crie uma função que retorna a soma das milhas de todos os clientes.*/
CREATE OR REPLACE FUNCTION somaMilhas()
RETURNS INTEGER 
LANGUAGE 'plpgsql'
AS $$
DECLARE
	totalMilhas INTEGER;
BEGIN
	SELECT INTO totalMilhas sum(quantidade) 
  FROM milhas;
	RETURN totalMilhas;
END;
$$;

SELECT somaMilhas();