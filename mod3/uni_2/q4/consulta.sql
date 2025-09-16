-- Questão 4 - Identifique as regiões, conforme a classificação do Banco Mundial (campo wb_regions da tabela country), que em 2010 apresentaram uma média das taxas de mortalidade infantil consideradas baixas, de acordo com o Ministério da Saúde, ou seja, inferiores a 20. Para isso, utilize a tabela child_mortality e o campo tot_deaths, aplicando a cláusula HAVING.

-- Gabarito:

SELECT c.wb_regions, 
	AVG(cm.tot_deaths) AS avg_deaths
FROM child_mortality cm
JOIN country c ON cm.country = c.country 
WHERE cm.ref_year = 2010 
GROUP BY c.wb_regions
ORDER BY avg_deaths < 20; 
			
/* Comentário:
Europe & Central Asia	10.188627450980393
North America	6.49

As regiões encontradas são:

tabela_m3_u2d
Calculamos a média de mortes de bebês a cada 1000 nascidos vivos usando AVG agrupando por região (wb_regions) e chamamos o campo de avg_deaths. Agrupamos por região via GROUP BY e filtramos os resultados para termos somente as regiões com média menor que 20 por meio da cláusula HAVING.*/
