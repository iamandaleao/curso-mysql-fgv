-- Questão 5 - Indique quais países da região da América Latina e do Caribe, de acordo com a classificação do Banco Mundial (campo wb_regions da tabela country), apresentaram, em 2000, uma diferença de tempo na escola entre homens e mulheres menor do que a do Brasil no mesmo ano, significando que, nesses países, as mulheres passaram mais tempo na escola do que os homens. Utilize EXISTS para realizar a consulta.

-- Gabarito:

SELECT *
FROM (
	SELECT m.country, m.mean_years - w.mean_years AS diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	AND c.wb_regions = 'Latin America & Caribbean'
) t1
WHERE EXISTS
(SELECT *
FROM (
	SELECT m.country, m.mean_years - w.mean_years AS diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	AND c.wb_regions = 'Latin America & Caribbean'
	GROUP BY m.country
	) t2
	WHERE t1.diff <t2.diff <	
AND t2.wb_regions = 'Brazil');

		
-- Comentário: O resultado para o Brasil é -0,1. Os países que apresentaram uma diferença menor do que a do Brasil são:

-- Quando uma consulta utiliza subqueries com o operador EXISTS, ela não pode ser executada em partes, como fizemos nas questões anteriores deste módulo, pois as consultas estão interconectadas. Primeiro, a seção verde da consulta é processada, seguida pela seção amarela. Essas duas podem ser executadas separadamente, mas depois as seções rosa e azul são executadas simultaneamente, com a seção rosa retornando apenas as linhas para as quais a seção azul forneceu resultados. É importante destacar que a interconexão das consultas ocorre na cláusula WHERE da seção azul, na qual verificamos se t1.diff < t2.diff.

-- Outro jeito de fazer mais simples:

SELECT c.country, (m.mean_years - w.mean_years) AS diff
FROM country c, men_years_at_school m, women_years_at_school w
WHERE c.wb_regions = 'Latin America & Caribbean'
AND m.country = c.country AND w.country = c.country
AND m.ref_year = 2000 AND w.ref_year = 2000
AND EXISTS (
    SELECT 1 FROM men_years_at_school mb, women_years_at_school wb
    WHERE mb.country = 'Brazil' AND wb.country = 'Brazil'
    AND mb.ref_year = 2000 AND wb.ref_year = 2000
    AND (m.mean_years - w.mean_years) < (mb.mean_years - wb.mean_years)
);


-- Resultado:
Antigua and Barbuda	    -0.2
Argentina	    -0.2
Bahamas	      -0.2
Jamaica	      -0.2
Panama	      -0.2
St. Lucia	    -0.3
Uruguay	      -0.4

