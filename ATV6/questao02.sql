/*Crie uma função que recebe o código de um cliente e o código de um voo e retorna a 
classe que o cliente está viajando.*/
CREATE OR REPLACE FUNCTION qualclasse(codCliente CHAR(9), codVoo CHAR(9)) 
RETURNS VARCHAR(20)
LANGUAGE 'plpgsql'
AS $$
DECLARE
	classeVoo VARCHAR(20);
BEGIN
	SELECT INTO classeVoo classe 
  FROM cliente_voo 
  WHERE cliente = codCliente 
  AND voo = codVoo;
	RETURN classeVoo;
END;
$$;

SELECT qualclasse('1', '1');