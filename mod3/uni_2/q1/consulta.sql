-- Questão 1 - Calcule a renda máxima, a média e a mínima dos países enquadrados em cada uma das três classificações de renda do Banco Mundial (campo wb3income da tabela country) no ano de 2020. Ordene pela média da renda e utilize a tabela avg_income. Indique se os valores estão de acordo com a classificação.

-- Gabarito:

SELECT c.wb3income 
	MIN (ai.mean_usd) AS min_usd, 
	AVG (ai.mean_usd) AS avg_usd, 
	MAX (ai.mean_usd) AS max_usd
FROM avg_income ai
JOIN country c ON ai.country = c.country 
WHERE ai.ref_year = 2020
GROUP BY c.wb3income
ORDER BY avg_usd DESC;
			
/* Comentário:

Os resultados parecem estar de acordo com a classificação. Os maiores valores correspondem à categoria High income, enquanto os menores estão na categoria Low income, quando comparamos coluna por coluna. No entanto, o valor máximo da linha referente a Low income é superior ao valor mínimo da linha de Middle income. O mesmo padrão se repete entre Middle income e High income, indicando que há uma interseção entre as faixas.

Neste exercício, a cláusula GROUP BY é utilizada para calcular valores por meio das funções de sumarização (neste caso, MIN, AVG e MAX) para cada uma das categorias do campo wb3income. Como o GROUP BY não assegura a ordenação dos resultados, também utilizamos o ORDER BY.
*/


--Minha resolução que funcionou de outro jeito:

SELECT 
    c.wb3income,
    MAX(ai.mean_usd) AS renda_maxima,
    AVG(ai.mean_usd) AS renda_media,
    MIN(ai.mean_usd) AS renda_minima
FROM country c
JOIN avg_income ai ON c.country = ai.country
WHERE ai.ref_year = 2020
GROUP BY c.wb3income
ORDER BY AVG(ai.mean_usd);
