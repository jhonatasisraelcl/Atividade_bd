# Atividade 5
## Lista de Exercícios - SQL DCL
#### 14. Explique o funcionamento de um índice e como ele é implementado no SGBD.
O uso de índices pode trazer grandes melhorias para o desempenho do banco de dados, pois eles auxiliam na busca de dados, os índices vão percorrer a estrutura para localizar os registros, por comparação, extraindo somente aqueles registros necessários para satisfazerem os critérios passados pela consulta.

Um bom exemplo da criação necessária de índices, são aplicações bancárias que atendem à caixas eletrônicos. Sempre que solicitamos uma determinada transação ou mesmo informação, tal solicitação tende a ser cada vez mais rapidamente atendida. E quantos correntistas geralmente têm os grandes bancos? Será que quanto mais correntistas, mais lenta será a consulta?

Se não os índices, uma pesquisa pelo seu saldo demoraria quase o tempo de um almoço para retornar seu saldo ou mesmo, retornar uma resposta a sua solicitação de saque. Uma vez tendo ciência do funcionamento dos índices, respeitando a sua regra de negócios, uma consulta deverá ter resposta em tempo satisfatório.

Existem três tipos de índices:

* Índices de agrupamento ou ordenados: Os dados são armazenados em uma página de dados, em rodem crescente. A ordem dos valores nas páginas de índice também é crescente.
* Índice sem agrupamento e de hash, criado sobre uma pilha: Quando um índice sem agrupamento é criado sobre a pilha, o SQL Server usa os identificadores de registros das páginas de índice que indicam os registros das páginas de dados.
* Índices sem agrupamento ou de hash criados sobre um índice agrupado ou ordenado: Quando um índice sem agrupamento é criado sobre uma tabela com um índice de agrupamento, o SQL Server usa uma chave de agrupamento nas páginas de índice que indicam o índice de agrupamento. A chave de agrupamento armazena informações sobre a localização dos dados (headers em forma de hash).

Fonte: https://www.devmedia.com.br/entendendo-e-usando-indices/6567