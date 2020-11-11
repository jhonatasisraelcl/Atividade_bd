/*Faça um procedimento para exibir os funcionários com idade acima da média do seu departamento.*/
CREATE OR REPLACE PROCEDURE acima_da_media()
LANGUAGE 'plpgsql'
AS $$
BEGIN
	SELECT nome 
  FROM funcionario 
  WHERE calcula_idade_func(codigo) > media_idade_por_dep(depto);
END;
$$;
call acima_da_media();