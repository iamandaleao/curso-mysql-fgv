-- Questão 3 - Após calcular novamente a média da diferença no tempo de escolaridade entre homens e mulheres no ano 2000, segmentando por região do Banco Mundial (wb_regions), execute uma única consulta com subqueries que retorne o nome da região com a maior média de diferença no tempo de escolaridade entre os gêneros.

-- Gabarito:

SELECT tab.wb_regions 
FROM (
	SELECT c.wb_regions,
	AVG (m.mean_years - w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year 
	JOIN country c ON m.country = c.country 
	WHERE m.ref_year = 2000
	GROUP BY c.wb_regions
	) tab
	WHERE tab.avg_diff = (
	SELECT MAX (tab1.avg_diff1) 
	FROM (
			SELECT AVG (m1.mean_years - w1.mean_years) AS avg_diff1
			FROM men_years_at_school m1
			JOIN women_years_at_school w1 ON m1.country = w1.country 
				AND m1.ref_year = w1.ref_year 
			JOIN country c1 ON m1.country = c1.country 
			WHERE m1.ref_year = 2000
			GROUP BY c1.wb_regions
		)tab1		
	);
	
/* Comentário: São necessárias várias subqueries para obter o resultado, que é: Middle East & North Africa. */

SELECT tab.wb_regions
FROM (
	SELECT c.wb_regions,
	AVG (m.mean_years- w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country
		AND m.ref_year = w.ref_year
	JOIN country c ON m.country = c.country
	WHERE w.ref_year = 2000
	GROUP BY c.wb_regions
) tab
WHERE tab.avg_diff = (
	SELECT MAX (tab1.avg_diff1)
	FROM (
		SELECT AVG (m1.mean_years - w1.mean_years) AS avg_diff1
		FROM men_years_at_school m1
		JOIN women_years_at_school w1 ON m1.country = w1.country
			AND m1.ref_year = w1.ref_year
		JOIN country c1 ON m1.country = c1.country
		WHERE w1.ref_year = 2000
		GROUP BY c1.wb_regions
	)tab1
);
	
/* 
Comentário: Middle East & North Africa
Essa primeira consulta retorna a média da diferença de escolaridade entre homens e mulheres por região, conforme mostrado na figura a seguir:

A segunda consulta utiliza o resultado da consulta como se fosse uma tabela, já que está entre parênteses no FROM. Essa tabela virtual é chamada de tab1. */

SELECT tab.wb_regions 
FROM (
	SELECT c.wb_regions
	AVG (m.mean_years- w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year 
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	GROUP BY c.wb_regions
	) tab
	WHERE tab.avg_diff = (
	SELECT MAX (tab1.avg_diff1) 
	FROM (
			SELECT AVG (m1.mean_years - w.mean_years) AS avg_diff1
			FROM men_years_at_school m1
			JOIN women_years_at_school w1 ON m1.country = w1.country 
				AND m1.ref_year = w1.ref_year 
			JOIN country c1 ON m1.country = c1.country 
			WHERE w1.ref_year = 2000
			GROUP BY c1.wb_regions
		)tab		
	);
	
/* Agora é retornado o valor máximo de tab1.
Esse valor será usado posteriormente. Agora, é executada a consulta marcada em verde a seguir: */

SELECT tab.wb_regions 
FROM (
	SELECT c.wb_regions
	AVG (m.mean_years- w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year 
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	GROUP BY c.wb_regions
	) tab
	WHERE tab.avg_diff = (
	SELECT MAX (tab1.avg_diff1) 
	FROM (
			SELECT AVG (m1.mean_years - w.mean_years) AS avg_diff1
			FROM men_years_at_school m1
			JOIN women_years_at_school w1 ON m1.country = w1.country 
				AND m1.ref_year = w1.ref_year 
			JOIN country c1 ON m1.country = c1.country 
			WHERE w1.ref_year = 2000
			GROUP BY c1.wb_regions
		)tab		
	);
	
/* Dessa consulta, retorna a lista de regiões com as suas respectivas médias de diferença de escolaridade.
Finalmente, é executada a consulta marcada em azul, que utiliza a tabela virtual retornada pela consulta verde, apelidada de tab e o resultado retornado pela consulta rosa.*/

SELECT tab.wb_regions 
FROM (
	SELECT c.wb_regions
	AVG (m.mean_years- w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year 
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	GROUP BY c.wb_regions
	) tab
	WHERE tab.avg_diff = (
	SELECT MAX (tab1.avg_diff1) 
	FROM (
			SELECT AVG (m1.mean_years - w.mean_years) AS avg_diff1
			FROM men_years_at_school m1
			JOIN women_years_at_school w1 ON m1.country = w1.country 
				AND m1.ref_year = w1.ref_year 
			JOIN country c1 ON m1.country = c1.country 
			WHERE w1.ref_year = 2000
			GROUP BY c1.wb_regions
		)tab		
	);
	
/* Por fim, essa consulta retorna o resultado final, que é:*/

