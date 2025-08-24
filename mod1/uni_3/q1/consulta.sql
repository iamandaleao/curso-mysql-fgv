-- Questão 1 - Utilizando a tabela gdp_pc, selecione os países com menor PIB per capita em 2009.
-- Gabarito:

SELECT country, gdp_pc
FROM gdp_pc
WHERE ref_year = 2009
ORDER BY gdp_pc;	
					
-- Comentário: A seguir, observe as 10 primeiras linhas do resultado. Todos os países são do continente africano e os seus PIB per capita variam entre 804 e 1330 USD em 2009.

-- Organizamos o resultado pelo campo gdp_pc em ordem crescente, usando a cláusula ORDER BY, o que nos permite visualizar primeiro os países com o menor PIB per capita. Observe que não incluímos a coluna ref_year, pois a pesquisa se limita ao ano de 2019.
