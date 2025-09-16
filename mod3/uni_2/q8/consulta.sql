-- Questão 8 - Calcule novamente a média de diferença de tempo na escola entre homens e mulheres no ano 2000, segmentando por região do Banco Mundial (wb_regions).
-- Gabarito:

SELECT c.wb4income, 
	AVG (m.mean_years- w.mean_years) AS avg_diff
FROM men_years_at_school m
JOIN women_years_at_school w ON m.country = w.country 
	AND m.ref_year = w.ref_year
JOIN country c ON m.country = c.country 
WHERE w.ref_year = 2000
GROUP BY c.wb4income
ORDER BY avg_diff;
			
/* Comentário:

O resultado é:

tabela_m3_u2h
Esta consulta é semelhante à da questão anterior, mas desta vez agrupamos por wb_regions no GROUP BY para analisar a diferença média de escolaridade entre homens e mulheres em cada região do mundo, conforme a classificação do Banco Mundial.
*/
