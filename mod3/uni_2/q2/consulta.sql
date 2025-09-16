-- Questão 2 - Encontre a expectativa de vida média nas oito regiões segundo classificação da Gapminder (campo eight_regions da tabela country) nos anos de 2019 a 2021. Utilize a tabela life_expectancy e ordene por região e ano. Indique se há alguma região em que NÃO houve declínio da expectativa de vida nestes três anos.

-- Gabarito:

SELECT c.eight_regions, 
	le.ref_year, 
	ROUND ( AVG(le.tot_years), 2) AS avg_years
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.ref_year BETWEEN 2019 AND 2021
GROUP BY c.eight_regions, 
	le.ref_year
ORDER BY c.eight_regions, 
	le.ref_year;
			
/* Comentário:

Em todas as regiões, observou-se uma queda constante da expectativa de vida ao longo dos três anos, exceto no oeste da Europa, onde houve uma diminuição de 2019 para 2020, seguida por um pequeno aumento de 2020 para 2021.

Neste exercício, utilizamos dois campos no GROUP BY, eight_regions e ref_year, para calcular a média de expectativa de vida agrupada por região e ano. Ordenamos usando o GROUP BY também por eight_regions e ef_year, de modo a ter todos os anos de cada região juntos para comparação dos resultados.

Observe que também usamos a função ROUND para arredondar os resultados com duas casas decimais. Essa função está recebendo dois parâmetros: AVG(tot_years), que é o valor a ser arredondado, e 2, que é o número de casas decimais desejado.
*/

-- Minha resolução:

SELECT 
    c.eight_regions, 
    le.ref_year,
    AVG(le.tot_years) AS expectativa_vida_media
FROM country c
JOIN life_expectancy le ON c.country = le.country
WHERE le.ref_year BETWEEN 2019 AND 2021
GROUP BY c.eight_regions, le.ref_year
ORDER BY c.eight_regions, le.ref_year;
