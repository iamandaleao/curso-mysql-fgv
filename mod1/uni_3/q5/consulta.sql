-- Questão 5 - Utilizando a tabela womem_years_at_school, selecione os países com menor tempo médio na escola das mulheres de 25 anos em 2009.

-- Gabarito:

SELECT country, mean_years
FROM women_years_at_school
WHERE ref_year = 2009
ORDER BY mean_years DESC;	
					
-- Comentário: A seguir, observe as 10 primeiras linhas do resultado. Temos dois países asiáticos (Afeganistão e Iémen) e oito países africanos. Em 2009, a média de anos de escolaridade para mulheres de até 25 anos variou entre 0,4 e 1,1 anos nesses países.

-- Com o ano fixado em 2009, selecionamos os países e a média de anos de escolaridade, ordenando essa média em ordem crescente com a cláusula ORDER BY. Essa é a única maneira de garantir a ordem dos resultados em uma consulta.
