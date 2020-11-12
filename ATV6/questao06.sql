/*Crie uma procedure que recebe um valor qualquer e retorna esse valor ao quadrado.*/
CREATE OR REPLACE PROCEDURE quadrado(INOUT num integer)
LANGUAGE 'plpgsql'
AS $$
BEGIN
	num = num^2;
END;
$$;

CALL quadrado(4);