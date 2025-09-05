/* Questão 2 - Utilizando o campo wb3income e o campo wb_regions da tabela country, além da tabela avg_income, liste os 10 países de maior renda per capita diária no ano de 1985, além da região e da classificação de três rendas, ambos do Banco Mundial.

Gabarito:
*/

SELECT ai.country, 
	c.wb_regions, 
	c.wb3income, 
	ai.mean_usd
FROM avg_income ai
JOIN country c ON ai.country= c.country
WHERE ai.ref_year = 1985
ORDER BY ai.mean_usd DESC
LIMIT 10;	
			
/*
Comentário:

A maioria dos países é da Europa ou produtor de petróleo. A busca inclui também dois países da América do Norte. Todos eles são classificados como de renda alta.
*/
