-- Questão 4 - Liste o país com a menor renda média per capita diária da Europa em 2020. Use a tabela avg_income e o campo four_regions da tabela country igual a europe.

-- Gabarito:

SELECT ai1.country 
FROM avg_income ai1
JOIN country c1 ON ai1.country = c1.country 
WHERE ai1.ref_year = 2020
AND c1.four_regions = 'europe'
AND ai1.mean_usd = (
	SELECT MIN (ai.mean_usd) AS "min"
	FROM avg_income ai
	JOIN country c ON ai.country = c.country 
	WHERE ai.ref_year = 2020
	AND c.four_regions = 'europe'
);
		
-- Comentário:

-- O resultado é: Esta consulta é dividida em duas partes. A primeira parte, que é a subquery, obtém o valor mínimo da renda média em 2020 na Europa, resultando em 7,26. A segunda parte, que é a query, identifica o país europeu que teve uma renda média de 7,26 em 2020, retornando à Geórgia.


-- outro jeito para fazer:

SELECT country.country
FROM avg_income 
JOIN country ON avg_income.country = country.country
WHERE avg_income.ref_year = 2020 
  AND country.four_regions = 'europe'
ORDER BY avg_income.mean_usd ASC
LIMIT 1;
