/*Crie uma procedure que recebe um valor qualquer e retorna esse valor ao quadrado*/
CREATE OR REPLACE FUNCTION questao_5()
RETURNS INTEGER 
LANGUAGE 'plpgsql'
AS $$
DECLARE
	quantClientes INTEGER;
BEGIN
	SELECT INTO quantClientes COUNT(*) 
  FROM milhas
   WHERE quantidade > 1200;
	RETURN quantClientes;
END;
$$;

SELECT questao_5();