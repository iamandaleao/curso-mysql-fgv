-- Questão 9 - Sem apresentar linhas nulas, indique quais são as categorias do campo wb4income da tabela country.

-- Gabarito:

SSELECT DISTINCT wb4income
FROM country
WHERE rwb4income IS NOT NULL  
ORDER BY wb4income;	 
					
-- Comentário: As categorias são quatro: alta renda, baixa renda e duas subdivisões de renda média, que são média alta e média baixa
-- Para identificar as categorias presentes na coluna wb4income, devemos realizar um SELECT dessa coluna na tabela country. No entanto, um SELECT simples retornará muitas linhas, tornando necessário percorrer a tabela para encontrar os valores distintos.

-- Ao utilizar o operador DISTINCT, conseguimos solucionar esse problema, pois ele retorna apenas os valores únicos. Para garantir que apenas valores válidos sejam recuperados, aplicamos um filtro que exclui os valores nulos usando IS NOT NULL. Por fim, utilizamos o GROUP BY para apresentar os valores em ordem alfabética crescente.
