-- Questão 7 - Utilizando a tabela gdp_pc, selecione os 6 países com menor PIB per capita em 2009.

-- Gabarito:

SELECT country, gdp_pc
FROM gdp_pc
WHERE ref_year = 2009
ORDER BY gdp_pc
LIMIT 6;	 
					
-- Comentário: Todas as linhas do resultado estão a seguir. São os mesmos seis países que obtivemos na questão 1 do exercício anterior. Nesta questão, repetimos o exercício realizado na questão 1, mas desta vez limitamos o resultado a seis linhas utilizando a cláusula LIMIT.
