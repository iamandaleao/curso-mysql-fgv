-- Questão 6 - Calcule novamente o PIB per capita médio e a renda per capita média de todos os países no ano de 2019. Agora, você deve segmentar pelas quatro faixas de renda do Banco Mundial (campo wb4income da tabela country). Arredonde os resultados para duas casas decimais e ordene a média do PIB em ordem crescente. Indique se a classificação do Banco Mundial faz sentido tanto para PIB quanto para renda

SELECT c.wb4income, 
	ROUND (AVG (gp.gdp_pc), 2) AS avg_gdp_pc, 
	ROUND (AVG (ai.mean_usd),  2) AS avg_mean_usd
FROM gdp_pc gp
JOIN avg_income ai ON gp.country = ai.country 
	AND gp.ref_year = ai.ref_year
JOIN country c ON gp.country = c.country
WHERE gp.ref_year = 2019
GROUP BY c.wb4income
ORDER BY avg_gdp_pc;

/* Comentário:

Sim, a classificação do Banco Mundial é coerente tanto para a média do PIB per capita quanto para a média da renda per capita diária, pois os valores em ambas as colunas aumentam de acordo com as classes da coluna wb4income.

Nesta questão, calculamos a média do PIB per capita e da renda por classificação de renda do Banco Mundial para o ano de 2019. Como o ano está fixo no filtro da cláusula WHERE, incluímos apenas wb4income no GROUP BY. A ordenação no ORDER BY é feita pela média do PIB per capita, que denominamos avg_gdp_pc. */
