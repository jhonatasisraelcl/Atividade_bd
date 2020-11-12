/*Crie uma função que retorne o número de clientes com mais de 500 milhas.*/

CREATE OR REPLACE FUNCTION maisDe500()
RETURNS INTEGER 
LANGUAGE 'plpgsql'
AS $$
DECLARE
	quantClientes INTEGER;
BEGIN
	SELECT INTO quantClientes COUNT(*) 
  FROM milhas 
  WHERE quantidade > 500;
	RETURN quantClientes;
END;
$$;

SELECT maisDe500();