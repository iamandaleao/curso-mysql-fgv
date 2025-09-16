-- Questão 4 - Indique a expectativa de vida mínima, média e máxima dos países da América Latina e do Caribe em 1990. Use a tabela life_expectancy para encontrar os valores e o campo wb_regions com o valor Latin America & Caribbean para definir a região.

SELECT 
    MIN(life_expectancy.tot_years) AS expectativa_minima,
    AVG(life_expectancy.tot_years) AS expectativa_media,
    MAX(life_expectancy.tot_years) AS expectativa_maxima
FROM life_expectancy
JOIN country ON life_expectancy.country = country.country
WHERE life_expectancy.ref_year = 1990
  AND country.wb_regions = 'Latin America & Caribbean';

  -- Gabarito:

SELECT 
  MIN (le.tot_years) AS min_years, 
	AVG (le.tot_years) AS avg_years, 
	MAX (le.tot_years) AS max_years
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.ref_year = 1990
	AND c.wb_regions = 'Latin America & Caribbean';
			
/*
Comentário:
O resultado é: Nesta questão, praticamos o uso das funções sumarizadoras MIN (mínimo), AVG (média aritmética) e MAX (máximo). Com essas funções, conseguimos obter uma breve estatística descritiva da coluna tot_years.

Meu comentário: JOIN = "Cole as informações do mesmo elemento que está em tabelas diferentes"
É como ter duas gavetas com fichas dos mesmos países, mas com informações diferentes. O JOIN junta as fichas do mesmo país numa só.
*/
