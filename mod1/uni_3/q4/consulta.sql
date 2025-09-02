-- Utilizando a tabela child_mortality, indique os países com a maior taxa de mortalidade infantil em 2009.

-- Gabarito:

SELECT country, tot_deaths
FROM child_mortality
WHERE ref_year = 2009
ORDER BY tot_deaths DESC;	
					
-- Comentário: A seguir, observe as 10 primeiras linhas do resultado. Todos os países são africanos. Em 2009, a taxa de mortalidade infantil, que mede o número de crianças entre 0 e 5 anos a cada 1.000 nascidos vivos, variou de 120 a 172 nos dez primeiros resultados. Para identificar os países com as maiores taxas de mortalidade, precisamos ordenar a consulta em ordem decrescente. Para isso, utilizamos a cláusula ORDER BY junto com o operador DESC.
