-- Questão 5 - Compare a expectativa de vida mínima, média e máxima dos países da América Latina e do Caribe nos anos de 1990, 2000, 2010 e 2020. Indique se há alguma evolução ou se algum valor se destaca.

SELECT le.ref_year, 
	MIN (le.tot_years) AS min_years, 
	AVG (le.tot_years) AS avg_years, 
	MAX (le.tot_years) AS max_years
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.ref_year IN (1990, 2000, 2010, 2020) 
	AND c.wb_regions = 'Latin America & Caribbean'
GROUP BY le.ref_year
ORDER BY le.ref_year asc;

SELECT le.ref_year,                    -- Seleciona o ano de referência da tabela life_expectancy (usando alias 'le')
    MIN (le.tot_years) AS min_years,   -- Valor MÍNIMO da expectativa de vida, renomeado como 'min_years'
    AVG (le.tot_years) AS avg_years,   -- Valor MÉDIO da expectativa de vida, renomeado como 'avg_years' 
    MAX (le.tot_years) AS max_years    -- Valor MÁXIMO da expectativa de vida, renomeado como 'max_years'
FROM life_expectancy le                -- Tabela principal com alias 'le'
JOIN country c ON le.country = c.country  -- JOIN com tabela country (alias 'c'), ligadas pelo campo 'country'
WHERE le.ref_year IN (1990, 2000, 2010, 2020)  -- Filtra apenas os anos específicos
    AND c.wb_regions = 'Latin America & Caribbean'  -- Filtra apenas países da América Latina e Caribe
GROUP BY le.ref_year               -- Agrupa os resultados por ano
ORDER BY le.ref_year ASC;          -- Ordena os resultados por ano, crescente

/* Comentário:

Sim, há uma evolução, pois a média da expectativa de vida aumenta a cada década no período analisado. Um dado que se destaca é o valor mínimo da expectativa de vida em 2010, que é de apenas 35,5 anos, em comparação a 57,4 anos uma década antes e 63,6 anos uma década depois.


Calculamos algumas medidas de posição da variável tot_years utilizando as funções sumarizadoras MIN, AVG e MAX, agrupando os resultados por ano com a cláusula GROUP BY. Observe que filtramos quatro anos específicos com o operador IN e restringimos a análise à região da América Latina e do Caribe. Por isso, não foi necessário incluir wb_regions no GROUP BY. Para assegurar que os anos apareçam em ordem crescente, utilizamos ref_year no ORDER BY. */
