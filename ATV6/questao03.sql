/*Crie uma função que  retorna o número de voos que certo cliente já realizou.*/
CREATE OR REPLACE FUNCTION javoei(codCliente CHAR(9)) 
RETURNS INTEGER 
LANGUAGE 'plpgsql'
AS $$
DECLARE
	voosCliente INTEGER;
BEGIN
	SELECT INTO voosCliente count(*) 
  FROM cliente_voo 
  WHERE cliente = codCliente;
	RETURN voosCliente;
END;
$$;

SELECT javoei('1');