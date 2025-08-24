-- Questão 2 - Utilizando a tabela avg_income, selecione os países com menor renda per capita em 2009.
-- Gabarito:

SELECT country, mean_usd
FROM avg_income
WHERE ref_year = 2009
ORDER BY mean_usd;	
					
-- Comentário: A seguir, observe as 10 primeiras linhas do resultado. Apenas um país, o Uzbequistão, não pertence ao continente africano, e as suas rendas per capita familiares variam entre 1,55 e 2,59 USD por mês em 2009. Os valores estão ajustados pela Paridade do Poder de Compra de 2017, assim como os valores do PIB.

-- Organizamos o resultado em ordem crescente com o uso da cláusula ORDER BY. É fundamental lembrar que apenas a utilização dessa cláusula assegura a sequência em que as colunas serão retornadas.
