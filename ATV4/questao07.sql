/*Crie um índice para o atributo sigla da tabela departamento e um índice para o 
atributo situação da tabela atividade. */
CREATE index index_departameto
ON departamento(sigla);

CREATE index index_atividade
ON atividade(situacao);