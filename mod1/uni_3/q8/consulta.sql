-- Questão 8 - Utilizando a tabela life_expectancy, encontre os seis países com a menor expectativa de vida em 2009.

-- Gabarito:

SELECT country, tot_years
FROM life_expectancy
WHERE ref_year = 2009
ORDER BY tot_years
LIMIT 6;	 
					
-- Comentário: Todas as linhas do resultado estão apresentadas a seguir. Mais uma vez, temos apenas países africanos, com a expectativa de vida de um indivíduo nascido em 2009 variando entre 46,4 e 54,6 anos, mantendo as outras condições constantes. Destaca-se a Somália, que figurou nas cinco consultas do exercício anterior e reaparece com mais um indicador preocupante.

-- Neste exercício, utilizamos a cláusula LIMIT para exibir apenas os seis primeiros resultados, que incluem a coluna tot_years ordenada em ordem crescente por meio de ORDER BY, juntamente com a coluna country, que contém o nome do país.
