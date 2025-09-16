Questão 2
a. Calcule novamente a expectativa de vida mínima, média e máxima dos países da América Latina e do Caribe em 1990 bem como identifique o país com a menor expectativa de vida nessa região no mesmo ano.

a) Gabarito/Comentário:

SELECT le.country 
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.tot_years = (
	SELECT MIN (sle.tot_years)
	FROM life_expectancy sle
	JOIN country sc ON sle.country = sc.country 
	WHERE sle.ref_year = 1990
	AND sc.wb_regions = 'Latin America & Caribbean'
	GROUP BY sle.ref_year
)
AND le.ref_year = 1990
AND c.wb_regions = 'Latin America & Caribbean';
			

b. Repita a consulta para 2010, incluindo também o valor de tot_years. Indique se o país com a menor expectativa de vida permanece o mesmo. Além disso, verifique se há alguma explicação para uma queda tão acentuada na expectativa de vida.

b) Gabarito/Comentário:

Repetindo a consulta para 2010, trazendo também a coluna tot_years, temos o seguinte resultado:

SELECT le.country,
       le.tot_years 
FROM life_expectancy le 
JOIN country c ON le.country = c.country 
WHERE le.tot_years = (
		SELECT MIN(sle.tot_years)
		FROM life_expectancy sle 
		JOIN country sc ON sle.country = sc.country 
		WHERE sle.ref_year = 2010
		  AND sc.wb_regions = 'Latin America & Caribbean'
		GROUP BY sle.ref_year
   )
   AND le.ref_year = 2010
   AND c.wb_regions = 'Latin America & Caribbean';

O resultado continua sendo o Haiti, e a queda acentuada na expectativa de vida é confirmada. Uma possível explicação para essa drástica diminuição é que, em 2010, ocorreu o grande terremoto que devastou o Haiti.
