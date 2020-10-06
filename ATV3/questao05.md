5. Responda as perguntas:
  * Explique os problemas de termos valores nulos nos dados.
    
    Em alguns casos, uma entidade pode não necessitar de um valor aplicável a um de seus atributos. Por exemplo, no atributo número-apartamento composto, apenas definiremos valores para este campo quando a entidade pessoa em particular morar em um prédio. Outro exemplo é multivalorado idioma de um aluno: caso este aluno em particular não tenha fluência em nenhuma língua, então não necessitamos preencher o valor deste atributo. A representação de um atributo sem valor é colocarmos um valor especial null. Null também pode ser utilizado quando não conhecemos o valor de um atributo, por exemplo, quando se é desconhecida a data de nascimento de uma pessoa.
 
  * Explique o funcionamento do Right e do Left Join.
  ![](https://dwgeek.com/wp-content/uploads/2019/04/Different-Vertica-Join-Types-and-Examples.jpg)
    #### LEFT JOIN: 
    Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita.
    ~~~~
    SELECT colunas
    FROM tabela_esq
    LEFT (OUTER) JOIN tabela_dir
    ON tabela_esq.coluna=tabela_dir.coluna;
    ~~~~

    ### RIGHT JOIN:
    Retorna todas as linhas da tabela à direita, mesmo se não houver nenhuma correspondência na tabela à esquerda.

    ~~~~
    SELECT colunas
  	FROM tabela_esq
    RIGHT (OUTER) JOIN tabela_dir
    ON tabela_esq.coluna=tabela_dir.coluna;
    ~~~~
    [bosson treinamentos](https://www.youtube.com/watch?v=4m3HNtsFRoI&feature=emb_logo)

  * Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.

  A palavra-chave FULL OUTER JOIN retorna todos os registros quando há uma correspondência nos registros da tabela esquerda (tabela1) ou direita (tabela2).

> Se liga que o FULL OUTER JOIN pode potencialmente retornar conjuntos de resultados muito grandes!


#### REFERENCES
https://pt.stackoverflow.com/questions/146662/contru%C3%A7%C3%A3o-de-tabelas-sql-usar-ou-n%C3%A3o-campos-com-not-null

https://pt.stackoverflow.com/questions/308038/full-outer-join-gera-erros

https://www.devmedia.com.br/inner-cross-left-rigth-e-full-joins/21016

http://www.bosontreinamentos.com.br/mysql/mysql-left-e-right-join-consultar-dados-em-duas-ou-mais-tabelas-30/#:~:text=categoria%20do%20post%5D-,MySQL%20%E2%80%93%20LEFT%20e%20RIGHT%20JOIN%20%E2%80%93%20Consultar%20dados,em%20duas%20ou%20mais%20tabelas&text=LEFT%20JOIN%3A%20Retorna%20todas%20as,correspond%C3%AAncia%20na%20tabela%20%C3%A0%20esquerda.