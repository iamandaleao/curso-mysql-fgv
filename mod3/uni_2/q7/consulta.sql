-- Questão 7 - Calcule novamente a média de diferença de tempo na escola entre homens e mulheres no ano 2000. Agora, você deve segmentar pela renda utilizando o campo wb4income. Ordene pela média e verifique se há correlação entre renda e diferença de tempo na escola entre homens e mulheres.


SELECT c.wb4income, 
	AVG (m.mean_years- w.mean_years) AS avg_diff
FROM men_years_at_school m
JOIN women_years_at_school w ON m.country = w.country 
	AND m.ref_year = w.ref_year
JOIN country c ON m.country = w.country 
WHERE w.ref_year = 2000
GROUP BY c.wb4income
ORDER BY avg_diff;

/* Comentário:

Há uma correlação negativa entre a renda e a diferença de anos de escolaridade entre homens e mulheres: quanto maior a renda, menor é a diferença.

Para analisar a correlação entre a diferença média de anos de escolaridade entre homens e mulheres e a classificação de renda do Banco Mundial, calculamos a média da diferença usando a função AVG(m.mean_years - w.mean_years) e nomeamos essa coluna de avg_diff. Em seguida, agrupamos os resultados pela classificação de renda no GROUP BY e ordenamos pelo avg_diff no ORDER BY.*/
