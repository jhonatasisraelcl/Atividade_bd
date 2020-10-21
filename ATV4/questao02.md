# Atividade 4 
## Lista de Exercícios - SQL DCL

#### 2. Explique as diferentes opções de codificação de caracteres e de collations.

 *Codificação de caracteres*
 A falta de informações de codificação de caracteres prejudica a legibilidade do texto exibido, mas pode significar que seus dados não podem ser encontrados por um mecanismo de pesquisa ou processados ​​de forma confiável por máquinas de várias outras maneiras. 

 Sem falar que a falta da utilização dessas codificações faz com que ocorram alguns erros, por exemplo, pegar um texto em português que possue acentuação, ou então com os caracteres Coreanos, Chineses, entre outro, que normalmente terão algumas alterações. Um dos mais utilizados é o metacharset "UTF-8" outro exemplo é o "latin1".

  Existem também as "collations", que podem ser traduzidas por "colações" ou "agrupamentos", para cada um desses charsets. Elas definem as regras para comparação entre caracteres do charset. Há collations para comparar caracteres de diferentes idiomas, para ignorar (ou não) letras minúsculas e maiúculas, ou acentuação.

  O conjunto de caracteres Unicode é o mais abrangente. Ele engloba milhares de caracteres conhecidos, de vários idiomas, além de símbolos, emoticons, etc. Já o UTF-8 é uma forma prática de se usar o Unicode sem usar tanto espaço de armazenamento.

 Esse conjunto de simbolos pode ser chamada de Charset. É possivel ver uma lista de charsets suportados pelo MySQL com a consulta:

   SHOW character set;

https://www.w3.org/International/questions/qa-choosing-encodings.pt-br