-- Questão 3 - Utilizando a tabela fertility, encontre os países com maior taxa de natalidade em 2009.

-- Gabarito:

SELECT country, mean_babies
FROM fertility
WHERE ref_year = 2009
ORDER BY mean_babies DESC;	
					
-- Comentário: A seguir, observe as 10 primeiras linhas do resultado. Agora, temos dois países da Ásia (Timor-Leste e Afeganistão), enquanto os demais são da África. Em 2009, a taxa de natalidade variou entre 6,04 e 7,52 filhos por mulher.

-- Combinamos o uso de ORDER BY com DESC para exibir os resultados em ordem decrescente, garantindo que os países com maior taxa de natalidade apareçam primeiro. Não incluímos o campo ref_year, pois a query se restringe ao ano de 2009.
