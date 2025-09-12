-- Questão 5 - Calcule o PIB per capita médio e a renda per capita média dos países no ano de 2019. Utilize as tabelas avg_income e gdp_pc, e arredonde o resultado para duas casas decimais.

-- Gabarito:

SELECT AVG (gp.gdp_pc) AS avg_gdp_pc, 
	     AVG (ai.mean_usd) AS avg_mean_usd
FROM gdp_pc gp
JOIN avg_income ai ON gp.country = ai.country
	AND gp.ref_year = ai.ref_year 
WHERE gp.ref_year = 2019;
			
/*
Comentário: 
21523.117948717947	
22.385948717948718

O resultado é: Nesta questão, utilizamos a função sumarizadora AVG para comparar a média aritmética de duas colunas de tabelas diferentes, uma vez que realizamos um INNER JOIN.
*/
