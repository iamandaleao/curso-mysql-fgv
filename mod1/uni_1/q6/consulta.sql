-- Questão 6 - Utilizando a tabela petrobras e o campo Close para fazer a sua pesquisa, indique qual o preço de fechamento das ações da Petrobras no dia 8 de dezembro de 2022.


SELECT Date, Close
FROM petrobras
WHERE Date = '2022-12-08'

-- Comentário: O resultado é: 13,62

-- Precisamos realizar uma consulta na tabela petrobras filtrando por data. Para isso, a data deve ser inserida como um tipo de caractere, ou seja, entre aspas simples. O formato deve seguir o padrão: ano com quatro dígitos, seguido de hífen, mês com dois dígitos, outro hífen e dia com dois dígitos. Note que a coluna date está entre aspas duplas, pois date é uma palavra reservada no SQL, referindo-se a um tipo de dado. No entanto, você pode utilizá-la para nomear colunas, desde que utilize aspas nas consultas.

-- Além disso, seguimos o mesmo procedimento utilizado anteriormente nesta lista. Colocamos a coluna desejada, Close, na cláusula SELECT. Embora o nome da coluna comece com letra minúscula na consulta, no resultado ela aparece com letra maiúscula, pois é assim que está estruturada na tabela. Como o SQL não diferencia maiúsculas de minúsculas, ou seja, é case insensitive, a query funciona normalmente. Também indicamos o nome da tabela na cláusula FROM e utilizamos "date"='2022-08-12' no WHERE para filtrar a linha correspondente.
